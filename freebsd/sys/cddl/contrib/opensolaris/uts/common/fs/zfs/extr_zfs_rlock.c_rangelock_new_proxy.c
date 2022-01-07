
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int lr_count; void* lr_read_wanted; void* lr_write_wanted; int lr_proxy; int lr_type; scalar_t__ lr_length; scalar_t__ lr_offset; } ;
typedef TYPE_1__ locked_range_t ;
typedef int avl_tree_t ;


 int ASSERT (int) ;
 void* B_FALSE ;
 int B_TRUE ;
 int KM_SLEEP ;
 int RL_READER ;
 int avl_add (int *,TYPE_1__*) ;
 TYPE_1__* kmem_alloc (int,int ) ;

__attribute__((used)) static void
rangelock_new_proxy(avl_tree_t *tree, uint64_t off, uint64_t len)
{
 ASSERT(len != 0);
 locked_range_t *lr = kmem_alloc(sizeof (locked_range_t), KM_SLEEP);
 lr->lr_offset = off;
 lr->lr_length = len;
 lr->lr_count = 1;
 lr->lr_type = RL_READER;
 lr->lr_proxy = B_TRUE;
 lr->lr_write_wanted = B_FALSE;
 lr->lr_read_wanted = B_FALSE;
 avl_add(tree, lr);
}
