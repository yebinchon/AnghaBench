
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int add_search_dir (char*) ;
 int free (char*) ;
 char* strdup (char*) ;
 char* strsep (char**,char*) ;

void
add_search_path(char *path)
{
 register char *cp, *dup;

 if (path == ((void*)0))
  return;


 path = dup = strdup(path);
 while ((cp = strsep(&path, ":")) != ((void*)0))
  add_search_dir(cp);
 free(dup);
}
