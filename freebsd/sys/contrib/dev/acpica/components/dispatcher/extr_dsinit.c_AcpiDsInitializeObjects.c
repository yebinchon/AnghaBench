
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_7__ {int OpRegionCount; int MethodCount; int SerializedMethodCount; int NonSerialMethodCount; int SerialMethodCount; int DeviceCount; int ObjectCount; int TableIndex; int OwnerId; } ;
struct TYPE_6__ {int OemTableId; int Signature; } ;
typedef TYPE_1__ ACPI_TABLE_HEADER ;
typedef int ACPI_STATUS ;
typedef int ACPI_OWNER_ID ;
typedef int ACPI_NAMESPACE_NODE ;
typedef TYPE_2__ ACPI_INIT_WALK_INFO ;


 scalar_t__ ACPI_COMPARE_NAMESEG (int ,int ) ;
 int ACPI_DB_DISPATCH ;
 int ACPI_DB_INIT ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_DEBUG_PRINT_RAW (int ) ;
 int ACPI_EXCEPTION (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_NS_WALK_NO_UNLOCK ;
 int ACPI_SIG_DSDT ;
 int ACPI_TYPE_ANY ;
 int ACPI_UINT32_MAX ;
 int AE_INFO ;
 int AE_OK ;
 int AcpiDsInitOneObject ;
 int AcpiGetTableByIndex (int ,TYPE_1__**) ;
 int AcpiNsWalkNamespace (int ,int *,int ,int ,int ,int *,TYPE_2__*,int *) ;
 int AcpiTbGetOwnerId (int ,int *) ;
 int DsInitializeObjects ;
 int memset (TYPE_2__*,int ,int) ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsInitializeObjects (
    UINT32 TableIndex,
    ACPI_NAMESPACE_NODE *StartNode)
{
    ACPI_STATUS Status;
    ACPI_INIT_WALK_INFO Info;
    ACPI_TABLE_HEADER *Table;
    ACPI_OWNER_ID OwnerId;


    ACPI_FUNCTION_TRACE (DsInitializeObjects);


    Status = AcpiTbGetOwnerId (TableIndex, &OwnerId);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH,
        "**** Starting initialization of namespace objects ****\n"));



    memset (&Info, 0, sizeof (ACPI_INIT_WALK_INFO));

    Info.OwnerId = OwnerId;
    Info.TableIndex = TableIndex;







    Status = AcpiNsWalkNamespace (ACPI_TYPE_ANY, StartNode, ACPI_UINT32_MAX,
        ACPI_NS_WALK_NO_UNLOCK, AcpiDsInitOneObject, ((void*)0), &Info, ((void*)0));
    if (ACPI_FAILURE (Status))
    {
        ACPI_EXCEPTION ((AE_INFO, Status, "During WalkNamespace"));
    }

    Status = AcpiGetTableByIndex (TableIndex, &Table);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    if (ACPI_COMPARE_NAMESEG (Table->Signature, ACPI_SIG_DSDT))
    {
        ACPI_DEBUG_PRINT_RAW ((ACPI_DB_INIT,
            "\nACPI table initialization:\n"));
    }



    ACPI_DEBUG_PRINT_RAW ((ACPI_DB_INIT,
        "Table [%4.4s: %-8.8s] (id %.2X) - %4u Objects with %3u Devices, "
        "%3u Regions, %4u Methods (%u/%u/%u Serial/Non/Cvt)\n",
        Table->Signature, Table->OemTableId, OwnerId, Info.ObjectCount,
        Info.DeviceCount,Info.OpRegionCount, Info.MethodCount,
        Info.SerialMethodCount, Info.NonSerialMethodCount,
        Info.SerializedMethodCount));

    ACPI_DEBUG_PRINT ((ACPI_DB_DISPATCH, "%u Methods, %u Regions\n",
        Info.MethodCount, Info.OpRegionCount));

    return_ACPI_STATUS (AE_OK);
}
