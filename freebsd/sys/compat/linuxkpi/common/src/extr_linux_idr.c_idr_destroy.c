
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {struct idr_layer** ary; } ;
struct idr {int lock; struct idr_layer* free; } ;


 int M_IDR ;
 int free (struct idr_layer*,int ) ;
 int idr_remove_all (struct idr*) ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
idr_destroy(struct idr *idr)
{
 struct idr_layer *il, *iln;

 idr_remove_all(idr);
 mtx_lock(&idr->lock);
 for (il = idr->free; il != ((void*)0); il = iln) {
  iln = il->ary[0];
  free(il, M_IDR);
 }
 mtx_unlock(&idr->lock);
 mtx_destroy(&idr->lock);
}
