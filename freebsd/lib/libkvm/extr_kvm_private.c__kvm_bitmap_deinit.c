
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kvm_bitmap {int map; } ;


 int free (int ) ;

void
_kvm_bitmap_deinit(struct kvm_bitmap *bm)
{

 free(bm->map);
}
