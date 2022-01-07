
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_cpuset_size ;


 int PANIC (char*) ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static size_t
_get_kern_cpuset_size(void)
{
 static int kern_cpuset_size = 0;

 if (kern_cpuset_size == 0) {
  size_t len;

  len = sizeof(kern_cpuset_size);
  if (sysctlbyname("kern.sched.cpusetsize", &kern_cpuset_size,
      &len, ((void*)0), 0))
   PANIC("failed to get sysctl kern.sched.cpusetsize");
 }

 return (kern_cpuset_size);
}
