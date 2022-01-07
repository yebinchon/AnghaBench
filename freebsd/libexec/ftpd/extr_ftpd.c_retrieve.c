
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct stat {int st_size; int st_blksize; int st_mode; } ;
typedef scalar_t__ off_t ;
typedef int line ;
typedef int FILE ;


 int BUFSIZ ;
 int EOF ;
 int LOGBYTES (char*,char*,int) ;
 int LOGCMD (char*,char*) ;
 int L_SET ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 scalar_t__ TYPE_A ;
 int byte_count ;
 int data ;
 int * dataconn (char*,int,char*) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fstat (int ,struct stat*) ;
 int ftpd_pclose (int *) ;
 int * ftpd_popen (char*,char*) ;
 int getc (int *) ;
 scalar_t__ guest ;
 int logxfer (char*,int,int ) ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 int pdata ;
 int perror_reply (int,char*) ;
 int reply (int,char*,char*) ;
 scalar_t__ restart_point ;
 int send_data (int *,int *,int,int,int) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ stats ;
 int stub1 (int *) ;
 int time (int *) ;
 scalar_t__ type ;

void
retrieve(char *cmd, char *name)
{
 FILE *fin, *dout;
 struct stat st;
 int (*closefunc)(FILE *);
 time_t start;
 char line[BUFSIZ];

 if (cmd == 0) {
  fin = fopen(name, "r"), closefunc = fclose;
  st.st_size = 0;
 } else {
  (void) snprintf(line, sizeof(line), cmd, name);
  name = line;
  fin = ftpd_popen(line, "r"), closefunc = ftpd_pclose;
  st.st_size = -1;
  st.st_blksize = BUFSIZ;
 }
 if (fin == ((void*)0)) {
  if (errno != 0) {
   perror_reply(550, name);
   if (cmd == 0) {
    LOGCMD("get", name);
   }
  }
  return;
 }
 byte_count = -1;
 if (cmd == 0) {
  if (fstat(fileno(fin), &st) < 0) {
   perror_reply(550, name);
   goto done;
  }
  if (!S_ISREG(st.st_mode)) {







   if (S_ISDIR(st.st_mode) || guest) {
    reply(550, "%s: not a plain file.", name);
    goto done;
   }
   st.st_size = -1;

  }
 }
 if (restart_point) {
  if (type == TYPE_A) {
   off_t i, n;
   int c;

   n = restart_point;
   i = 0;
   while (i++ < n) {
    if ((c=getc(fin)) == EOF) {
     perror_reply(550, name);
     goto done;
    }
    if (c == '\n')
     i++;
   }
  } else if (lseek(fileno(fin), restart_point, L_SET) < 0) {
   perror_reply(550, name);
   goto done;
  }
 }
 dout = dataconn(name, st.st_size, "w");
 if (dout == ((void*)0))
  goto done;
 time(&start);
 send_data(fin, dout, st.st_blksize, st.st_size,
    restart_point == 0 && cmd == 0 && S_ISREG(st.st_mode));
 if (cmd == 0 && guest && stats && byte_count > 0)
  logxfer(name, byte_count, start);
 (void) fclose(dout);
 data = -1;
 pdata = -1;
done:
 if (cmd == 0)
  LOGBYTES("get", name, byte_count);
 (*closefunc)(fin);
}
