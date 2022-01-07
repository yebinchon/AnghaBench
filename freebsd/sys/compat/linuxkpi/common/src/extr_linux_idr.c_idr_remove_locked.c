
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {int bitmap; struct idr_layer** ary; } ;
struct idr {int layers; struct idr_layer* top; } ;


 int IDR_MASK ;
 int MAX_ID_MASK ;
 int idr_max (struct idr*) ;
 int idr_pos (int,int) ;
 int panic (char*,int,struct idr*,struct idr_layer*) ;

__attribute__((used)) static void *
idr_remove_locked(struct idr *idr, int id)
{
 struct idr_layer *il;
 void *res;
 int layer;
 int idx;

 id &= MAX_ID_MASK;
 il = idr->top;
 layer = idr->layers - 1;
 if (il == ((void*)0) || id > idr_max(idr))
  return (((void*)0));




 while (layer && il) {
  idx = idr_pos(id, layer);
  il->bitmap |= 1 << idx;
  il = il->ary[idx];
  layer--;
 }
 idx = id & IDR_MASK;





 if (il == ((void*)0) || (il->bitmap & (1 << idx)) != 0)
  panic("idr_remove: Item %d not allocated (%p, %p)\n",
      id, idr, il);
 res = il->ary[idx];
 il->ary[idx] = ((void*)0);
 il->bitmap |= 1 << idx;

 return (res);
}
