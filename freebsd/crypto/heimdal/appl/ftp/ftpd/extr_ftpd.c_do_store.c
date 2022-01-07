
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef scalar_t__ off_t ;
typedef int FILE ;


 int EOF ;
 int LOGBYTES (char*,char*,int) ;
 int LOGCMD (char*,char*) ;
 int SEEK_CUR ;
 int SEEK_SET ;
 scalar_t__ TYPE_A ;
 int byte_count ;
 int data ;
 int * dataconn (char*,scalar_t__,char*) ;
 int fclose (int *) ;
 scalar_t__ filename_check (char*) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fseek (int *,long,int ) ;
 int getc (int *) ;
 scalar_t__ guest ;
 char* gunique (char*) ;
 scalar_t__ lseek (int ,scalar_t__,int ) ;
 int pdata ;
 int perror_reply (int,char*) ;
 scalar_t__ receive_data (int *,int *) ;
 int reply (int,char*,...) ;
 scalar_t__ restart_point ;
 int set_buffer_size (int ,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 scalar_t__ type ;

void
do_store(char *name, char *mode, int unique)
{
 FILE *fout, *din;
 struct stat st;
 int (*closefunc) (FILE *);

 if(guest && filename_check(name))
     return;
 if (unique) {
     char *uname;
     if (stat(name, &st) == 0) {
  if ((uname = gunique(name)) == ((void*)0))
      return;
  name = uname;
     }
     LOGCMD(*mode == 'w' ? "put" : "append", name);
 }

 if (restart_point)
  mode = "r+";
 fout = fopen(name, mode);
 closefunc = fclose;
 if (fout == ((void*)0)) {
  perror_reply(553, name);
  LOGCMD(*mode == 'w' ? "put" : "append", name);
  return;
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





   if (fseek(fout, 0L, SEEK_CUR) < 0) {
    perror_reply(550, name);
    goto done;
   }
  } else if (lseek(fileno(fout), restart_point, SEEK_SET) < 0) {
   perror_reply(550, name);
   goto done;
  }
 }
 din = dataconn(name, (off_t)-1, "r");
 if (din == ((void*)0))
  goto done;
 set_buffer_size(fileno(din), 1);
 if (receive_data(din, fout) == 0) {
     if((*closefunc)(fout) < 0)
  perror_reply(552, name);
     else {
  if (unique)
   reply(226, "Transfer complete (unique file name:%s).",
       name);
  else
   reply(226, "Transfer complete.");
     }
 } else
     (*closefunc)(fout);
 fclose(din);
 data = -1;
 pdata = -1;
done:
 LOGBYTES(*mode == 'w' ? "put" : "append", name, byte_count);
}
