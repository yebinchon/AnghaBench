
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_7__ {int bpo_lock; TYPE_1__* bpo_phys; scalar_t__ bpo_havecomp; } ;
typedef TYPE_2__ bpobj_t ;
struct TYPE_6__ {int bpo_uncomp; int bpo_comp; int bpo_bytes; } ;


 int ASSERT (int ) ;
 int UINT64_MAX ;
 int bpobj_is_open (TYPE_2__*) ;
 int bpobj_space_range (TYPE_2__*,int ,int ,int *,int *,int *) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

int
bpobj_space(bpobj_t *bpo, uint64_t *usedp, uint64_t *compp, uint64_t *uncompp)
{
 ASSERT(bpobj_is_open(bpo));
 mutex_enter(&bpo->bpo_lock);

 *usedp = bpo->bpo_phys->bpo_bytes;
 if (bpo->bpo_havecomp) {
  *compp = bpo->bpo_phys->bpo_comp;
  *uncompp = bpo->bpo_phys->bpo_uncomp;
  mutex_exit(&bpo->bpo_lock);
  return (0);
 } else {
  mutex_exit(&bpo->bpo_lock);
  return (bpobj_space_range(bpo, 0, UINT64_MAX,
      usedp, compp, uncompp));
 }
}
