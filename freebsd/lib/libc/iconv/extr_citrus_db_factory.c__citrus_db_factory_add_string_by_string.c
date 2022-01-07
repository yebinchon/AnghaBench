
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _region {int dummy; } ;
struct _citrus_db_factory {int dummy; } ;


 int _citrus_db_factory_add_by_string (struct _citrus_db_factory*,char const*,struct _region*,int) ;
 int _region_init (struct _region*,char*,scalar_t__) ;
 int errno ;
 char* strdup (char const*) ;
 scalar_t__ strlen (char*) ;

int
_citrus_db_factory_add_string_by_string(struct _citrus_db_factory *df,
    const char *key, const char *data)
{
 char *p;
 struct _region r;

 p = strdup(data);
 if (p == ((void*)0))
  return (errno);
 _region_init(&r, p, strlen(p) + 1);
 return (_citrus_db_factory_add_by_string(df, key, &r, 1));
}
