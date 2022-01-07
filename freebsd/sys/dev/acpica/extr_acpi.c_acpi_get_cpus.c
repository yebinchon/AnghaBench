
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum cpu_sets { ____Placeholder_cpu_sets } cpu_sets ;
typedef int device_t ;
typedef int cpuset_t ;


 int CPU_AND (int *,int *) ;
 int EINVAL ;


 int acpi_parse_pxm (int ) ;
 int bus_generic_get_cpus (int ,int ,int,size_t,int *) ;
 int * cpuset_domain ;

int
acpi_get_cpus(device_t dev, device_t child, enum cpu_sets op, size_t setsize,
    cpuset_t *cpuset)
{
 int d, error;

 d = acpi_parse_pxm(child);
 if (d < 0)
  return (bus_generic_get_cpus(dev, child, op, setsize, cpuset));

 switch (op) {
 case 128:
  if (setsize != sizeof(cpuset_t))
   return (EINVAL);
  *cpuset = cpuset_domain[d];
  return (0);
 case 129:
  error = bus_generic_get_cpus(dev, child, op, setsize, cpuset);
  if (error != 0)
   return (error);
  if (setsize != sizeof(cpuset_t))
   return (EINVAL);
  CPU_AND(cpuset, &cpuset_domain[d]);
  return (0);
 default:
  return (bus_generic_get_cpus(dev, child, op, setsize, cpuset));
 }
}
