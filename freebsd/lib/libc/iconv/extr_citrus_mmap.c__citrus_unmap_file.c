
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_region {int dummy; } ;


 int * _region_head (struct _citrus_region*) ;
 int _region_init (struct _citrus_region*,int *,int ) ;
 int _region_size (struct _citrus_region*) ;
 int munmap (int *,int ) ;

void
_citrus_unmap_file(struct _citrus_region *r)
{

 if (_region_head(r) != ((void*)0)) {
  (void)munmap(_region_head(r), _region_size(r));
  _region_init(r, ((void*)0), 0);
 }
}
