
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup_entry {int var; int (* fn ) (int ) ;} ;


 size_t cleanup_mark ;
 size_t cleanup_sp ;
 struct cleanup_entry* cleanup_stack ;
 int stub1 (int ) ;

void
cleanup_until_mark(void)
{
    while (cleanup_sp > cleanup_mark) {
 struct cleanup_entry ce;

 cleanup_sp--;
 ce = cleanup_stack[cleanup_sp];
 ce.fn(ce.var);
    }
}
