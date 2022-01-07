
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 size_t GUEST_CODE_SEL ;
 size_t GUEST_DATA_SEL ;
 size_t GUEST_NULL_SEL ;

void
vm_setup_freebsd_gdt(uint64_t *gdtr)
{
 gdtr[GUEST_NULL_SEL] = 0;
 gdtr[GUEST_CODE_SEL] = 0x0020980000000000;
 gdtr[GUEST_DATA_SEL] = 0x0000900000000000;
}
