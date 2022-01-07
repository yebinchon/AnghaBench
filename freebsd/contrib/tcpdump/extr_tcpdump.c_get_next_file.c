
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int PATH_MAX ;
 char* fgets (char*,int ,int *) ;
 int strlen (char*) ;

__attribute__((used)) static char *
get_next_file(FILE *VFile, char *ptr)
{
 char *ret;

 ret = fgets(ptr, PATH_MAX, VFile);
 if (!ret)
  return ((void*)0);

 if (ptr[strlen(ptr) - 1] == '\n')
  ptr[strlen(ptr) - 1] = '\0';

 return ret;
}
