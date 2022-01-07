
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr_layer {void** ary; } ;
struct idr {int lock; } ;


 int IDR_MASK ;
 int MA_OWNED ;
 struct idr_layer* idr_find_layer_locked (struct idr*,int) ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static inline void *
idr_find_locked(struct idr *idr, int id)
{
 struct idr_layer *il;
 void *res;

 mtx_assert(&idr->lock, MA_OWNED);
 il = idr_find_layer_locked(idr, id);
 if (il != ((void*)0))
  res = il->ary[id & IDR_MASK];
 else
  res = ((void*)0);
 return (res);
}
