
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {int bitmap; void** ary; } ;
struct idr {int lock; } ;


 int ENOENT ;
 void* ERR_PTR (int ) ;
 int IDR_MASK ;
 struct idr_layer* idr_find_layer_locked (struct idr*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void *
idr_replace(struct idr *idr, void *ptr, int id)
{
 struct idr_layer *il;
 void *res;
 int idx;

 mtx_lock(&idr->lock);
 il = idr_find_layer_locked(idr, id);
 idx = id & IDR_MASK;


 if (il == ((void*)0) || (il->bitmap & (1 << idx))) {
  res = ERR_PTR(-ENOENT);
 } else {
  res = il->ary[idx];
  il->ary[idx] = ptr;
 }
 mtx_unlock(&idr->lock);
 return (res);
}
