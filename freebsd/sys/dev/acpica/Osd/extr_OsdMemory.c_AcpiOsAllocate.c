
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_SIZE ;


 int M_ACPICA ;
 int M_NOWAIT ;
 void* malloc (int ,int ,int ) ;

void *
AcpiOsAllocate(ACPI_SIZE Size)
{
    return (malloc(Size, M_ACPICA, M_NOWAIT));
}
