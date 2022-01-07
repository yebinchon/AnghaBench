
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {struct target_ops* beneath; } ;



struct target_ops *
find_target_beneath (struct target_ops *t)
{
  return t->beneath;
}
