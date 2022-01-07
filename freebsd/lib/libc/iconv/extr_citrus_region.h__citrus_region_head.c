
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_region {void* r_head; } ;



__attribute__((used)) static __inline void *
_citrus_region_head(const struct _citrus_region *r)
{

 return (r->r_head);
}
