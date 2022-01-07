
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zv_vdev; } ;
typedef TYPE_1__ zil_vdev_node_t ;
typedef int uint64_t ;


 int AVL_CMP (int const,int const) ;

__attribute__((used)) static int
zil_lwb_vdev_compare(const void *x1, const void *x2)
{
 const uint64_t v1 = ((zil_vdev_node_t *)x1)->zv_vdev;
 const uint64_t v2 = ((zil_vdev_node_t *)x2)->zv_vdev;

 return (AVL_CMP(v1, v2));
}
