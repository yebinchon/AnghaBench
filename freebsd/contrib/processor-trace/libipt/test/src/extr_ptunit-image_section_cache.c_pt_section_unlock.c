
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section {int lock; } ;


 int mtx_unlock (int *) ;
 int pte_bad_lock ;
 int pte_internal ;
 int thrd_success ;

__attribute__((used)) static int pt_section_unlock(struct pt_section *section)
{
 if (!section)
  return -pte_internal;
 return 0;
}
