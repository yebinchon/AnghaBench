
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __cpuid (int*,unsigned int const) ;

__attribute__((used)) static void
_cpuid(unsigned int cpu_info[4U], const unsigned int cpu_info_type)
{
    (void) cpu_info_type;
    cpu_info[0] = cpu_info[1] = cpu_info[2] = cpu_info[3] = 0;

}
