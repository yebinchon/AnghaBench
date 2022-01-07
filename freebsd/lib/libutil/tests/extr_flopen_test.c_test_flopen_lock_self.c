
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int close (int) ;
 int errno ;
 int flopen (char const*,int,...) ;
 char* strerror (int ) ;
 int unlink (char const*) ;

const char *
test_flopen_lock_self(void)
{
 const char *fn = "test_flopen_lock_self";
 const char *result = ((void*)0);
 int fd1, fd2;

 unlink(fn);
 fd1 = flopen(fn, O_RDWR|O_CREAT, 0640);
 if (fd1 < 0) {
  result = strerror(errno);
 } else {
  fd2 = flopen(fn, O_RDWR|O_NONBLOCK);
  if (fd2 >= 0) {
   result = "second open succeeded";
   close(fd2);
  }
  close(fd1);
 }
 unlink(fn);
 return (result);
}
