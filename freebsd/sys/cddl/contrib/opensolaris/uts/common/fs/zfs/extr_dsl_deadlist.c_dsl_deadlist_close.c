
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ dl_object; int * dl_os; int * dl_phys; int * dl_dbuf; int dl_lock; int dl_tree; scalar_t__ dl_havetree; int dl_bpobj; scalar_t__ dl_oldfmt; } ;
typedef TYPE_1__ dsl_deadlist_t ;
struct TYPE_9__ {int dle_bpobj; } ;
typedef TYPE_2__ dsl_deadlist_entry_t ;


 int ASSERT (int ) ;
 scalar_t__ B_FALSE ;
 int avl_destroy (int *) ;
 TYPE_2__* avl_destroy_nodes (int *,void**) ;
 int bpobj_close (int *) ;
 int dmu_buf_rele (int *,TYPE_1__*) ;
 int dsl_deadlist_is_open (TYPE_1__*) ;
 int kmem_free (TYPE_2__*,int) ;
 int mutex_destroy (int *) ;

void
dsl_deadlist_close(dsl_deadlist_t *dl)
{
 void *cookie = ((void*)0);
 dsl_deadlist_entry_t *dle;

 ASSERT(dsl_deadlist_is_open(dl));

 if (dl->dl_oldfmt) {
  dl->dl_oldfmt = B_FALSE;
  bpobj_close(&dl->dl_bpobj);
  dl->dl_os = ((void*)0);
  dl->dl_object = 0;
  return;
 }

 if (dl->dl_havetree) {
  while ((dle = avl_destroy_nodes(&dl->dl_tree, &cookie))
      != ((void*)0)) {
   bpobj_close(&dle->dle_bpobj);
   kmem_free(dle, sizeof (*dle));
  }
  avl_destroy(&dl->dl_tree);
 }
 dmu_buf_rele(dl->dl_dbuf, dl);
 mutex_destroy(&dl->dl_lock);
 dl->dl_dbuf = ((void*)0);
 dl->dl_phys = ((void*)0);
 dl->dl_os = ((void*)0);
 dl->dl_object = 0;
}
