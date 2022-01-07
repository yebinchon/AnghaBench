
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int nvpair_t ;


 int nv_free (char*) ;
 int nv_vasprintf (char**,char const*,int ) ;
 int * nvpair_create_string (char const*,char*) ;

nvpair_t *
nvpair_create_stringv(const char *name, const char *valuefmt, va_list valueap)
{
 nvpair_t *nvp;
 char *str;
 int len;

 len = nv_vasprintf(&str, valuefmt, valueap);
 if (len < 0)
  return (((void*)0));
 nvp = nvpair_create_string(name, str);
 nv_free(str);
 return (nvp);
}
