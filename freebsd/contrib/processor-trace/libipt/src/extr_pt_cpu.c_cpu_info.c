
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int pt_cpuid (unsigned int,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static uint32_t cpu_info(void)
{
 uint32_t eax, ebx, ecx, edx;

 eax = 0;
 ebx = 0;
 ecx = 0;
 edx = 0;
 pt_cpuid(1u, &eax, &ebx, &ecx, &edx);

 return eax;
}
