
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vlapic {int dummy; } ;


 int DEFAULT_APIC_BASE ;
 int EINVAL ;
 int vlapic_read (struct vlapic*,int,int,int*,void*) ;
 struct vlapic* vm_lapic (void*,int) ;

int
lapic_mmio_read(void *vm, int cpu, uint64_t gpa, uint64_t *rval, int size,
  void *arg)
{
 int error;
 uint64_t off;
 struct vlapic *vlapic;

 off = gpa - DEFAULT_APIC_BASE;






 off &= ~3;
 if (off & 0xf)
  return (EINVAL);

 vlapic = vm_lapic(vm, cpu);
 error = vlapic_read(vlapic, 1, off, rval, arg);
 return (error);
}
