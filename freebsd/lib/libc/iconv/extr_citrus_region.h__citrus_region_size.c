
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_region {size_t r_size; } ;



__attribute__((used)) static __inline size_t
_citrus_region_size(const struct _citrus_region *r)
{

 return (r->r_size);
}
