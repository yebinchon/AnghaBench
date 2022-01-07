
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ bpo_object; int bpo_lock; int * bpo_cached_dbuf; int * bpo_phys; int * bpo_dbuf; } ;
typedef TYPE_1__ bpobj_t ;


 int dmu_buf_rele (int *,TYPE_1__*) ;
 int mutex_destroy (int *) ;

void
bpobj_close(bpobj_t *bpo)
{

 if (bpo->bpo_object == 0)
  return;

 dmu_buf_rele(bpo->bpo_dbuf, bpo);
 if (bpo->bpo_cached_dbuf != ((void*)0))
  dmu_buf_rele(bpo->bpo_cached_dbuf, bpo);
 bpo->bpo_dbuf = ((void*)0);
 bpo->bpo_phys = ((void*)0);
 bpo->bpo_cached_dbuf = ((void*)0);
 bpo->bpo_object = 0;

 mutex_destroy(&bpo->bpo_lock);
}
