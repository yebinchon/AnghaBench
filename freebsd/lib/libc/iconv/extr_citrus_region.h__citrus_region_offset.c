
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct _citrus_region {scalar_t__ r_head; } ;



__attribute__((used)) static __inline void *
_citrus_region_offset(const struct _citrus_region *r, size_t pos)
{

 return ((void *)((uint8_t *)r->r_head + pos));
}
