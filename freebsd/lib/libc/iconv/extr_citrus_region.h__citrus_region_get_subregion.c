
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_region {int dummy; } ;


 scalar_t__ _citrus_region_check (struct _citrus_region const*,size_t,size_t) ;
 int _citrus_region_init (struct _citrus_region*,int ,size_t) ;
 int _citrus_region_offset (struct _citrus_region const*,size_t) ;

__attribute__((used)) static __inline int
_citrus_region_get_subregion(struct _citrus_region *subr,
    const struct _citrus_region *r, size_t ofs, size_t sz)
{

 if (_citrus_region_check(r, ofs, sz))
  return (-1);
 _citrus_region_init(subr, _citrus_region_offset(r, ofs), sz);
 return (0);
}
