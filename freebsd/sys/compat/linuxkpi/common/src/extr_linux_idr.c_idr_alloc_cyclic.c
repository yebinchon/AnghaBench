
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int next_cyclic_id; int lock; } ;
typedef int gfp_t ;


 int ENOSPC ;
 int idr_alloc_locked (struct idr*,void*,int,int) ;
 scalar_t__ likely (int) ;
 int max (int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ unlikely (int) ;

int
idr_alloc_cyclic(struct idr *idr, void *ptr, int start, int end, gfp_t gfp_mask)
{
 int retval;

 mtx_lock(&idr->lock);
 retval = idr_alloc_locked(idr, ptr, max(start, idr->next_cyclic_id), end);
 if (unlikely(retval == -ENOSPC))
  retval = idr_alloc_locked(idr, ptr, start, end);
 if (likely(retval >= 0))
  idr->next_cyclic_id = retval + 1;
 mtx_unlock(&idr->lock);
 return (retval);
}
