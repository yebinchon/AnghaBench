
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int cpufreq_unregister (int ) ;
 int sema_destroy (int *) ;
 int vc_sema ;

__attribute__((used)) static int
bcm2835_cpufreq_detach(device_t dev)
{

 sema_destroy(&vc_sema);

 return (cpufreq_unregister(dev));
}
