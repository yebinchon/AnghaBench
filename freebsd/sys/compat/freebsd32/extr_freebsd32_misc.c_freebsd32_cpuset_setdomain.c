
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct freebsd32_cpuset_setdomain_args {int policy; int mask; int domainsetsize; int id; int which; int level; } ;


 int PAIR32TO64 (int ,int ) ;
 int id_t ;
 int kern_cpuset_setdomain (struct thread*,int ,int ,int ,int ,int ,int ) ;

int
freebsd32_cpuset_setdomain(struct thread *td,
    struct freebsd32_cpuset_setdomain_args *uap)
{

 return (kern_cpuset_setdomain(td, uap->level, uap->which,
     PAIR32TO64(id_t,uap->id), uap->domainsetsize, uap->mask, uap->policy));
}
