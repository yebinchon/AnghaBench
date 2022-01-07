
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_17__ {int * RegionNode; int FieldType; scalar_t__ FieldFlags; int DataRegisterNode; int RegisterNode; } ;
struct TYPE_13__ {scalar_t__ Integer; int String; TYPE_4__* Arg; } ;
struct TYPE_14__ {TYPE_4__* Next; TYPE_1__ Value; } ;
struct TYPE_16__ {TYPE_2__ Common; } ;
struct TYPE_15__ {int ScopeInfo; } ;
typedef TYPE_3__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_PARSE_OBJECT ;
typedef int ACPI_NAMESPACE_NODE ;
typedef TYPE_5__ ACPI_CREATE_FIELD_INFO ;


 int ACPI_ERROR_NAMESPACE (int ,int ,int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_TRACE_PTR (int ,TYPE_4__*) ;
 int ACPI_IMODE_EXECUTE ;
 int ACPI_NS_SEARCH_PARENT ;
 int ACPI_TYPE_ANY ;
 int ACPI_TYPE_LOCAL_INDEX_FIELD ;
 int AcpiDsGetFieldNames (TYPE_5__*,TYPE_3__*,TYPE_4__*) ;
 int AcpiNsLookup (int ,int ,int ,int ,int ,TYPE_3__*,int *) ;
 int DsCreateIndexField ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiDsCreateIndexField (
    ACPI_PARSE_OBJECT *Op,
    ACPI_NAMESPACE_NODE *RegionNode,
    ACPI_WALK_STATE *WalkState)
{
    ACPI_STATUS Status;
    ACPI_PARSE_OBJECT *Arg;
    ACPI_CREATE_FIELD_INFO Info;


    ACPI_FUNCTION_TRACE_PTR (DsCreateIndexField, Op);




    Arg = Op->Common.Value.Arg;
    Status = AcpiNsLookup (WalkState->ScopeInfo, Arg->Common.Value.String,
        ACPI_TYPE_ANY, ACPI_IMODE_EXECUTE,
        ACPI_NS_SEARCH_PARENT, WalkState, &Info.RegisterNode);
    if (ACPI_FAILURE (Status))
    {
        ACPI_ERROR_NAMESPACE (WalkState->ScopeInfo,
            Arg->Common.Value.String, Status);
        return_ACPI_STATUS (Status);
    }



    Arg = Arg->Common.Next;
    Status = AcpiNsLookup (WalkState->ScopeInfo, Arg->Common.Value.String,
        ACPI_TYPE_ANY, ACPI_IMODE_EXECUTE,
        ACPI_NS_SEARCH_PARENT, WalkState, &Info.DataRegisterNode);
    if (ACPI_FAILURE (Status))
    {
        ACPI_ERROR_NAMESPACE (WalkState->ScopeInfo,
            Arg->Common.Value.String, Status);
        return_ACPI_STATUS (Status);
    }



    Arg = Arg->Common.Next;
    Info.FieldFlags = (UINT8) Arg->Common.Value.Integer;



    Info.FieldType = ACPI_TYPE_LOCAL_INDEX_FIELD;
    Info.RegionNode = RegionNode;

    Status = AcpiDsGetFieldNames (&Info, WalkState, Arg->Common.Next);
    return_ACPI_STATUS (Status);
}
