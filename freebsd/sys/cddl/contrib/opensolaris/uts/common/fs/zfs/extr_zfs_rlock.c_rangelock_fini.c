
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rl_tree; int rl_lock; } ;
typedef TYPE_1__ rangelock_t ;


 int avl_destroy (int *) ;
 int mutex_destroy (int *) ;

void
rangelock_fini(rangelock_t *rl)
{
 mutex_destroy(&rl->rl_lock);
 avl_destroy(&rl->rl_tree);
}
