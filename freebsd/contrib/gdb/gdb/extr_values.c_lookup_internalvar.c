
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internalvar {struct internalvar* next; int value; int name; } ;


 int allocate_value (int ) ;
 int builtin_type_void ;
 int concat (char*,int *) ;
 struct internalvar* internalvars ;
 int release_value (int ) ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ xmalloc (int) ;

struct internalvar *
lookup_internalvar (char *name)
{
  struct internalvar *var;

  for (var = internalvars; var; var = var->next)
    if (strcmp (var->name, name) == 0)
      return var;

  var = (struct internalvar *) xmalloc (sizeof (struct internalvar));
  var->name = concat (name, ((void*)0));
  var->value = allocate_value (builtin_type_void);
  release_value (var->value);
  var->next = internalvars;
  internalvars = var;
  return var;
}
