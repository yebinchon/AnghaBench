
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bpl_lock; int bpl_list; } ;
typedef TYPE_1__ bplist_t ;


 int list_destroy (int *) ;
 int mutex_destroy (int *) ;

void
bplist_destroy(bplist_t *bpl)
{
 list_destroy(&bpl->bpl_list);
 mutex_destroy(&bpl->bpl_lock);
}
