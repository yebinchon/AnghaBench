
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_NONBLOCK ;
 int O_RDWR ;
 int _exit (int ) ;
 int close (int volatile) ;
 int errno ;
 int flopen (char const*,int,...) ;
 char* strerror (int ) ;
 int unlink (char const*) ;
 scalar_t__ vfork () ;

const char *
test_flopen_lock_other(void)
{
 const char *fn = "test_flopen_lock_other";
 const char *result = ((void*)0);
 volatile int fd1, fd2;

 unlink(fn);
 fd1 = flopen(fn, O_RDWR|O_CREAT, 0640);
 if (fd1 < 0) {
  result = strerror(errno);
 } else {
  fd2 = -42;
  if (vfork() == 0) {
   fd2 = flopen(fn, O_RDWR|O_NONBLOCK);
   close(fd2);
   _exit(0);
  }
  if (fd2 == -42)
   result = "vfork() doesn't work as expected";
  if (fd2 >= 0)
   result = "second open succeeded";
  close(fd1);
 }
 unlink(fn);
 return (result);
}
