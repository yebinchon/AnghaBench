
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_nlink; } ;


 scalar_t__ EWOULDBLOCK ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int close (int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int flopen (char*,int,int ) ;
 int fstat (int,struct stat*) ;
 int lockfd ;
 char* masterpasswd ;

int
pw_lock(void)
{

 if (*masterpasswd == '\0')
  return (-1);







 for (;;) {
  struct stat st;

  lockfd = flopen(masterpasswd, O_RDONLY|O_NONBLOCK|O_CLOEXEC, 0);
  if (lockfd == -1) {
   if (errno == EWOULDBLOCK) {
    errx(1, "the password db file is busy");
   } else {
    err(1, "could not lock the passwd file: ");
   }
  }






  if (fstat(lockfd, &st) == -1)
   err(1, "fstat() failed: ");
  if (st.st_nlink != 0)
   break;
  close(lockfd);
  lockfd = -1;
 }
 return (lockfd);
}
