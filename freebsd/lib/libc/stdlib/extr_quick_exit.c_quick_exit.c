
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quick_exit_handler {int (* cleanup ) () ;struct quick_exit_handler* next; } ;


 int _Exit (int) ;
 int __compiler_membar () ;
 struct quick_exit_handler* handlers ;
 int stub1 () ;

void
quick_exit(int status)
{
 struct quick_exit_handler *h;





 for (h = handlers; ((void*)0) != h; h = h->next) {
  __compiler_membar();
  h->cleanup();
 }
 _Exit(status);
}
