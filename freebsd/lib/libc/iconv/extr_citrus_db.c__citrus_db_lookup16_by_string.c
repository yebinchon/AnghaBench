
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct _region {int dummy; } ;
struct _citrus_db_locator {int dummy; } ;
struct _citrus_db {int dummy; } ;


 int EFTYPE ;
 int _citrus_db_lookup_by_string (struct _citrus_db*,char const*,struct _region*,struct _citrus_db_locator*) ;
 int _region_head (struct _region*) ;
 int _region_size (struct _region*) ;
 int be16toh (int ) ;
 int memcpy (int *,int ,int) ;

int
_citrus_db_lookup16_by_string(struct _citrus_db *db, const char *key,
    uint16_t *rval, struct _citrus_db_locator *dl)
{
 struct _region r;
 int ret;
 uint16_t val;

 ret = _citrus_db_lookup_by_string(db, key, &r, dl);
 if (ret)
  return (ret);

 if (_region_size(&r) != 2)
  return (EFTYPE);

 if (rval) {
  memcpy(&val, _region_head(&r), 2);
  *rval = be16toh(val);
 }

 return (0);
}
