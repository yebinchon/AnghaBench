
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypt_format {int (* func ) (char const*,char const*,char*) ;int * magic; int * name; } ;
struct crypt_data {char* __buf; } ;
struct TYPE_2__ {int (* func ) (char const*,char const*,char*) ;} ;


 int DES_SALT_ALPHABET ;
 int crypt_des (char const*,char const*,char*) ;
 TYPE_1__* crypt_format ;
 struct crypt_format* crypt_formats ;
 int strlen (char const*) ;
 int strspn (char const*,int ) ;
 char const* strstr (char const*,int *) ;

char *
crypt_r(const char *passwd, const char *salt, struct crypt_data *data)
{
 const struct crypt_format *cf;
 int (*func)(const char *, const char *, char *);




 for (cf = crypt_formats; cf->name != ((void*)0); ++cf)
  if (cf->magic != ((void*)0) && strstr(salt, cf->magic) == salt) {
   func = cf->func;
   goto match;
  }







 func = crypt_format->func;
match:
 if (func(passwd, salt, data->__buf) != 0)
  return (((void*)0));
 return (data->__buf);
}
