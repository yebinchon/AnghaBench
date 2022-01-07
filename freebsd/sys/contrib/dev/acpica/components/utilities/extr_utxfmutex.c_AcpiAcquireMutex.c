
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT16 ;
struct TYPE_4__ {int OsMutex; } ;
struct TYPE_5__ {TYPE_1__ Mutex; } ;
typedef int ACPI_STRING ;
typedef int ACPI_STATUS ;
typedef TYPE_2__ ACPI_OPERAND_OBJECT ;
typedef int ACPI_HANDLE ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int AcpiOsAcquireMutex (int ,int ) ;
 int AcpiUtGetMutexObject (int ,int ,TYPE_2__**) ;

ACPI_STATUS
AcpiAcquireMutex (
    ACPI_HANDLE Handle,
    ACPI_STRING Pathname,
    UINT16 Timeout)
{
    ACPI_STATUS Status;
    ACPI_OPERAND_OBJECT *MutexObj;




    Status = AcpiUtGetMutexObject (Handle, Pathname, &MutexObj);
    if (ACPI_FAILURE (Status))
    {
        return (Status);
    }



    Status = AcpiOsAcquireMutex (MutexObj->Mutex.OsMutex, Timeout);
    return (Status);
}
