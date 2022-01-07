
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int zn_dva; } ;
typedef TYPE_1__ zil_bp_node_t ;
typedef int dva_t ;


 int AVL_CMP (int ,int ) ;
 int DVA_GET_OFFSET (int const*) ;
 int DVA_GET_VDEV (int const*) ;
 scalar_t__ likely (int) ;

__attribute__((used)) static int
zil_bp_compare(const void *x1, const void *x2)
{
 const dva_t *dva1 = &((zil_bp_node_t *)x1)->zn_dva;
 const dva_t *dva2 = &((zil_bp_node_t *)x2)->zn_dva;

 int cmp = AVL_CMP(DVA_GET_VDEV(dva1), DVA_GET_VDEV(dva2));
 if (likely(cmp))
  return (cmp);

 return (AVL_CMP(DVA_GET_OFFSET(dva1), DVA_GET_OFFSET(dva2)));
}
