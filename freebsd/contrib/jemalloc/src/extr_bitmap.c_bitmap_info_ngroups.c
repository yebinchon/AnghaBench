
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t ngroups; } ;
typedef TYPE_1__ bitmap_info_t ;



__attribute__((used)) static size_t
bitmap_info_ngroups(const bitmap_info_t *binfo) {
 return binfo->ngroups;
}
