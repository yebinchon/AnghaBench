
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileargs_t ;
typedef int FILE ;


 int * fdopen (int,char const*) ;
 int fileargs_open (int *,char const*) ;

FILE *
fileargs_fopen(fileargs_t *fa, const char *name, const char *mode)
{
 int fd;

 if ((fd = fileargs_open(fa, name)) < 0) {
  return (((void*)0));
 }

 return (fdopen(fd, mode));
}
