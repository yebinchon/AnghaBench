
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef scalar_t__ ACPI_STATUS ;
typedef int * ACPI_HANDLE ;


 scalar_t__ ACPI_SUCCESS (scalar_t__) ;
 scalar_t__ AE_NOT_FOUND ;
 scalar_t__ acpi_GetInteger (int *,char*,int*) ;
 int * acpi_get_handle (int ) ;
 int acpi_map_pxm_to_vm_domainid (int) ;

__attribute__((used)) static int
acpi_parse_pxm(device_t dev)
{
 return (-1);
}
