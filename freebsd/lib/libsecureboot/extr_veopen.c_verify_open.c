
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int open (char const*,int) ;
 int verify_fd (int,char const*,int ,int *) ;

int
verify_open(const char *path, int flags)
{
 int fd;
 int rc;

 if ((fd = open(path, flags)) >= 0) {
  if ((rc = verify_fd(fd, path, 0, ((void*)0))) < 0) {
   close(fd);
   fd = rc;
  }
 }
 return (fd);
}
