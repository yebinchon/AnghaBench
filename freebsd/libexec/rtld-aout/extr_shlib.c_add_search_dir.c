
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int n_search_dirs ;
 char** search_dirs ;
 scalar_t__ strcmp (char*,char const*) ;
 char* strdup (char const*) ;
 scalar_t__ xrealloc (char**,int) ;

void
add_search_dir(const char *name)
{
 int n;

 for (n = 0; n < n_search_dirs; n++)
  if (strcmp(search_dirs[n], name) == 0)
   return;
 n_search_dirs++;
 search_dirs = (char **)
  xrealloc(search_dirs, n_search_dirs * sizeof search_dirs[0]);
 search_dirs[n_search_dirs - 1] = strdup(name);
}
