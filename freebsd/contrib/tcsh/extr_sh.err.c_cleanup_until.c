
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup_entry {void* var; int (* fn ) (void*) ;} ;


 int abort () ;
 size_t cleanup_sp ;
 struct cleanup_entry* cleanup_stack ;
 int stub1 (void*) ;

void
cleanup_until(void *last_var)
{
    while (cleanup_sp != 0) {
 struct cleanup_entry ce;

 cleanup_sp--;
 ce = cleanup_stack[cleanup_sp];
 ce.fn(ce.var);
 if (ce.var == last_var)
     return;
    }
    abort();
}
