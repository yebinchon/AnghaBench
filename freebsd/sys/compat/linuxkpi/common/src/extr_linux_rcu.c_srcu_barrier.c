
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcu_struct {int dummy; } ;


 int linux_rcu_barrier () ;

void
srcu_barrier(struct srcu_struct *srcu)
{
 linux_rcu_barrier();
}
