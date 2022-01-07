
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct _region {int dummy; } ;


 scalar_t__ _bcs_tolower (int const) ;
 int * _region_head (struct _region*) ;
 size_t _region_size (struct _region*) ;

uint32_t
_citrus_db_hash_std(struct _region *r)
{
 const uint8_t *p;
 uint32_t hash, tmp;
 size_t i;

 hash = 0;
 p = _region_head(r);

 for (i = _region_size(r); i > 0; i--) {
  hash <<= 4;
  hash += _bcs_tolower(*p);
  tmp = hash & 0xF0000000;
  if (tmp != 0) {
   hash ^= tmp;
   hash ^= tmp >> 24;
  }
  p++;
 }
 return (hash);
}
