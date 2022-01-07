
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct kvm_bitmap {int size; int * map; } ;


 int ULONG_MAX ;
 int * calloc (int ,int) ;

int
_kvm_bitmap_init(struct kvm_bitmap *bm, u_long bitmapsize, u_long *idx)
{

 *idx = ULONG_MAX;
 bm->map = calloc(bitmapsize, sizeof *bm->map);
 if (bm->map == ((void*)0))
  return (0);
 bm->size = bitmapsize;
 return (1);
}
