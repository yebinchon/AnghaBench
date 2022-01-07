
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;
typedef int FILE ;


 int EOF ;
 int LOGBYTES (char*,char*,int) ;
 int LOGCMD (char*,char*) ;
 int LOG_ERR ;
 int L_SET ;
 int SEEK_CUR ;
 scalar_t__ TYPE_A ;
 int byte_count ;
 int data ;
 int * dataconn (char*,int,char*) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fseeko (int *,int ,int ) ;
 int getc (int *) ;
 scalar_t__ guest ;
 int guniquefd (char*,char**) ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 scalar_t__ noguestmod ;
 int pdata ;
 int perror_reply (int,char*) ;
 scalar_t__ receive_data (int *,int *) ;
 int reply (int,char*,...) ;
 scalar_t__ restart_point ;
 int stub1 (int *) ;
 int syslog (int ,char*) ;
 scalar_t__ type ;

void
store(char *name, char *mode, int unique)
{
 int fd;
 FILE *fout, *din;
 int (*closefunc)(FILE *);

 if (*mode == 'a') {
  if (unique) {

   syslog(LOG_ERR, "Internal: unique flag to APPE");
   unique = 0;
  }
  if (guest && noguestmod) {
   reply(550, "Appending to existing file denied.");
   goto err;
  }
  restart_point = 0;
 }
 if (unique)
  restart_point = 0;
 if (guest && noguestmod) {
  if (restart_point) {
   reply(550, "Modifying existing file denied.");
   goto err;
  } else
   unique = 1;
 }

 if (restart_point)
  mode = "r+";
 if (unique) {
  if ((fd = guniquefd(name, &name)) < 0)
   goto err;
  fout = fdopen(fd, mode);
 } else
  fout = fopen(name, mode);
 closefunc = fclose;
 if (fout == ((void*)0)) {
  perror_reply(553, name);
  goto err;
 }
 byte_count = -1;
 if (restart_point) {
  if (type == TYPE_A) {
   off_t i, n;
   int c;

   n = restart_point;
   i = 0;
   while (i++ < n) {
    if ((c=getc(fout)) == EOF) {
     perror_reply(550, name);
     goto done;
    }
    if (c == '\n')
     i++;
   }





   if (fseeko(fout, 0, SEEK_CUR) < 0) {
    perror_reply(550, name);
    goto done;
   }
  } else if (lseek(fileno(fout), restart_point, L_SET) < 0) {
   perror_reply(550, name);
   goto done;
  }
 }
 din = dataconn(name, -1, "r");
 if (din == ((void*)0))
  goto done;
 if (receive_data(din, fout) == 0) {
  if (unique)
   reply(226, "Transfer complete (unique file name:%s).",
       name);
  else
   reply(226, "Transfer complete.");
 }
 (void) fclose(din);
 data = -1;
 pdata = -1;
done:
 LOGBYTES(*mode == 'a' ? "append" : "put", name, byte_count);
 (*closefunc)(fout);
 return;
err:
 LOGCMD(*mode == 'a' ? "append" : "put" , name);
 return;
}
