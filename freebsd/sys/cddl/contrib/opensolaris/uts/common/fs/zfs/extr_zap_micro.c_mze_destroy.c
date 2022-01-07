
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int zap_avl; } ;
struct TYPE_5__ {TYPE_1__ zap_m; } ;
typedef TYPE_2__ zap_t ;
typedef int mzap_ent_t ;


 int avl_destroy (int *) ;
 int * avl_destroy_nodes (int *,void**) ;
 int kmem_free (int *,int) ;

__attribute__((used)) static void
mze_destroy(zap_t *zap)
{
 mzap_ent_t *mze;
 void *avlcookie = ((void*)0);

 while (mze = avl_destroy_nodes(&zap->zap_m.zap_avl, &avlcookie))
  kmem_free(mze, sizeof (mzap_ent_t));
 avl_destroy(&zap->zap_m.zap_avl);
}
