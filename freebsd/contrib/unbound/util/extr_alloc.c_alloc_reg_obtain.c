
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {int * next; } ;
struct alloc_cache {scalar_t__ num_reg_blocks; struct regional* reg_list; } ;


 int ALLOC_REG_SIZE ;
 struct regional* regional_create_custom (int ) ;

struct regional*
alloc_reg_obtain(struct alloc_cache* alloc)
{
 if(alloc->num_reg_blocks > 0) {
  struct regional* r = alloc->reg_list;
  alloc->reg_list = (struct regional*)r->next;
  r->next = ((void*)0);
  alloc->num_reg_blocks--;
  return r;
 }
 return regional_create_custom(ALLOC_REG_SIZE);
}
