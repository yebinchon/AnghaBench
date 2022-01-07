
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int gn_gbh; } ;
typedef TYPE_1__ zio_gang_node_t ;


 int ASSERT (int ) ;
 int KM_SLEEP ;
 int SPA_GANGBLOCKSIZE ;
 TYPE_1__* kmem_zalloc (int,int ) ;
 int zio_buf_alloc (int ) ;

__attribute__((used)) static zio_gang_node_t *
zio_gang_node_alloc(zio_gang_node_t **gnpp)
{
 zio_gang_node_t *gn;

 ASSERT(*gnpp == ((void*)0));

 gn = kmem_zalloc(sizeof (*gn), KM_SLEEP);
 gn->gn_gbh = zio_buf_alloc(SPA_GANGBLOCKSIZE);
 *gnpp = gn;

 return (gn);
}
