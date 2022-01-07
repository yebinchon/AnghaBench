
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_9__ ;
typedef struct TYPE_30__ TYPE_8__ ;
typedef struct TYPE_29__ TYPE_7__ ;
typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_31__ {TYPE_8__* RegionNode; int FieldType; scalar_t__ Attribute; scalar_t__ FieldFlags; } ;
struct TYPE_30__ {TYPE_5__* Object; } ;
struct TYPE_23__ {scalar_t__ Integer; int Name; TYPE_7__* Arg; } ;
struct TYPE_24__ {TYPE_7__* Next; TYPE_1__ Value; } ;
struct TYPE_29__ {TYPE_2__ Common; } ;
struct TYPE_28__ {int ScopeInfo; } ;
struct TYPE_26__ {scalar_t__ SpaceId; int Length; } ;
struct TYPE_25__ {int InternalPccBuffer; } ;
struct TYPE_27__ {TYPE_4__ Region; TYPE_3__ Field; } ;
typedef TYPE_6__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_7__ ACPI_PARSE_OBJECT ;
typedef TYPE_8__ ACPI_NAMESPACE_NODE ;
typedef TYPE_9__ ACPI_CREATE_FIELD_INFO ;


 scalar_t__ ACPI_ADR_SPACE_PLATFORM_COMM ;
 int ACPI_ALLOCATE_ZEROED (int ) ;
 int ACPI_ERROR_NAMESPACE (int ,int ,int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_7__*) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_NS_SEARCH_PARENT ;
 int ACPI_TYPE_LOCAL_REGION_FIELD ;
 int ACPI_TYPE_REGION ;
 int AE_NO_MEMORY ;
 int AcpiDsCreateExternalRegion (int ,TYPE_7__*,int ,TYPE_6__*,TYPE_8__**) ;
 int AcpiDsGetFieldNames (TYPE_9__*,TYPE_6__*,TYPE_7__*) ;
 int AcpiNsLookup (int ,int ,int ,int ,int ,TYPE_6__*,TYPE_8__**) ;
 int DsCreateField ;
 int memset (TYPE_9__*,int ,int) ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsCreateField (
    ACPI_PARSE_OBJECT *Op,
    ACPI_NAMESPACE_NODE *RegionNode,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status;
    ACPI_PARSE_OBJECT *Arg;
    ACPI_CREATE_FIELD_INFO Info;


    ACPI_FUNCTION_TRACE_PTR (DsCreateField, Op);




    Arg = Op->Common.Value.Arg;

    if (!RegionNode)
    {
        Status = AcpiNsLookup (WalkState->ScopeInfo, Arg->Common.Value.Name,
            ACPI_TYPE_REGION, ACPI_IMODE_EXECUTE,
            ACPI_NS_SEARCH_PARENT, WalkState, &RegionNode);




        if (ACPI_FAILURE (Status))
        {
            ACPI_ERROR_NAMESPACE (WalkState->ScopeInfo,
                Arg->Common.Value.Name, Status);
            return_ACPI_STATUS (Status);
        }
    }

    memset (&Info, 0, sizeof (ACPI_CREATE_FIELD_INFO));



    Arg = Arg->Common.Next;
    Info.FieldFlags = (UINT8) Arg->Common.Value.Integer;
    Info.Attribute = 0;



    Info.FieldType = ACPI_TYPE_LOCAL_REGION_FIELD;
    Info.RegionNode = RegionNode;

    Status = AcpiDsGetFieldNames (&Info, WalkState, Arg->Common.Next);
    if (Info.RegionNode->Object->Region.SpaceId == ACPI_ADR_SPACE_PLATFORM_COMM &&
        !(RegionNode->Object->Field.InternalPccBuffer
        = ACPI_ALLOCATE_ZEROED(Info.RegionNode->Object->Region.Length)))
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }
    return_ACPI_STATUS (Status);
}
