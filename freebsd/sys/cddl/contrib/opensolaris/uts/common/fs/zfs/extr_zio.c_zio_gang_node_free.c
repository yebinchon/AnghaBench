
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int gn_gbh; int ** gn_child; } ;
typedef TYPE_1__ zio_gang_node_t ;


 int ASSERT (int ) ;
 int SPA_GANGBLOCKSIZE ;
 int SPA_GBH_NBLKPTRS ;
 int kmem_free (TYPE_1__*,int) ;
 int zio_buf_free (int ,int ) ;

__attribute__((used)) static void
zio_gang_node_free(zio_gang_node_t **gnpp)
{
 zio_gang_node_t *gn = *gnpp;

 for (int g = 0; g < SPA_GBH_NBLKPTRS; g++)
  ASSERT(gn->gn_child[g] == ((void*)0));

 zio_buf_free(gn->gn_gbh, SPA_GANGBLOCKSIZE);
 kmem_free(gn, sizeof (*gn));
 *gnpp = ((void*)0);
}
