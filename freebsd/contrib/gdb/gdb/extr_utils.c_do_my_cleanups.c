
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {int arg; int (* function ) (int ) ;struct cleanup* next; } ;


 int stub1 (int ) ;
 int xfree (struct cleanup*) ;

__attribute__((used)) static void
do_my_cleanups (struct cleanup **pmy_chain,
  struct cleanup *old_chain)
{
  struct cleanup *ptr;
  while ((ptr = *pmy_chain) != old_chain)
    {
      *pmy_chain = ptr->next;
      (*ptr->function) (ptr->arg);
      xfree (ptr);
    }
}
