
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ACPI_STATUS ;


 int ACPI_ROOT_OBJECT ;
 int acpi_SetInteger (int ,char*,int) ;

ACPI_STATUS
acpi_SetIntrModel(int model)
{

    return (acpi_SetInteger(ACPI_ROOT_OBJECT, "_PIC", model));
}
