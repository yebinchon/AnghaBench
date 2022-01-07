
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef size_t ssize_t ;
typedef int buff ;


 int S_ISLNK (int ) ;
 int assertion_count (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*) ;
 int lstat (char const*,struct stat*) ;
 size_t readlink (char const*,char*,int) ;
 scalar_t__ strcmp (char*,char const*) ;

__attribute__((used)) static int
is_symlink(const char *file, int line,
    const char *pathname, const char *contents)
{
 char buff[300];
 struct stat st;
 ssize_t linklen;
 int r;

 assertion_count(file, line);
 r = lstat(pathname, &st);
 if (r != 0) {
  failure_start(file, line,
      "Symlink should exist: %s", pathname);
  failure_finish(((void*)0));
  return (0);
 }
 if (!S_ISLNK(st.st_mode))
  return (0);
 if (contents == ((void*)0))
  return (1);
 linklen = readlink(pathname, buff, sizeof(buff));
 if (linklen < 0) {
  failure_start(file, line, "Can't read symlink %s", pathname);
  failure_finish(((void*)0));
  return (0);
 }
 buff[linklen] = '\0';
 if (strcmp(buff, contents) != 0)
  return (0);
 return (1);

}
