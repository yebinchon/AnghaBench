
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


typedef int UINT32 ;
struct TYPE_23__ {TYPE_4__* Object; } ;
struct TYPE_20__ {int Length; int Pointer; } ;
struct TYPE_19__ {int Value; } ;
struct TYPE_22__ {int Type; TYPE_6__ Buffer; TYPE_5__ Integer; } ;
struct TYPE_21__ {scalar_t__ AddressSpaceId; int Count; } ;
struct TYPE_17__ {TYPE_2__* RegionObj; } ;
struct TYPE_18__ {TYPE_3__ Field; } ;
struct TYPE_15__ {scalar_t__ SpaceId; } ;
struct TYPE_16__ {TYPE_1__ Region; } ;
struct TYPE_14__ {scalar_t__ Pointer; void* Length; } ;
typedef int ACPI_STATUS ;
typedef TYPE_7__ ACPI_REGION_WALK_INFO ;
typedef TYPE_8__ ACPI_OBJECT ;
typedef TYPE_9__ ACPI_NAMESPACE_NODE ;
typedef int ACPI_HANDLE ;
typedef TYPE_10__ ACPI_BUFFER ;


 void* ACPI_ALLOCATE_LOCAL_BUFFER ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (int ) ;
 int ACPI_FREE (scalar_t__) ;


 int AE_OK ;
 int AcpiEvaluateObject (int ,int *,int *,TYPE_10__*) ;
 int AcpiNsHandleToPathname (int ,TYPE_10__*,int ) ;
 TYPE_9__* AcpiNsValidateHandle (int ) ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiUtDumpBuffer (int ,int ,int,int ) ;
 int DB_BYTE_DISPLAY ;
 int DB_DISPLAY_DATA_ONLY ;
 int TRUE ;

__attribute__((used)) static ACPI_STATUS
AcpiDbWalkForFields (
    ACPI_HANDLE ObjHandle,
    UINT32 NestingLevel,
    void *Context,
    void **ReturnValue)
{
    ACPI_OBJECT *RetValue;
    ACPI_REGION_WALK_INFO *Info = (ACPI_REGION_WALK_INFO *) Context;
    ACPI_BUFFER Buffer;
    ACPI_STATUS Status;
    ACPI_NAMESPACE_NODE *Node = AcpiNsValidateHandle (ObjHandle);


    if (!Node)
    {
       return (AE_OK);
    }
    if (Node->Object->Field.RegionObj->Region.SpaceId != Info->AddressSpaceId)
    {
       return (AE_OK);
    }

    Info->Count++;



    Buffer.Length = ACPI_ALLOCATE_LOCAL_BUFFER;
    Status = AcpiNsHandleToPathname (ObjHandle, &Buffer, TRUE);
    if (ACPI_FAILURE (Status))
    {
        AcpiOsPrintf ("Could Not get pathname for object %p\n", ObjHandle);
        return (AE_OK);
    }

    AcpiOsPrintf ("%s ", (char *) Buffer.Pointer);
    ACPI_FREE (Buffer.Pointer);

    Buffer.Length = ACPI_ALLOCATE_LOCAL_BUFFER;
    AcpiEvaluateObject (ObjHandle, ((void*)0), ((void*)0), &Buffer);




    AcpiOsPrintf ("{");

    RetValue = (ACPI_OBJECT *) Buffer.Pointer;
    switch (RetValue->Type)
    {
        case 128:

            AcpiOsPrintf ("%8.8X%8.8X", ACPI_FORMAT_UINT64 (RetValue->Integer.Value));
            break;

        case 129:

            AcpiUtDumpBuffer (RetValue->Buffer.Pointer,
                RetValue->Buffer.Length, DB_DISPLAY_DATA_ONLY | DB_BYTE_DISPLAY, 0);
            break;

        default:

            break;
    }

    AcpiOsPrintf ("}\n");

    ACPI_FREE (Buffer.Pointer);
    return (AE_OK);
}
