
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {scalar_t__ bitmap; struct idr_layer** ary; } ;
struct idr {int layers; struct idr_layer* top; int lock; } ;


 int EAGAIN ;
 int ENOSPC ;
 int IDR_BITS ;
 int MAX_LEVEL ;
 int MA_OWNED ;
 int ffsl (int) ;
 void* idr_find_locked (struct idr*,int) ;
 void* idr_get (struct idr*) ;
 int idr_pos (int,int) ;
 int mtx_assert (int *,int ) ;
 int panic (char*,struct idr*,...) ;

__attribute__((used)) static int
idr_get_new_locked(struct idr *idr, void *ptr, int *idp)
{
 struct idr_layer *stack[MAX_LEVEL];
 struct idr_layer *il;
 int error;
 int layer;
 int idx;
 int id;

 mtx_assert(&idr->lock, MA_OWNED);

 error = -EAGAIN;



 if (idr->top == ((void*)0) || idr->top->bitmap == 0) {
  if (idr->layers == MAX_LEVEL + 1) {
   error = -ENOSPC;
   goto out;
  }
  il = idr_get(idr);
  if (il == ((void*)0))
   goto out;
  il->ary[0] = idr->top;
  if (idr->top)
   il->bitmap &= ~1;
  idr->top = il;
  idr->layers++;
 }
 il = idr->top;
 id = 0;



 for (layer = idr->layers - 1;; layer--) {
  stack[layer] = il;
  idx = ffsl(il->bitmap);
  if (idx == 0)
   panic("idr_get_new: Invalid leaf state (%p, %p)\n",
       idr, il);
  idx--;
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
