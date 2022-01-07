
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 char* fflagstostr (int ) ;
 int free (char*) ;
 char* strdup (char const*) ;

char *
flags_to_string(u_long flags, const char *def)
{
 char *str;

 str = fflagstostr(flags);
 if (*str == '\0') {
  free(str);
  str = strdup(def);
 }
 return (str);
}
