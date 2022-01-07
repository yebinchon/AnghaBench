
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_RDWR ;
 int SESIOC_INIT ;
 int close (int) ;
 scalar_t__ ioctl (int,int ,int *) ;
 int open (char*,int ) ;
 int perror (char*) ;

int
main(int a, char **v)
{
 int fd;

 while (*++v) {
  fd = open(*v, O_RDWR);
  if (fd < 0) {
   perror(*v);
   continue;
  }
  if (ioctl(fd, SESIOC_INIT, ((void*)0)) < 0) {
   perror("SESIOC_GETNOBJ");
  }
  (void) close(fd);
 }
 return (0);
}
