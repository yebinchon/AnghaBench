
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ UINT64 ;
typedef int ACPI_OBJECT ;


 int acpi_PkgInt (int *,int,scalar_t__*) ;

int
acpi_PkgInt32(ACPI_OBJECT *res, int idx, uint32_t *dst)
{
    UINT64 tmp;
    int error;

    error = acpi_PkgInt(res, idx, &tmp);
    if (error == 0)
 *dst = (uint32_t)tmp;

    return (error);
}
