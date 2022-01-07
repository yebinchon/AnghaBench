
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ rangelock_type_t ;
struct TYPE_11__ {int rl_lock; int rl_tree; } ;
typedef TYPE_1__ rangelock_t ;
struct TYPE_12__ {int lr_count; void* lr_read_wanted; void* lr_write_wanted; void* lr_proxy; scalar_t__ lr_type; scalar_t__ lr_length; scalar_t__ lr_offset; TYPE_1__* lr_rangelock; } ;
typedef TYPE_2__ locked_range_t ;


 int ASSERT (int) ;
 void* B_FALSE ;
 int KM_SLEEP ;
 scalar_t__ RL_APPEND ;
 scalar_t__ RL_READER ;
 scalar_t__ RL_WRITER ;
 scalar_t__ UINT64_MAX ;
 int avl_add (int *,TYPE_2__*) ;
 scalar_t__ avl_numnodes (int *) ;
 TYPE_2__* kmem_alloc (int,int ) ;
 int mutex_enter (int *) ;
 int mutex_exit (int *) ;
 int rangelock_enter_reader (TYPE_1__*,TYPE_2__*) ;
 int rangelock_enter_writer (TYPE_1__*,TYPE_2__*) ;

locked_range_t *
rangelock_enter(rangelock_t *rl, uint64_t off, uint64_t len,
    rangelock_type_t type)
{
 ASSERT(type == RL_READER || type == RL_WRITER || type == RL_APPEND);

 locked_range_t *new = kmem_alloc(sizeof (locked_range_t), KM_SLEEP);
 new->lr_rangelock = rl;
 new->lr_offset = off;
 if (len + off < off)
  len = UINT64_MAX - off;
 new->lr_length = len;
 new->lr_count = 1;
 new->lr_type = type;
 new->lr_proxy = B_FALSE;
 new->lr_write_wanted = B_FALSE;
 new->lr_read_wanted = B_FALSE;

 mutex_enter(&rl->rl_lock);
 if (type == RL_READER) {



  if (avl_numnodes(&rl->rl_tree) == 0)
   avl_add(&rl->rl_tree, new);
  else
   rangelock_enter_reader(rl, new);
 } else
  rangelock_enter_writer(rl, new);
 mutex_exit(&rl->rl_lock);
 return (new);
}
