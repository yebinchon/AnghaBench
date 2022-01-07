
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct _region {int dummy; } ;


 scalar_t__ _region_offset (struct _region*,size_t) ;

__attribute__((used)) static __inline void
put8(struct _region *r, size_t *rofs, uint8_t val)
{

 *(uint8_t *)_region_offset(r, *rofs) = val;
 *rofs += 1;
}
