
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {struct cleanup* next; } ;


 int xfree (struct cleanup*) ;

void
discard_my_cleanups (struct cleanup **pmy_chain,
       struct cleanup *old_chain)
{
  struct cleanup *ptr;
  while ((ptr = *pmy_chain) != old_chain)
    {
      *pmy_chain = ptr->next;
      xfree (ptr);
    }
}
