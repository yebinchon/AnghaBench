
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vioapic {int dummy; } ;


 int vioapic_mmio_rw (struct vioapic*,int,int ,int *,int,int) ;
 struct vioapic* vm_ioapic (void*) ;

int
vioapic_mmio_read(void *vm, int vcpuid, uint64_t gpa, uint64_t *rval,
    int size, void *arg)
{
 int error;
 struct vioapic *vioapic;

 vioapic = vm_ioapic(vm);
 error = vioapic_mmio_rw(vioapic, vcpuid, gpa, rval, size, 1);
 return (error);
}
