
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_size; } ;


 int assertion_count (char const*,int) ;
 int failure_finish (int *) ;
 int failure_start (char const*,int,char*,char const*) ;
 scalar_t__ stat (char const*,struct stat*) ;

int
assertion_non_empty_file(const char *filename, int line, const char *f1)
{
 struct stat st;

 assertion_count(filename, line);

 if (stat(f1, &st) != 0) {
  failure_start(filename, line, "Stat failed: %s", f1);
  failure_finish(((void*)0));
  return (0);
 }
 if (st.st_size == 0) {
  failure_start(filename, line, "File empty: %s", f1);
  failure_finish(((void*)0));
  return (0);
 }
 return (1);
}
