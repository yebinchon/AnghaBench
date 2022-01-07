
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 char* concat (int ,char*,char const*) ;
 int free (char*) ;
 int lstat (char*,struct stat*) ;
 int n_search_dirs ;
 int * search_dirs ;

char *
find_lib_file(const char *name)
{
 int i;

 for (i = 0; i < n_search_dirs; i++) {
  char *path = concat(search_dirs[i], "/", name);
  struct stat sb;

  if (lstat(path, &sb) != -1)
   return path;

  free(path);
 }

 return ((void*)0);
}
