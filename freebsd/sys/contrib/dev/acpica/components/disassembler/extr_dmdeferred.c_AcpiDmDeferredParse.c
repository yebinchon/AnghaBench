
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int UINT8 ;
typedef int UINT32 ;
struct TYPE_17__ {TYPE_5__* Arg; } ;
struct TYPE_18__ {int AmlOpcode; TYPE_5__* Parent; TYPE_2__ Value; TYPE_5__* Next; int AmlOpName; } ;
struct TYPE_16__ {int Name; } ;
struct TYPE_20__ {TYPE_3__ Common; TYPE_1__ Named; } ;
struct TYPE_19__ {int ParseFlags; } ;
typedef TYPE_4__ ACPI_WALK_STATE ;
typedef int ACPI_STATUS ;
typedef TYPE_5__ ACPI_PARSE_OBJECT ;


 int ACPI_DB_INFO ;
 int ACPI_DEBUG_PRINT (int ) ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FREE (TYPE_5__*) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_IMODE_LOAD_PASS1 ;
 int ACPI_PARSE_DELETE_TREE ;
 int ACPI_PARSE_DISASSEMBLE ;
 int AE_NO_MEMORY ;
 int AE_OK ;



 TYPE_4__* AcpiDsCreateWalkState (int ,TYPE_5__*,int *,int *) ;
 int AcpiDsInitAmlWalk (TYPE_4__*,TYPE_5__*,int *,int *,int ,int *,int ) ;
 TYPE_5__* AcpiPsGetDepthNext (TYPE_5__*,TYPE_5__*) ;
 int AcpiPsParseAml (TYPE_4__*) ;
 int DmDeferredParse ;
 int return_ACPI_STATUS (int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiDmDeferredParse (
    ACPI_PARSE_OBJECT *Op,
    UINT8 *Aml,
    UINT32 AmlLength)
{
    ACPI_WALK_STATE *WalkState;
    ACPI_STATUS Status;
    ACPI_PARSE_OBJECT *SearchOp;
    ACPI_PARSE_OBJECT *StartOp;
    ACPI_PARSE_OBJECT *NewRootOp;
    ACPI_PARSE_OBJECT *ExtraOp;


    ACPI_FUNCTION_TRACE (DmDeferredParse);


    if (!Aml || !AmlLength)
    {
        return_ACPI_STATUS (AE_OK);
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_INFO, "Parsing deferred opcode %s [%4.4s]\n",
        Op->Common.AmlOpName, (char *) &Op->Named.Name));



    WalkState = AcpiDsCreateWalkState (0, Op, ((void*)0), ((void*)0));
    if (!WalkState)
    {
        return_ACPI_STATUS (AE_NO_MEMORY);
    }

    Status = AcpiDsInitAmlWalk (WalkState, Op, ((void*)0), Aml,
        AmlLength, ((void*)0), ACPI_IMODE_LOAD_PASS1);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS (Status);
    }



    WalkState->ParseFlags &= ~ACPI_PARSE_DELETE_TREE;
    WalkState->ParseFlags |= ACPI_PARSE_DISASSEMBLE;
    Status = AcpiPsParseAml (WalkState);
    if (ACPI_FAILURE (Status))
    {
        return_ACPI_STATUS(Status);
    }

    StartOp = (Op->Common.Value.Arg)->Common.Next;
    SearchOp = StartOp;
    while (SearchOp)
    {
        SearchOp = AcpiPsGetDepthNext (StartOp, SearchOp);
    }





    switch (Op->Common.AmlOpcode)
    {
    case 130:
    case 129:
    case 128:

        switch (Op->Common.AmlOpcode)
        {
        case 129:

            ExtraOp = Op->Common.Value.Arg;
            NewRootOp = ExtraOp->Common.Next;
            ACPI_FREE (ExtraOp);
            break;

        case 128:
        case 130:
        default:

            NewRootOp = Op->Common.Value.Arg;
            break;
        }

        Op->Common.Value.Arg = NewRootOp->Common.Value.Arg;



        StartOp = Op;
        SearchOp = StartOp;
        while (SearchOp)
        {
            if (SearchOp->Common.Parent == NewRootOp)
            {
                SearchOp->Common.Parent = Op;
            }

            SearchOp = AcpiPsGetDepthNext (StartOp, SearchOp);
        }

        ACPI_FREE (NewRootOp);
        break;

    default:

        break;
    }

    return_ACPI_STATUS (AE_OK);
}
