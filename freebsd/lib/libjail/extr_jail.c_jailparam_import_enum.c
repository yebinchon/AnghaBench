
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 int strncasecmp (char const*,char const*,size_t) ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static int
jailparam_import_enum(const char **values, int nvalues, const char *valstr,
    size_t valsize, int *value)
{
 char *ep;
 int i;

 for (i = 0; i < nvalues; i++)
  if (valsize == strlen(values[i]) &&
      !strncasecmp(valstr, values[i], valsize)) {
   *value = i;
   return 1;
  }
 *value = strtol(valstr, &ep, 10);
 return (ep == valstr + valsize);
}
