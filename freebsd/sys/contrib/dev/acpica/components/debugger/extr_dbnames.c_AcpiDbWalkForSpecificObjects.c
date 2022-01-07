
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_6__ {scalar_t__ Pointer; int Length; } ;
struct TYPE_5__ {int Count; } ;
typedef TYPE_1__ ACPI_WALK_INFO ;
typedef int ACPI_STATUS ;
typedef char* ACPI_HANDLE ;
typedef TYPE_2__ ACPI_BUFFER ;


 int ACPI_ALLOCATE_LOCAL_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (scalar_t__) ;
 int AE_OK ;
 int AcpiNsDumpOneObject (char*,int ,TYPE_1__*,int *) ;
 int AcpiNsHandleToPathname (char*,TYPE_2__*,int ) ;
 int AcpiOsPrintf (char*,char*) ;
 int TRUE ;

__attribute__((used)) static ACPI_STATUS
AcpiDbWalkForSpecificObjects (
    ACPI_HANDLE ObjHandle,
    UINT32 NestingLevel,
    void *Context,
    void **ReturnValue)
{
    ACPI_WALK_INFO *Info = (ACPI_WALK_INFO *) Context;
    ACPI_BUFFER Buffer;
    ACPI_STATUS Status;


    Info->Count++;



    Buffer.Length = ACPI_ALLOCATE_LOCAL_BUFFER;
    Status = AcpiNsHandleToPathname (ObjHandle, &Buffer, TRUE);
    if (ACPI_FAILURE (Status))
    {
        AcpiOsPrintf ("Could Not get pathname for object %p\n", ObjHandle);
        return (AE_OK);
    }

    AcpiOsPrintf ("%32s", (char *) Buffer.Pointer);
    ACPI_FREE (Buffer.Pointer);



    (void) AcpiNsDumpOneObject (ObjHandle, NestingLevel, Info, ((void*)0));
    return (AE_OK);
}
