
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int bpl_lock; int bpl_list; } ;
typedef TYPE_1__ bplist_t ;
struct TYPE_7__ {int bpe_blk; } ;
typedef TYPE_2__ bplist_entry_t ;
typedef int blkptr_t ;


 int KM_SLEEP ;
 TYPE_2__* kmem_alloc (int,int ) ;
 int list_insert_tail (int *,TYPE_2__*) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;

void
bplist_append(bplist_t *bpl, const blkptr_t *bp)
{
 bplist_entry_t *bpe = kmem_alloc(sizeof (*bpe), KM_SLEEP);

 mutex_enter(&bpl->bpl_lock);
 bpe->bpe_blk = *bp;
 list_insert_tail(&bpl->bpl_list, bpe);
 mutex_exit(&bpl->bpl_lock);
}
