
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {int bitmap; struct idr_layer** ary; } ;
struct idr {int layers; struct idr_layer* top; int lock; } ;


 int EAGAIN ;
 int ENOSPC ;
 int IDR_BITS ;
 int IDR_MASK ;
 int IDR_SIZE ;
 int MAX_LEVEL ;
 int MA_OWNED ;
 int find_next_bit (int*,int,int) ;
 void* idr_find_locked (struct idr*,int) ;
 void* idr_get (struct idr*) ;
 int idr_pos (int,int) ;
 int mtx_assert (int *,int ) ;
 int panic (char*,struct idr*,...) ;

__attribute__((used)) static int
idr_get_new_above_locked(struct idr *idr, void *ptr, int starting_id, int *idp)
{
 struct idr_layer *stack[MAX_LEVEL];
 struct idr_layer *il;
 int error;
 int layer;
 int idx, sidx;
 int id;

 mtx_assert(&idr->lock, MA_OWNED);

 error = -EAGAIN;




restart:
 idx = starting_id;
 layer = 0;
 while (idx & ~IDR_MASK) {
  layer++;
  idx >>= IDR_BITS;
 }
 if (layer == MAX_LEVEL + 1) {
  error = -ENOSPC;
  goto out;
 }



 while (idr->layers <= layer ||
     idr->top->bitmap < (1 << idr_pos(starting_id, idr->layers - 1))) {
  if (idr->layers == MAX_LEVEL + 1) {
   error = -ENOSPC;
   goto out;
  }
  il = idr_get(idr);
  if (il == ((void*)0))
   goto out;
  il->ary[0] = idr->top;
  if (idr->top && idr->top->bitmap == 0)
   il->bitmap &= ~1;
  idr->top = il;
  idr->layers++;
 }
 il = idr->top;
 id = 0;



 for (layer = idr->layers - 1;; layer--) {
  stack[layer] = il;
  sidx = idr_pos(starting_id, layer);

  idx = find_next_bit(&il->bitmap, IDR_SIZE, sidx);
  if (idx == IDR_SIZE && sidx == 0)
   panic("idr_get_new: Invalid leaf state (%p, %p)\n",
       idr, il);
  if (idx == IDR_SIZE) {
   starting_id = id + (1 << ((layer + 1) * IDR_BITS));
   goto restart;
  }
  if (idx > sidx)
   starting_id = 0;
  id |= idx << (layer * IDR_BITS);
  if (layer == 0)
   break;
  if (il->ary[idx] == ((void*)0)) {
   il->ary[idx] = idr_get(idr);
   if (il->ary[idx] == ((void*)0))
    goto out;
  }
  il = il->ary[idx];
 }



 il->bitmap &= ~(1 << idx);
 il->ary[idx] = ptr;
 *idp = id;



 while (il->bitmap == 0 && ++layer < idr->layers) {
  il = stack[layer];
  il->bitmap &= ~(1 << idr_pos(id, layer));
 }
 error = 0;
out:






 return (error);
}
