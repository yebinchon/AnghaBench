
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct env_lst {struct env_lst* value; struct env_lst* var; TYPE_2__* prev; TYPE_1__* next; } ;
struct TYPE_4__ {TYPE_1__* next; } ;
struct TYPE_3__ {TYPE_2__* prev; } ;


 struct env_lst* env_find (unsigned char*) ;
 int free (struct env_lst*) ;

void
env_undefine(unsigned char *var)
{
 struct env_lst *ep;

 if ((ep = env_find(var))) {
  ep->prev->next = ep->next;
  if (ep->next)
   ep->next->prev = ep->prev;
  if (ep->var)
   free(ep->var);
  if (ep->value)
   free(ep->value);
  free(ep);
 }
}
