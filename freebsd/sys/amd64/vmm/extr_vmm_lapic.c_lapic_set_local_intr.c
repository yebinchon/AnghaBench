
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vm {int dummy; } ;
struct vlapic {int dummy; } ;
typedef int cpuset_t ;


 int CPU_CLR (int,int *) ;
 int CPU_FFS (int *) ;
 int CPU_SETOF (int,int *) ;
 int EINVAL ;
 int vlapic_trigger_lvt (struct vlapic*,int) ;
 int vm_active_cpus (struct vm*) ;
 int vm_get_maxcpus (struct vm*) ;
 struct vlapic* vm_lapic (struct vm*,int) ;

int
lapic_set_local_intr(struct vm *vm, int cpu, int vector)
{
 struct vlapic *vlapic;
 cpuset_t dmask;
 int error;

 if (cpu < -1 || cpu >= vm_get_maxcpus(vm))
  return (EINVAL);

 if (cpu == -1)
  dmask = vm_active_cpus(vm);
 else
  CPU_SETOF(cpu, &dmask);
 error = 0;
 while ((cpu = CPU_FFS(&dmask)) != 0) {
  cpu--;
  CPU_CLR(cpu, &dmask);
  vlapic = vm_lapic(vm, cpu);
  error = vlapic_trigger_lvt(vlapic, vector);
  if (error)
   break;
 }

 return (error);
}
