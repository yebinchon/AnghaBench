
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct _citrus_region {int dummy; } ;


 scalar_t__ _citrus_region_offset (struct _citrus_region const*,size_t) ;

__attribute__((used)) static __inline uint8_t
_citrus_region_peek8(const struct _citrus_region *r, size_t pos)
{

 return (*(uint8_t *)_citrus_region_offset(r, pos));
}
