
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {char* next; } ;
struct alloc_cache {scalar_t__ num_reg_blocks; scalar_t__ max_reg_blocks; struct regional* reg_list; } ;


 int log_assert (int ) ;
 int regional_destroy (struct regional*) ;
 int regional_free_all (struct regional*) ;

void
alloc_reg_release(struct alloc_cache* alloc, struct regional* r)
{
 if(alloc->num_reg_blocks >= alloc->max_reg_blocks) {
  regional_destroy(r);
  return;
 }
 if(!r) return;
 regional_free_all(r);
 log_assert(r->next == ((void*)0));
 r->next = (char*)alloc->reg_list;
 alloc->reg_list = r;
 alloc->num_reg_blocks++;
}
