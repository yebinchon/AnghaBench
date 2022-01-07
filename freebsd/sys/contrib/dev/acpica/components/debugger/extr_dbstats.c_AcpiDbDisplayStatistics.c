
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_2__ {int UseCount; } ;
typedef int ACPI_UPDATE_STATE ;
typedef int ACPI_THREAD_STATE ;
typedef int ACPI_STATUS ;
typedef int ACPI_SCOPE_STATE ;
typedef int ACPI_RESULT_VALUES ;
typedef int ACPI_PSCOPE_STATE ;
typedef int ACPI_PKG_STATE ;
typedef int ACPI_PARSE_OBJ_NAMED ;
typedef int ACPI_PARSE_OBJ_COMMON ;
typedef int ACPI_PARSE_OBJ_ASL ;
typedef int ACPI_OPERAND_OBJECT ;
typedef int ACPI_OBJECT_THERMAL_ZONE ;
typedef int ACPI_OBJECT_STRING ;
typedef int ACPI_OBJECT_REGION_FIELD ;
typedef int ACPI_OBJECT_REGION ;
typedef int ACPI_OBJECT_REFERENCE ;
typedef int ACPI_OBJECT_PROCESSOR ;
typedef int ACPI_OBJECT_POWER_RESOURCE ;
typedef int ACPI_OBJECT_PACKAGE ;
typedef int ACPI_OBJECT_NOTIFY_HANDLER ;
typedef int ACPI_OBJECT_MUTEX ;
typedef int ACPI_OBJECT_METHOD ;
typedef int ACPI_OBJECT_INTEGER ;
typedef int ACPI_OBJECT_INDEX_FIELD ;
typedef int ACPI_OBJECT_EXTRA ;
typedef int ACPI_OBJECT_EVENT ;
typedef int ACPI_OBJECT_DEVICE ;
typedef int ACPI_OBJECT_DATA ;
typedef int ACPI_OBJECT_COMMON ;
typedef int ACPI_OBJECT_BUFFER_FIELD ;
typedef int ACPI_OBJECT_BUFFER ;
typedef int ACPI_OBJECT_BANK_FIELD ;
typedef int ACPI_OBJECT_ADDR_HANDLER ;
typedef int ACPI_OBJECT ;
typedef int ACPI_NOTIFY_INFO ;
typedef int ACPI_NAMESPACE_NODE ;
typedef int ACPI_GENERIC_STATE ;
typedef int ACPI_CONTROL_STATE ;
typedef int ACPI_COMMON_STATE ;


 int ACPI_NUM_MUTEX ;
 int ACPI_PTR_DIFF (int ,int ) ;
 int ACPI_TYPE_NOT_FOUND ;
 int ACPI_TYPE_NS_NODE_MAX ;
 int AE_OK ;
 int AcpiDbCountNamespaceObjects () ;
 int AcpiDbListInfo (int ) ;
 int AcpiDbMatchArgument (char*,int ) ;
 int AcpiDbStatTypes ;
 int AcpiGbl_DeepestNesting ;
 int AcpiGbl_EntryStackPointer ;
 int AcpiGbl_GlobalList ;
 int AcpiGbl_LowestStackPointer ;
 TYPE_1__* AcpiGbl_MutexInfo ;
 int * AcpiGbl_NodeTypeCount ;
 int AcpiGbl_NodeTypeCountMisc ;
 int AcpiGbl_NsLookupCount ;
 int AcpiGbl_NsNodeList ;
 int AcpiGbl_NumNodes ;
 int AcpiGbl_NumObjects ;
 int * AcpiGbl_ObjTypeCount ;
 int AcpiGbl_ObjTypeCountMisc ;
 int AcpiGbl_OperandCache ;
 int AcpiGbl_PsFindCount ;
 int AcpiGbl_PsNodeCache ;
 int AcpiGbl_PsNodeExtCache ;
 int AcpiGbl_StateCache ;
 int AcpiOsPrintf (char*,...) ;
 int AcpiUtDumpAllocationInfo () ;
 int AcpiUtGetMutexName (int) ;
 int AcpiUtGetTypeName (int) ;
 int AcpiUtStrupr (char*) ;
