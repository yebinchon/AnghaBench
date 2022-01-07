
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;


 struct target_ops* target_beneath ;

void
thread_db_init (struct target_ops *target)
{
  target_beneath = target;
}
