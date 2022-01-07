
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct freebsd32_cpuset_setaffinity_args {int mask; int cpusetsize; int id; int which; int level; } ;


 int PAIR32TO64 (int ,int ) ;
 int id_t ;
 int kern_cpuset_setaffinity (struct thread*,int ,int ,int ,int ,int ) ;

int
freebsd32_cpuset_setaffinity(struct thread *td,
    struct freebsd32_cpuset_setaffinity_args *uap)
{

 return (kern_cpuset_setaffinity(td, uap->level, uap->which,
     PAIR32TO64(id_t,uap->id), uap->cpusetsize, uap->mask));
}
