
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int acpi_cmbat_get_bif (void*) ;
 int cmbat ;

__attribute__((used)) static void
acpi_cmbat_get_bif_task(void *arg)
{

    ACPI_SERIAL_BEGIN(cmbat);
    acpi_cmbat_get_bif(arg);
    ACPI_SERIAL_END(cmbat);
}
