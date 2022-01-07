
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_region {size_t r_size; void* r_head; } ;



__attribute__((used)) static __inline void
_citrus_region_init(struct _citrus_region *r, void *h, size_t sz)
{

 r->r_head = h;
 r->r_size = sz;
}
