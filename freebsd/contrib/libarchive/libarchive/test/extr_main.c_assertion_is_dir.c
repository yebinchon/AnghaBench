
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int mode_t ;


 int S_ISDIR (int) ;
 int assertion_count (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*) ;
 int logprintf (char*,int) ;
 int lstat (char const*,struct stat*) ;

int
assertion_is_dir(const char *file, int line, const char *pathname, int mode)
{
 struct stat st;
 int r;




 assertion_count(file, line);
 r = lstat(pathname, &st);
 if (r != 0) {
  failure_start(file, line, "Dir should exist: %s", pathname);
  failure_finish(((void*)0));
  return (0);
 }
 if (!S_ISDIR(st.st_mode)) {
  failure_start(file, line, "%s is not a dir", pathname);
  failure_finish(((void*)0));
  return (0);
 }




 if (mode >= 0 && (mode_t)mode != (st.st_mode & 07777)) {
  failure_start(file, line, "Dir %s has wrong mode", pathname);
  logprintf("  Expected: 0%3o\n", mode);
  logprintf("  Found: 0%3o\n", st.st_mode & 07777);
  failure_finish(((void*)0));
  return (0);
 }

 return (1);
}
