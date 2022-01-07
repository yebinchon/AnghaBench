
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
typedef int FILE ;


 int EOF ;
 scalar_t__ MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int S_ISREG (int ) ;



 char* alloc_buffer (char*,size_t*,struct stat*) ;
 int byte_count ;
 int ferror (int *) ;
 int fileno (int *) ;
 int fstat (int,struct stat*) ;
 int getc (int *) ;
 int handleoobcmd () ;
 char* mmap (int ,int,int ,int ,int,int ) ;
 int munmap (char*,int) ;
 int perror_reply (int,char*) ;
 int read (int,char*,size_t) ;
 int reply (int,char*,...) ;
 int restart_point ;
 int sec_fflush (int *) ;
 int sec_putc (int,int *) ;
 int sec_write (int,char*,int) ;
 int transflag ;
 int type ;
 scalar_t__ urgflag ;
 int warn (char*) ;

__attribute__((used)) static void
send_data(FILE *instr, FILE *outstr)
{
 int c, cnt, filefd, netfd;
 static char *buf;
 static size_t bufsize;

 transflag = 1;
 switch (type) {

 case 130:
     while ((c = getc(instr)) != EOF) {
  if (urgflag && handleoobcmd())
      return;
  byte_count++;
  if(c == '\n')
      sec_putc('\r', outstr);
  sec_putc(c, outstr);
     }
     sec_fflush(outstr);
     transflag = 0;
     urgflag = 0;
     if (ferror(instr))
  goto file_err;
     if (ferror(outstr))
  goto data_err;
     reply(226, "Transfer complete.");
     return;

 case 129:
 case 128:
 if(transflag) {
     struct stat st;

     netfd = fileno(outstr);
     filefd = fileno(instr);
     buf = alloc_buffer (buf, &bufsize,
    fstat(filefd, &st) >= 0 ? &st : ((void*)0));
     if (buf == ((void*)0)) {
  transflag = 0;
  urgflag = 0;
  perror_reply(451, "Local resource failure: malloc");
  return;
     }
     while ((cnt = read(filefd, buf, bufsize)) > 0 &&
     sec_write(netfd, buf, cnt) == cnt) {
  byte_count += cnt;
  if (urgflag && handleoobcmd())
      return;
     }
     sec_fflush(outstr);
     transflag = 0;
     urgflag = 0;
     if (cnt != 0) {
  if (cnt < 0)
      goto file_err;
  goto data_err;
     }
 }
 reply(226, "Transfer complete.");
 return;
 default:
     transflag = 0;
     urgflag = 0;
     reply(550, "Unimplemented TYPE %d in send_data", type);
     return;
 }

data_err:
 transflag = 0;
 urgflag = 0;
 perror_reply(426, "Data connection");
 return;

file_err:
 transflag = 0;
 urgflag = 0;
 perror_reply(551, "Error on input file");
}
