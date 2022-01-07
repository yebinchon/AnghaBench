
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int FILE ;


 int EISDIR ;
 scalar_t__ S_ISDIR (int ) ;
 int errno ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char const*) ;
 scalar_t__ fstat (int ,struct stat*) ;

FILE *
pfctl_fopen(const char *name, const char *mode)
{
 struct stat st;
 FILE *fp;

 fp = fopen(name, mode);
 if (fp == ((void*)0))
  return (((void*)0));
 if (fstat(fileno(fp), &st)) {
  fclose(fp);
  return (((void*)0));
 }
 if (S_ISDIR(st.st_mode)) {
  fclose(fp);
  errno = EISDIR;
  return (((void*)0));
 }
 return (fp);
}
