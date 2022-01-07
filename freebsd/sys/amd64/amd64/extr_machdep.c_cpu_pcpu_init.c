
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcpu {int pc_acpi_id; } ;



void
cpu_pcpu_init(struct pcpu *pcpu, int cpuid, size_t size)
{

 pcpu->pc_acpi_id = 0xffffffff;
}
