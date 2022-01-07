
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup_entry {void (* fn ) (void*) ;char const* file; size_t line; void* var; } ;


 int cleanup_sp ;
 struct cleanup_entry* cleanup_stack ;
 int cleanup_stack_size ;
 struct cleanup_entry* xrealloc (struct cleanup_entry*,int) ;

void
cleanup_push_internal(void *var, void (*fn) (void *)



)
{
    struct cleanup_entry *ce;

    if (cleanup_sp == cleanup_stack_size) {
 if (cleanup_stack_size == 0)
     cleanup_stack_size = 64;
 else
     cleanup_stack_size *= 2;
 cleanup_stack = xrealloc(cleanup_stack,
     cleanup_stack_size * sizeof (*cleanup_stack));
    }
    ce = cleanup_stack + cleanup_sp;
    ce->var = var;
    ce->fn = fn;




    cleanup_sp++;
}
