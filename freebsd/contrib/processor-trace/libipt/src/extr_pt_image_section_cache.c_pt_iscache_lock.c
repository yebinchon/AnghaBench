
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_image_section_cache {int lock; } ;


 int mtx_lock (int *) ;
 int pte_bad_lock ;
 int pte_internal ;
 int thrd_success ;

__attribute__((used)) static inline int pt_iscache_lock(struct pt_image_section_cache *iscache)
{
 if (!iscache)
  return -pte_internal;
 return 0;
}
