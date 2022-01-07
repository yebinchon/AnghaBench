
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct alloc_cache {int next_id; int last_id; scalar_t__ thread_num; int cleanup_arg; int (* cleanup ) (int ) ;} ;


 int THRNUM_SHIFT ;
 int fptr_ok (int ) ;
 int fptr_whitelist_alloc_cleanup (int (*) (int )) ;
 int log_warn (char*) ;
 int stub1 (int ) ;

uint64_t
alloc_get_id(struct alloc_cache* alloc)
{
 uint64_t id = alloc->next_id++;
 if(id == alloc->last_id) {
  log_warn("rrset alloc: out of 64bit ids. Clearing cache.");
  fptr_ok(fptr_whitelist_alloc_cleanup(alloc->cleanup));
  (*alloc->cleanup)(alloc->cleanup_arg);


  alloc->next_id = (uint64_t)alloc->thread_num;
  alloc->next_id <<= THRNUM_SHIFT;
  alloc->next_id += 1;

  id = alloc->next_id++;
 }
 return id;
}
