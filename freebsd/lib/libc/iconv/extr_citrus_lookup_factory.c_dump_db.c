
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _region {int dummy; } ;
struct _citrus_db_factory {int dummy; } ;


 int _CITRUS_LOOKUP_MAGIC ;
 size_t _db_factory_calc_size (struct _citrus_db_factory*) ;
 int _db_factory_serialize (struct _citrus_db_factory*,int ,struct _region*) ;
 int _region_init (struct _region*,void*,size_t) ;
 int errno ;
 void* malloc (size_t) ;

__attribute__((used)) static int
dump_db(struct _citrus_db_factory *df, struct _region *r)
{
 void *ptr;
 size_t size;

 size = _db_factory_calc_size(df);
 ptr = malloc(size);
 if (ptr == ((void*)0))
  return (errno);
 _region_init(r, ptr, size);

 return (_db_factory_serialize(df, _CITRUS_LOOKUP_MAGIC, r));
}
