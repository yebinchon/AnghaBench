
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internalvar {char* name; } ;



char *
internalvar_name (struct internalvar *var)
{
  return var->name;
}
