
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int FILE ;






 char* alloc_buffer (char*,size_t*,struct stat*) ;
 int byte_count ;
 int ferror (int *) ;
 int fflush (int *) ;
 int fileno (int *) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int fwrite (char*,int,int,int *) ;
 int handleoobcmd () ;
 int lreply (int,char*,int) ;
 int perror_reply (int,char*) ;
 int putc (char,int *) ;
 int reply (int,char*,...) ;
 int sec_read (int ,char*,size_t) ;
 int transflag ;
 int type ;
 scalar_t__ urgflag ;
 int write (int ,char*,int) ;

__attribute__((used)) static int
receive_data(FILE *instr, FILE *outstr)
{
    int cnt, bare_lfs = 0;
    static char *buf;
    static size_t bufsize;
    struct stat st;

    transflag = 1;

    buf = alloc_buffer (buf, &bufsize,
   fstat(fileno(outstr), &st) >= 0 ? &st : ((void*)0));
    if (buf == ((void*)0)) {
 transflag = 0;
 urgflag = 0;
 perror_reply(451, "Local resource failure: malloc");
 return -1;
    }

    switch (type) {

    case 129:
    case 128:
 while ((cnt = sec_read(fileno(instr), buf, bufsize)) > 0) {
     if (write(fileno(outstr), buf, cnt) != cnt)
  goto file_err;
     byte_count += cnt;
     if (urgflag && handleoobcmd())
  return (-1);
 }
 if (cnt < 0)
     goto data_err;
 transflag = 0;
 urgflag = 0;
 return (0);

    case 130:
 reply(553, "TYPE E not implemented.");
 transflag = 0;
 urgflag = 0;
 return (-1);

    case 131:
    {
 char *p, *q;
 int cr_flag = 0;
 while ((cnt = sec_read(fileno(instr),
    buf + cr_flag,
    bufsize - cr_flag)) > 0){
     if (urgflag && handleoobcmd())
  return (-1);
     byte_count += cnt;
     cnt += cr_flag;
     cr_flag = 0;
     for(p = buf, q = buf; p < buf + cnt;) {
  if(*p == '\n')
      bare_lfs++;
  if(*p == '\r') {
      if(p == buf + cnt - 1){
   cr_flag = 1;
   p++;
   continue;
      }else if(p[1] == '\n'){
   *q++ = '\n';
   p += 2;
   continue;
      }
  }
  *q++ = *p++;
     }
     fwrite(buf, q - buf, 1, outstr);
     if(cr_flag)
  buf[0] = '\r';
 }
 if(cr_flag)
     putc('\r', outstr);
 fflush(outstr);
 if (ferror(instr))
     goto data_err;
 if (ferror(outstr))
     goto file_err;
 transflag = 0;
 urgflag = 0;
 if (bare_lfs) {
     lreply(226, "WARNING! %d bare linefeeds received in ASCII mode\r\n"
     "    File may not have transferred correctly.\r\n",
     bare_lfs);
 }
 return (0);
    }
    default:
 reply(550, "Unimplemented TYPE %d in receive_data", type);
 transflag = 0;
 urgflag = 0;
 return (-1);
    }

data_err:
    transflag = 0;
    urgflag = 0;
    perror_reply(426, "Data Connection");
    return (-1);

file_err:
    transflag = 0;
    urgflag = 0;
    perror_reply(452, "Error writing file");
    return (-1);
}
