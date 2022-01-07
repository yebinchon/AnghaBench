
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct _region {int dummy; } ;


 int _region_offset (struct _region*,size_t) ;
 int htonl (int ) ;
 int memcpy (int ,int *,int) ;

__attribute__((used)) static __inline void
put32(struct _region *r, size_t *rofs, uint32_t val)
{

 val = htonl(val);
 memcpy(_region_offset(r, *rofs), &val, 4);
 *rofs += 4;
}
