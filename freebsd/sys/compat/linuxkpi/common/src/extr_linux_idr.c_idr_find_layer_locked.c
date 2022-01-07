
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {struct idr_layer** ary; } ;
struct idr {int layers; struct idr_layer* top; } ;


 int MAX_ID_MASK ;
 int idr_max (struct idr*) ;
 size_t idr_pos (int,int) ;

__attribute__((used)) static inline struct idr_layer *
idr_find_layer_locked(struct idr *idr, int id)
{
 struct idr_layer *il;
 int layer;

 id &= MAX_ID_MASK;
 il = idr->top;
 layer = idr->layers - 1;
 if (il == ((void*)0) || id > idr_max(idr))
  return (((void*)0));
 while (layer && il) {
  il = il->ary[idr_pos(id, layer)];
  layer--;
 }
 return (il);
}
