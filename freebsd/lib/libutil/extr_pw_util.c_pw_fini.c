
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGCONT ;
 int SIGTERM ;
 int close (int) ;
 int editpid ;
 int errno ;
 scalar_t__ initialized ;
 int kill (int,int ) ;
 int lockfd ;
 char* tempname ;
 int unlink (char*) ;
 int waitpid (int,int*,int ) ;

void
pw_fini(void)
{
 int serrno, status;

 if (!initialized)
  return;
 initialized = 0;
 serrno = errno;
 if (editpid != -1) {
  kill(editpid, SIGTERM);
  kill(editpid, SIGCONT);
  waitpid(editpid, &status, 0);
  editpid = -1;
 }
 if (*tempname != '\0') {
  unlink(tempname);
  *tempname = '\0';
 }
 if (lockfd != -1)
  close(lockfd);
 errno = serrno;
}
