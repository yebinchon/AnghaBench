
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cleanup {void* arg; int * function; struct cleanup* next; } ;
typedef int make_cleanup_ftype ;


 scalar_t__ xmalloc (int) ;

struct cleanup *
make_my_cleanup (struct cleanup **pmy_chain, make_cleanup_ftype *function,
   void *arg)
{
  struct cleanup *new
    = (struct cleanup *) xmalloc (sizeof (struct cleanup));
  struct cleanup *old_chain = *pmy_chain;

  new->next = *pmy_chain;
  new->function = function;
  new->arg = arg;
  *pmy_chain = new;

  return old_chain;
}
