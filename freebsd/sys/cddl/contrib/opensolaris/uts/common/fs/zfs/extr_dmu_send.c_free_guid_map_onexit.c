
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int gme_ds; } ;
typedef TYPE_1__ guid_map_entry_t ;
typedef TYPE_1__ avl_tree_t ;


 int avl_destroy (TYPE_1__*) ;
 TYPE_1__* avl_destroy_nodes (TYPE_1__*,void**) ;
 int dsl_dataset_long_rele (int ,TYPE_1__*) ;
 int dsl_dataset_rele (int ,TYPE_1__*) ;
 int kmem_free (TYPE_1__*,int) ;

__attribute__((used)) static void
free_guid_map_onexit(void *arg)
{
 avl_tree_t *ca = arg;
 void *cookie = ((void*)0);
 guid_map_entry_t *gmep;

 while ((gmep = avl_destroy_nodes(ca, &cookie)) != ((void*)0)) {
  dsl_dataset_long_rele(gmep->gme_ds, gmep);
  dsl_dataset_rele(gmep->gme_ds, gmep);
  kmem_free(gmep, sizeof (guid_map_entry_t));
 }
 avl_destroy(ca);
 kmem_free(ca, sizeof (avl_tree_t));
}
