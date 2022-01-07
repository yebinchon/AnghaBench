
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* bpo_phys; int bpo_havesubobj; } ;
typedef TYPE_2__ bpobj_t ;
typedef int boolean_t ;
struct TYPE_4__ {scalar_t__ bpo_num_blkptrs; scalar_t__ bpo_num_subobjs; } ;



boolean_t
bpobj_is_empty(bpobj_t *bpo)
{
 return (bpo->bpo_phys->bpo_num_blkptrs == 0 &&
     (!bpo->bpo_havesubobj || bpo->bpo_phys->bpo_num_subobjs == 0));
}
