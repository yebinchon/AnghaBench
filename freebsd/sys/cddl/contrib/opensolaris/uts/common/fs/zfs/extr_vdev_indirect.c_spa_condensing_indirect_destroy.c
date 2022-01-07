
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * sci_new_mapping; int * sci_new_mapping_entries; } ;
typedef TYPE_1__ spa_condensing_indirect_t ;


 int TXG_SIZE ;
 int kmem_free (TYPE_1__*,int) ;
 int list_destroy (int *) ;
 int vdev_indirect_mapping_close (int *) ;

__attribute__((used)) static void
spa_condensing_indirect_destroy(spa_condensing_indirect_t *sci)
{
 for (int i = 0; i < TXG_SIZE; i++)
  list_destroy(&sci->sci_new_mapping_entries[i]);

 if (sci->sci_new_mapping != ((void*)0))
  vdev_indirect_mapping_close(sci->sci_new_mapping);

 kmem_free(sci, sizeof (*sci));
}
