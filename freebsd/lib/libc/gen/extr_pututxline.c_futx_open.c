
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct futx {int dummy; } ;
typedef int FILE ;


 int EFTYPE ;
 int O_CLOEXEC ;
 int O_CREAT ;
 int O_EXLOCK ;
 int O_RDWR ;
 int _close (int) ;
 int _fstat (int,struct stat*) ;
 int _open (char const*,int,int) ;
 int errno ;
 int * fdopen (int,char*) ;

__attribute__((used)) static FILE *
futx_open(const char *file)
{
 FILE *fp;
 struct stat sb;
 int fd;

 fd = _open(file, O_CREAT|O_RDWR|O_EXLOCK|O_CLOEXEC, 0644);
 if (fd < 0)
  return (((void*)0));


 if (_fstat(fd, &sb) != -1 && sb.st_size % sizeof(struct futx) != 0) {
  _close(fd);
  errno = EFTYPE;
  return (((void*)0));
 }

 fp = fdopen(fd, "r+");
 if (fp == ((void*)0)) {
  _close(fd);
  return (((void*)0));
 }
 return (fp);
}
