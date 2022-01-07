
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs_iomap_mr {scalar_t__ index; int * mr; int entry; int refcnt; } ;


 int atomic_fetch_sub (int *,int) ;
 int dlist_remove (int *) ;
 int free (struct rs_iomap_mr*) ;
 int ibv_dereg_mr (int *) ;

__attribute__((used)) static void rs_release_iomap_mr(struct rs_iomap_mr *iomr)
{
 if (atomic_fetch_sub(&iomr->refcnt, 1) != 1)
  return;

 dlist_remove(&iomr->entry);
 ibv_dereg_mr(iomr->mr);
 if (iomr->index >= 0)
  iomr->mr = ((void*)0);
 else
  free(iomr);
}
