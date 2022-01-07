
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int lock; } ;


 int idr_get_new_above_locked (struct idr*,void*,int,int*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
idr_get_new_above(struct idr *idr, void *ptr, int starting_id, int *idp)
{
 int retval;

 mtx_lock(&idr->lock);
 retval = idr_get_new_above_locked(idr, ptr, starting_id, idp);
 mtx_unlock(&idr->lock);
 return (retval);
}
