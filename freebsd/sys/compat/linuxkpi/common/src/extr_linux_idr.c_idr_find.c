
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int lock; } ;


 void* idr_find_locked (struct idr*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void *
idr_find(struct idr *idr, int id)
{
 void *res;

 mtx_lock(&idr->lock);
 res = idr_find_locked(idr, id);
 mtx_unlock(&idr->lock);
 return (res);
}
