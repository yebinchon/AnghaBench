
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int n_search_dirs ;
 int * search_dirs ;
 char* search_lib_dir (int ,char*,int*,int*,int) ;

char *
findshlib(char *name, int *majorp, int *minorp, int do_dot_a)
{
 int i;

 for (i = 0; i < n_search_dirs; i++) {
  char *path;

  path = search_lib_dir(search_dirs[i], name, majorp, minorp,
   do_dot_a);
  if(path != ((void*)0))
   return path;
 }

 return ((void*)0);
}
