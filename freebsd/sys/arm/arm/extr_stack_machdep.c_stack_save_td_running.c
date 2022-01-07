
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct stack {int dummy; } ;


 int EOPNOTSUPP ;
 struct thread* curthread ;
 int stack_save (struct stack*) ;

int
stack_save_td_running(struct stack *st, struct thread *td)
{

 if (td == curthread) {
  stack_save(st);
  return (0);
 }
 return (EOPNOTSUPP);
}
