
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_RDWR ;
 int close (int) ;
 int errno ;
 int flopen (char const*,int,int) ;
 char* strerror (int ) ;
 int unlink (char const*) ;

const char *
test_flopen_create(void)
{
 const char *fn = "test_flopen_create";
 const char *result = ((void*)0);
 int fd;

 unlink(fn);
 fd = flopen(fn, O_RDWR|O_CREAT, 0640);
 if (fd < 0) {
  result = strerror(errno);
 } else {
  close(fd);
 }
 unlink(fn);
 return (result);
}
