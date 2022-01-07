
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct _region {int dummy; } ;
struct _citrus_db_factory {int dummy; } ;


 int _citrus_db_factory_add_by_string (struct _citrus_db_factory*,char const*,struct _region*,int) ;
 int _region_init (struct _region*,int *,int) ;
 int errno ;
 int htonl (int ) ;
 int * malloc (int) ;

int
_citrus_db_factory_add32_by_string(struct _citrus_db_factory *df,
    const char *key, uint32_t val)
{
 struct _region r;
 uint32_t *p;

 p = malloc(sizeof(*p));
 if (p == ((void*)0))
  return (errno);
 *p = htonl(val);
 _region_init(&r, p, 4);
 return (_citrus_db_factory_add_by_string(df, key, &r, 1));
}
