
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct _citrus_region {int dummy; } ;


 int _citrus_region_offset (struct _citrus_region const*,size_t) ;
 int memcpy (int *,int ,size_t) ;

__attribute__((used)) static __inline uint32_t
_citrus_region_peek32(const struct _citrus_region *r, size_t pos)
{
 uint32_t val;

 memcpy(&val, _citrus_region_offset(r, pos), (size_t)4);
 return (val);
}
