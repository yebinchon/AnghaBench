
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {struct idr_layer** ary; int bitmap; } ;
struct idr {int layers; struct idr_layer* free; int lock; } ;
typedef int gfp_t ;


 int IDR_SIZE ;
 int M_IDR ;
 int M_ZERO ;
 int bitmap_fill (int *,int ) ;
 struct idr_layer* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
idr_pre_get(struct idr *idr, gfp_t gfp_mask)
{
 struct idr_layer *il, *iln;
 struct idr_layer *head;
 int need;

 mtx_lock(&idr->lock);
 for (;;) {
  need = idr->layers + 1;
  for (il = idr->free; il != ((void*)0); il = il->ary[0])
   need--;
  mtx_unlock(&idr->lock);
  if (need <= 0)
   break;
  for (head = ((void*)0); need; need--) {
   iln = malloc(sizeof(*il), M_IDR, M_ZERO | gfp_mask);
   if (iln == ((void*)0))
    break;
   bitmap_fill(&iln->bitmap, IDR_SIZE);
   if (head != ((void*)0)) {
    il->ary[0] = iln;
    il = iln;
   } else
    head = il = iln;
  }
  if (head == ((void*)0))
   return (0);
  mtx_lock(&idr->lock);
  il->ary[0] = idr->free;
  idr->free = head;
 }
 return (1);
}
