
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_region {size_t r_size; } ;



__attribute__((used)) static __inline int
_citrus_region_check(const struct _citrus_region *r, size_t ofs, size_t sz)
{

 return (r->r_size >= ofs + sz ? 0 : -1);
}
