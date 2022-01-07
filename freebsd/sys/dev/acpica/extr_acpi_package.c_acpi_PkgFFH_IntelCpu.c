
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
typedef int gas ;
struct TYPE_10__ {scalar_t__ SpaceId; int BitWidth; int BitOffset; int AccessWidth; int Address; } ;
struct TYPE_8__ {int Length; scalar_t__ Pointer; } ;
struct TYPE_7__ {TYPE_3__* Elements; } ;
struct TYPE_9__ {scalar_t__ Type; TYPE_2__ Buffer; TYPE_1__ Package; } ;
typedef TYPE_3__ ACPI_OBJECT ;
typedef TYPE_4__ ACPI_GENERIC_ADDRESS ;


 scalar_t__ ACPI_ADR_SPACE_FIXED_HARDWARE ;
 scalar_t__ ACPI_TYPE_BUFFER ;
 int EINVAL ;
 int ERESTART ;
 int memcpy (TYPE_4__*,scalar_t__,int) ;

int
acpi_PkgFFH_IntelCpu(ACPI_OBJECT *res, int idx, int *vendor, int *class,
    uint64_t *address, int *accsize)
{
    ACPI_GENERIC_ADDRESS gas;
    ACPI_OBJECT *obj;

    obj = &res->Package.Elements[idx];
    if (obj == ((void*)0) || obj->Type != ACPI_TYPE_BUFFER ||
 obj->Buffer.Length < sizeof(ACPI_GENERIC_ADDRESS) + 3)
 return (EINVAL);

    memcpy(&gas, obj->Buffer.Pointer + 3, sizeof(gas));
    if (gas.SpaceId != ACPI_ADR_SPACE_FIXED_HARDWARE)
 return (ERESTART);
    *vendor = gas.BitWidth;
    *class = gas.BitOffset;
    *address = gas.Address;
    *accsize = gas.AccessWidth;
    return (0);
}
