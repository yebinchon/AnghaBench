
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sched_get_priority_max_args {int policy; } ;
struct linux_sched_get_priority_max_args {int policy; } ;


 int EINVAL ;



 int SCHED_FIFO ;
 int SCHED_OTHER ;
 int SCHED_RR ;
 int sys_sched_get_priority_max (struct thread*,struct sched_get_priority_max_args*) ;

int
linux_sched_get_priority_max(struct thread *td,
    struct linux_sched_get_priority_max_args *args)
{
 struct sched_get_priority_max_args bsd;

 switch (args->policy) {
 case 129:
  bsd.policy = SCHED_OTHER;
  break;
 case 130:
  bsd.policy = SCHED_FIFO;
  break;
 case 128:
  bsd.policy = SCHED_RR;
  break;
 default:
  return (EINVAL);
 }
 return (sys_sched_get_priority_max(td, &bsd));
}
