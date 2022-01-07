
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _region {int dummy; } ;
struct _citrus_region {int dummy; } ;
struct _citrus_db_factory {int dummy; } ;


 int _citrus_db_factory_add (struct _citrus_db_factory*,struct _region*,int,struct _citrus_region*,int) ;
 int _region_init (struct _region*,char*,int ) ;
 int errno ;
 char* strdup (char const*) ;
 int strlen (char const*) ;

int
_citrus_db_factory_add_by_string(struct _citrus_db_factory *df,
    const char *key, struct _citrus_region *data, int datafree)
{
 struct _region r;
 char *tmp;

 tmp = strdup(key);
 if (tmp == ((void*)0))
  return (errno);
 _region_init(&r, tmp, strlen(key));
 return _citrus_db_factory_add(df, &r, 1, data, datafree);
}
