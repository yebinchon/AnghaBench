
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int lock; scalar_t__ layers; int * top; } ;


 int idr_remove_layer (int *,scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
idr_remove_all(struct idr *idr)
{

 mtx_lock(&idr->lock);
 idr_remove_layer(idr->top, idr->layers - 1);
 idr->top = ((void*)0);
 idr->layers = 0;
 mtx_unlock(&idr->lock);
}
