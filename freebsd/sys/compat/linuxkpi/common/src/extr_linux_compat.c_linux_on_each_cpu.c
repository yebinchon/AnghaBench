
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int smp_no_rendezvous_barrier ;
 int smp_rendezvous (int ,void (*) (void*),int ,void*) ;

int
linux_on_each_cpu(void callback(void *), void *data)
{

 smp_rendezvous(smp_no_rendezvous_barrier, callback,
     smp_no_rendezvous_barrier, data);
 return (0);
}