ACPI_STATUS
AcpiDbDisplayStatistics (
    char *TypeArg)
{
    UINT32 i;
    UINT32 Temp;


    AcpiUtStrupr (TypeArg);
    Temp = AcpiDbMatchArgument (TypeArg, AcpiDbStatTypes);
    if (Temp == ACPI_TYPE_NOT_FOUND)
    {
        AcpiOsPrintf ("Invalid or unsupported argument\n");
        return (AE_OK);
    }


    switch (Temp)
    {
    case 134:




        break;

    case 128:

        AcpiOsPrintf ("ACPI Table Information (not implemented):\n\n");
        break;

    case 131:

        AcpiDbCountNamespaceObjects ();

        AcpiOsPrintf ("\nObjects defined in the current namespace:\n\n");

        AcpiOsPrintf ("%16.16s %10.10s %10.10s\n",
            "ACPI_TYPE", "NODES", "OBJECTS");

        for (i = 0; i < ACPI_TYPE_NS_NODE_MAX; i++)
        {
            AcpiOsPrintf ("%16.16s %10u %10u\n", AcpiUtGetTypeName (i),
                AcpiGbl_NodeTypeCount [i], AcpiGbl_ObjTypeCount [i]);
        }

        AcpiOsPrintf ("%16.16s %10u %10u\n", "Misc/Unknown",
            AcpiGbl_NodeTypeCountMisc, AcpiGbl_ObjTypeCountMisc);

        AcpiOsPrintf ("%16.16s %10u %10u\n", "TOTALS:",
            AcpiGbl_NumNodes, AcpiGbl_NumObjects);
        break;

    case 133:
        break;

    case 132:

        AcpiOsPrintf ("\nMiscellaneous Statistics:\n\n");
        AcpiOsPrintf ("%-28s:       %7u\n", "Calls to AcpiPsFind",
            AcpiGbl_PsFindCount);
        AcpiOsPrintf ("%-28s:       %7u\n", "Calls to AcpiNsLookup",
            AcpiGbl_NsLookupCount);

        AcpiOsPrintf ("\nMutex usage:\n\n");
        for (i = 0; i < ACPI_NUM_MUTEX; i++)
        {
            AcpiOsPrintf ("%-28s:       %7u\n",
                AcpiUtGetMutexName (i), AcpiGbl_MutexInfo[i].UseCount);
        }
        break;

    case 130:

        AcpiOsPrintf ("\nInternal object sizes:\n\n");

        AcpiOsPrintf ("Common           %3d\n", (UINT32) sizeof (ACPI_OBJECT_COMMON));
        AcpiOsPrintf ("Number           %3d\n", (UINT32) sizeof (ACPI_OBJECT_INTEGER));
        AcpiOsPrintf ("String           %3d\n", (UINT32) sizeof (ACPI_OBJECT_STRING));
        AcpiOsPrintf ("Buffer           %3d\n", (UINT32) sizeof (ACPI_OBJECT_BUFFER));
        AcpiOsPrintf ("Package          %3d\n", (UINT32) sizeof (ACPI_OBJECT_PACKAGE));
        AcpiOsPrintf ("BufferField      %3d\n", (UINT32) sizeof (ACPI_OBJECT_BUFFER_FIELD));
        AcpiOsPrintf ("Device           %3d\n", (UINT32) sizeof (ACPI_OBJECT_DEVICE));
        AcpiOsPrintf ("Event            %3d\n", (UINT32) sizeof (ACPI_OBJECT_EVENT));
        AcpiOsPrintf ("Method           %3d\n", (UINT32) sizeof (ACPI_OBJECT_METHOD));
        AcpiOsPrintf ("Mutex            %3d\n", (UINT32) sizeof (ACPI_OBJECT_MUTEX));
        AcpiOsPrintf ("Region           %3d\n", (UINT32) sizeof (ACPI_OBJECT_REGION));
        AcpiOsPrintf ("PowerResource    %3d\n", (UINT32) sizeof (ACPI_OBJECT_POWER_RESOURCE));
        AcpiOsPrintf ("Processor        %3d\n", (UINT32) sizeof (ACPI_OBJECT_PROCESSOR));
        AcpiOsPrintf ("ThermalZone      %3d\n", (UINT32) sizeof (ACPI_OBJECT_THERMAL_ZONE));
        AcpiOsPrintf ("RegionField      %3d\n", (UINT32) sizeof (ACPI_OBJECT_REGION_FIELD));
        AcpiOsPrintf ("BankField        %3d\n", (UINT32) sizeof (ACPI_OBJECT_BANK_FIELD));
        AcpiOsPrintf ("IndexField       %3d\n", (UINT32) sizeof (ACPI_OBJECT_INDEX_FIELD));
        AcpiOsPrintf ("Reference        %3d\n", (UINT32) sizeof (ACPI_OBJECT_REFERENCE));
        AcpiOsPrintf ("Notify           %3d\n", (UINT32) sizeof (ACPI_OBJECT_NOTIFY_HANDLER));
        AcpiOsPrintf ("AddressSpace     %3d\n", (UINT32) sizeof (ACPI_OBJECT_ADDR_HANDLER));
        AcpiOsPrintf ("Extra            %3d\n", (UINT32) sizeof (ACPI_OBJECT_EXTRA));
        AcpiOsPrintf ("Data             %3d\n", (UINT32) sizeof (ACPI_OBJECT_DATA));

        AcpiOsPrintf ("\n");

        AcpiOsPrintf ("ParseObject      %3d\n", (UINT32) sizeof (ACPI_PARSE_OBJ_COMMON));
        AcpiOsPrintf ("ParseObjectNamed %3d\n", (UINT32) sizeof (ACPI_PARSE_OBJ_NAMED));
        AcpiOsPrintf ("ParseObjectAsl   %3d\n", (UINT32) sizeof (ACPI_PARSE_OBJ_ASL));
        AcpiOsPrintf ("OperandObject    %3d\n", (UINT32) sizeof (ACPI_OPERAND_OBJECT));
        AcpiOsPrintf ("NamespaceNode    %3d\n", (UINT32) sizeof (ACPI_NAMESPACE_NODE));
        AcpiOsPrintf ("AcpiObject       %3d\n", (UINT32) sizeof (ACPI_OBJECT));

        AcpiOsPrintf ("\n");

        AcpiOsPrintf ("Generic State    %3d\n", (UINT32) sizeof (ACPI_GENERIC_STATE));
        AcpiOsPrintf ("Common State     %3d\n", (UINT32) sizeof (ACPI_COMMON_STATE));
        AcpiOsPrintf ("Control State    %3d\n", (UINT32) sizeof (ACPI_CONTROL_STATE));
        AcpiOsPrintf ("Update State     %3d\n", (UINT32) sizeof (ACPI_UPDATE_STATE));
        AcpiOsPrintf ("Scope State      %3d\n", (UINT32) sizeof (ACPI_SCOPE_STATE));
        AcpiOsPrintf ("Parse Scope      %3d\n", (UINT32) sizeof (ACPI_PSCOPE_STATE));
        AcpiOsPrintf ("Package State    %3d\n", (UINT32) sizeof (ACPI_PKG_STATE));
        AcpiOsPrintf ("Thread State     %3d\n", (UINT32) sizeof (ACPI_THREAD_STATE));
        AcpiOsPrintf ("Result Values    %3d\n", (UINT32) sizeof (ACPI_RESULT_VALUES));
        AcpiOsPrintf ("Notify Info      %3d\n", (UINT32) sizeof (ACPI_NOTIFY_INFO));
        break;

    case 129:
        break;

    default:

        break;
    }

    AcpiOsPrintf ("\n");
    return (AE_OK);
}
