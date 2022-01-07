
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _region {int dummy; } ;
struct _citrus_db {int dummy; } ;


 int _CITRUS_PIVOT_SUB_MAGIC ;
 int _db_hash_std ;
 int _db_lookup_by_s (struct _citrus_db*,char const*,struct _region*,int *) ;
 int _db_open (struct _citrus_db**,struct _region*,int ,int ,int *) ;

__attribute__((used)) static int
open_subdb(struct _citrus_db **subdb, struct _citrus_db *db, const char *src)
{
 struct _region r;
 int ret;

 ret = _db_lookup_by_s(db, src, &r, ((void*)0));
 if (ret)
  return (ret);
 ret = _db_open(subdb, &r, _CITRUS_PIVOT_SUB_MAGIC, _db_hash_std, ((void*)0));
 if (ret)
  return (ret);

 return (0);
}
