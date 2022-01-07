
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_format {int * name; } ;


 struct crypt_format const* crypt_format ;
 struct crypt_format* crypt_formats ;
 scalar_t__ strcasecmp (int *,char const*) ;

int
crypt_set_format(const char *format)
{
 const struct crypt_format *cf;

 for (cf = crypt_formats; cf->name != ((void*)0); ++cf) {
  if (strcasecmp(cf->name, format) == 0) {
   crypt_format = cf;
   return (1);
  }
 }
 return (0);
}
