
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int io_spa; TYPE_2__* io_private; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_7__ {int vcsa_obsolete_segs; } ;
typedef TYPE_2__ vdev_copy_segment_arg_t ;


 int SCL_STATE ;
 int kmem_free (TYPE_2__*,int) ;
 int range_tree_destroy (int ) ;
 int range_tree_vacate (int ,int ,TYPE_2__*) ;
 int spa_config_exit (int ,int ,int ) ;
 int unalloc_seg ;

__attribute__((used)) static void
spa_vdev_copy_segment_done(zio_t *zio)
{
 vdev_copy_segment_arg_t *vcsa = zio->io_private;

 range_tree_vacate(vcsa->vcsa_obsolete_segs,
     unalloc_seg, vcsa);
 range_tree_destroy(vcsa->vcsa_obsolete_segs);
 kmem_free(vcsa, sizeof (*vcsa));

 spa_config_exit(zio->io_spa, SCL_STATE, zio->io_spa);
}
