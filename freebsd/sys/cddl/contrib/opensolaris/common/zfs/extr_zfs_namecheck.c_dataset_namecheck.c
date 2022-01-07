
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int namecheck_err_t ;


 int NAME_ERR_INVALCHAR ;
 int entity_namecheck (char const*,int *,char*) ;
 int * strchr (char const*,char) ;

int
dataset_namecheck(const char *path, namecheck_err_t *why, char *what)
{
 int ret = entity_namecheck(path, why, what);

 if (ret == 0 && strchr(path, '#') != ((void*)0)) {
  if (why != ((void*)0)) {
   *why = NAME_ERR_INVALCHAR;
   *what = '#';
  }
  return (-1);
 }

 return (ret);
}
