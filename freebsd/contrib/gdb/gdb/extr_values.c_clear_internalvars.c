
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internalvar {struct internalvar* value; struct internalvar* name; struct internalvar* next; } ;


 struct internalvar* internalvars ;
 int xfree (struct internalvar*) ;

void
clear_internalvars (void)
{
  struct internalvar *var;

  while (internalvars)
    {
      var = internalvars;
      internalvars = var->next;
      xfree (var->name);
      xfree (var->value);
      xfree (var);
    }
}
