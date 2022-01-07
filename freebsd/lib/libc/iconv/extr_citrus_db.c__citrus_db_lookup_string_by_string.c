
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _region {int dummy; } ;
struct _citrus_db_locator {int dummy; } ;
struct _citrus_db {int dummy; } ;


 int EFTYPE ;
 int _citrus_db_lookup_by_string (struct _citrus_db*,char const*,struct _region*,struct _citrus_db_locator*) ;
 char* _region_head (struct _region*) ;
 int _region_size (struct _region*) ;

int
_citrus_db_lookup_string_by_string(struct _citrus_db *db, const char *key,
    const char **rdata, struct _citrus_db_locator *dl)
{
 struct _region r;
 int ret;

 ret = _citrus_db_lookup_by_string(db, key, &r, dl);
 if (ret)
  return (ret);


 if (_region_size(&r) == 0)
  return (EFTYPE);
 if (*((const char*)_region_head(&r)+_region_size(&r)-1) != '\0')
  return (EFTYPE);

 if (rdata)
  *rdata = _region_head(&r);

 return (0);
}
