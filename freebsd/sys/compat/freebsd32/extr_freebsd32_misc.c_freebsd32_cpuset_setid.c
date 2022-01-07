
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct freebsd32_cpuset_setid_args {int setid; int id; int which; } ;


 int PAIR32TO64 (int ,int ) ;
 int id_t ;
 int kern_cpuset_setid (struct thread*,int ,int ,int ) ;

int
freebsd32_cpuset_setid(struct thread *td,
    struct freebsd32_cpuset_setid_args *uap)
{

 return (kern_cpuset_setid(td, uap->which,
     PAIR32TO64(id_t, uap->id), uap->setid));
}
