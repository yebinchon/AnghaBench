
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int lock; } ;


 void* idr_find_locked (struct idr*,int) ;
 int idr_max (struct idr*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void *
idr_get_next(struct idr *idr, int *nextidp)
{
 void *res = ((void*)0);
 int id = *nextidp;

 mtx_lock(&idr->lock);
 for (; id <= idr_max(idr); id++) {
  res = idr_find_locked(idr, id);
  if (res == ((void*)0))
   continue;
  *nextidp = id;
  break;
 }
 mtx_unlock(&idr->lock);
 return (res);
}
