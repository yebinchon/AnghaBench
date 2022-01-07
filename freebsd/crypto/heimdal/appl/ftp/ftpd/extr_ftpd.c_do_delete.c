
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int LOGCMD (char*,char*) ;
 scalar_t__ S_ISDIR (int ) ;
 int ack (char*) ;
 int perror_reply (int,char*) ;
 scalar_t__ rmdir (char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ unlink (char*) ;

void
do_delete(char *name)
{
 struct stat st;

 LOGCMD("delete", name);
 if (stat(name, &st) < 0) {
  perror_reply(550, name);
  return;
 }
 if (S_ISDIR(st.st_mode)) {
  if (rmdir(name) < 0) {
   perror_reply(550, name);
   return;
  }
  goto done;
 }
 if (unlink(name) < 0) {
  perror_reply(550, name);
  return;
 }
done:
 ack("DELE");
}
