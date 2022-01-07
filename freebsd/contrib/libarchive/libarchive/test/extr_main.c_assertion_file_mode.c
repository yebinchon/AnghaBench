
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int assertion_count (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,...) ;
 int lstat (char const*,struct stat*) ;

int
assertion_file_mode(const char *file, int line, const char *pathname, int expected_mode)
{
 int mode;
 int r;

 assertion_count(file, line);







 {
  struct stat st;
  r = lstat(pathname, &st);
  mode = (int)(st.st_mode & 0777);
 }
 if (r == 0 && mode == expected_mode)
   return (1);
 failure_start(file, line, "File %s has mode %o, expected %o",
     pathname, mode, expected_mode);

 failure_finish(((void*)0));
 return (0);
}
