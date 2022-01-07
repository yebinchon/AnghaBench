
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regional {char* next; } ;
struct alloc_cache {int num_reg_blocks; struct regional* reg_list; } ;


 int ALLOC_REG_SIZE ;
 int log_err (char*) ;
 struct regional* regional_create_custom (int ) ;

__attribute__((used)) static void
prealloc_blocks(struct alloc_cache* alloc, size_t num)
{
 size_t i;
 struct regional* r;
 for(i=0; i<num; i++) {
  r = regional_create_custom(ALLOC_REG_SIZE);
  if(!r) {
   log_err("prealloc blocks: out of memory");
   return;
  }
  r->next = (char*)alloc->reg_list;
  alloc->reg_list = r;
  alloc->num_reg_blocks ++;
 }
}
