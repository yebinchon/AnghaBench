
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_ops {int name; struct serial_ops* next; } ;


 struct serial_ops* serial_ops_list ;
 scalar_t__ strcmp (char*,int ) ;

__attribute__((used)) static struct serial_ops *
serial_interface_lookup (char *name)
{
  struct serial_ops *ops;

  for (ops = serial_ops_list; ops; ops = ops->next)
    if (strcmp (name, ops->name) == 0)
      return ops;

  return ((void*)0);
}
