
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pidfh {int pf_fd; } ;
typedef scalar_t__ ssize_t ;
typedef int pidstr ;


 int _pidfile_remove (struct pidfh*,int ) ;
 int errno ;
 int ftruncate (int,int ) ;
 int getpid () ;
 int pidfile_verify (struct pidfh*) ;
 scalar_t__ pwrite (int,char*,scalar_t__,int ) ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strlen (char*) ;

int
pidfile_write(struct pidfh *pfh)
{
 char pidstr[16];
 int error, fd;





 errno = pidfile_verify(pfh);
 if (errno != 0) {



  return (-1);
 }
 fd = pfh->pf_fd;




 if (ftruncate(fd, 0) == -1) {
  error = errno;
  _pidfile_remove(pfh, 0);
  errno = error;
  return (-1);
 }

 snprintf(pidstr, sizeof(pidstr), "%u", getpid());
 if (pwrite(fd, pidstr, strlen(pidstr), 0) != (ssize_t)strlen(pidstr)) {
  error = errno;
  _pidfile_remove(pfh, 0);
  errno = error;
  return (-1);
 }

 return (0);
}
