
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pidfh {int pf_dirfd; int pf_fd; } ;


 int close (int ) ;
 int errno ;
 int free (struct pidfh*) ;
 int pidfile_verify (struct pidfh*) ;

int
pidfile_close(struct pidfh *pfh)
{
 int error;

 error = pidfile_verify(pfh);
 if (error != 0) {
  errno = error;
  return (-1);
 }

 if (close(pfh->pf_fd) == -1)
  error = errno;
 if (close(pfh->pf_dirfd) == -1 && error == 0)
  error = errno;

 free(pfh);
 if (error != 0) {
  errno = error;
  return (-1);
 }
 return (0);
}
