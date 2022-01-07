
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup_entry {void* var; int fn; } ;


 int abort () ;
 int cleanup_ignore_fn ;
 int cleanup_sp ;
 struct cleanup_entry* cleanup_stack ;

void
cleanup_ignore(void *var)
{
    struct cleanup_entry *ce;

    ce = cleanup_stack + cleanup_sp;
    while (ce != cleanup_stack) {
        ce--;
 if (ce->var == var) {
     ce->fn = cleanup_ignore_fn;
     return;
 }
    }
    abort();
}
