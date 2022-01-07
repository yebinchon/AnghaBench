
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* path_append (char const*,char*) ;

__attribute__((used)) static char *
make_absolute(char *p, const char *pwd)
{
 char *abs_str;


 if (p && p[0] != '/') {
  abs_str = path_append(pwd, p);
  free(p);
  return(abs_str);
 } else
  return(p);
}
