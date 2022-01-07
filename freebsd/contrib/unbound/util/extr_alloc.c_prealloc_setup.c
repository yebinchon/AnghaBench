
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_cache {int num_quar; int * quar; } ;
typedef int alloc_special_type ;


 int ALLOC_SPECIAL_MAX ;
 int alloc_set_special_next (int *,int *) ;
 int alloc_setup_special (int *) ;
 int log_err (char*) ;
 scalar_t__ malloc (int) ;

__attribute__((used)) static void
prealloc_setup(struct alloc_cache* alloc)
{
 alloc_special_type* p;
 int i;
 for(i=0; i<ALLOC_SPECIAL_MAX; i++) {
  if(!(p = (alloc_special_type*)malloc(
   sizeof(alloc_special_type)))) {
   log_err("prealloc: out of memory");
   return;
  }
  alloc_setup_special(p);
  alloc_set_special_next(p, alloc->quar);
  alloc->quar = p;
  alloc->num_quar++;
 }
}
