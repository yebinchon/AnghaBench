
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* io_vsd; } ;
typedef TYPE_1__ zio_t ;
struct TYPE_10__ {int is_children; int iv_splits; TYPE_4__* is_child; } ;
typedef TYPE_2__ indirect_vsd_t ;
typedef TYPE_2__ indirect_split_t ;
struct TYPE_11__ {TYPE_2__* ic_data; } ;
typedef TYPE_4__ indirect_child_t ;


 int free (TYPE_2__*) ;
 TYPE_2__* list_head (int *) ;
 int list_remove (int *,TYPE_2__*) ;

__attribute__((used)) static void
vdev_indirect_map_free(zio_t *zio)
{
 indirect_vsd_t *iv = zio->io_vsd;
 indirect_split_t *is;

 while ((is = list_head(&iv->iv_splits)) != ((void*)0)) {
  for (int c = 0; c < is->is_children; c++) {
   indirect_child_t *ic = &is->is_child[c];
   free(ic->ic_data);
  }
  list_remove(&iv->iv_splits, is);
  free(is);
 }
 free(iv);
}
