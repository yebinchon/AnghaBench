
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bitmap_info_t ;


 size_t LG_SIZEOF_BITMAP ;
 size_t bitmap_info_ngroups (int const*) ;

size_t
bitmap_size(const bitmap_info_t *binfo) {
 return (bitmap_info_ngroups(binfo) << LG_SIZEOF_BITMAP);
}
