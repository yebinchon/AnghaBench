
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serial_ops {struct serial_ops* next; } ;


 struct serial_ops* serial_ops_list ;

void
serial_add_interface (struct serial_ops *optable)
{
  optable->next = serial_ops_list;
  serial_ops_list = optable;
}
