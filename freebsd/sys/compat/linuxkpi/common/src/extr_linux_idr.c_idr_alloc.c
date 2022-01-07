
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int lock; } ;
typedef int gfp_t ;


 int idr_alloc_locked (struct idr*,void*,int,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
idr_alloc(struct idr *idr, void *ptr, int start, int end, gfp_t gfp_mask)
{
 int retval;

 mtx_lock(&idr->lock);
 retval = idr_alloc_locked(idr, ptr, start, end);
 mtx_unlock(&idr->lock);
 return (retval);
}
