
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct alloc_cache {int thread_num; int next_id; int last_id; int max_reg_blocks; int lock; struct alloc_cache* super; int * cleanup_arg; int * cleanup; int * reg_list; scalar_t__ num_reg_blocks; } ;


 int THRNUM_SHIFT ;
 int lock_protect (int *,struct alloc_cache*,int) ;
 int lock_quick_init (int *) ;
 int memset (struct alloc_cache*,int ,int) ;
 int prealloc_blocks (struct alloc_cache*,int) ;

void
alloc_init(struct alloc_cache* alloc, struct alloc_cache* super,
 int thread_num)
{
 memset(alloc, 0, sizeof(*alloc));
 alloc->super = super;
 alloc->thread_num = thread_num;
 alloc->next_id = (uint64_t)thread_num;
 alloc->next_id <<= THRNUM_SHIFT;
 alloc->last_id = 1;
 alloc->last_id <<= THRNUM_SHIFT;
 alloc->last_id -= 1;
 alloc->last_id |= alloc->next_id;
 alloc->next_id += 1;
 alloc->max_reg_blocks = 100;
 alloc->num_reg_blocks = 0;
 alloc->reg_list = ((void*)0);
 alloc->cleanup = ((void*)0);
 alloc->cleanup_arg = ((void*)0);
 if(alloc->super)
  prealloc_blocks(alloc, alloc->max_reg_blocks);
 if(!alloc->super) {
  lock_quick_init(&alloc->lock);
  lock_protect(&alloc->lock, alloc, sizeof(*alloc));
 }
}
