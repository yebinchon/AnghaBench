
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_14__ ;


typedef int UINT32 ;
struct TYPE_19__ {int const ParseOpcode; TYPE_6__* Child; } ;
struct TYPE_22__ {TYPE_3__ Asl; } ;
struct TYPE_18__ {int ExpectedBtypes; int Name; } ;
struct TYPE_21__ {TYPE_2__ Info; } ;
struct TYPE_20__ {TYPE_14__* Op; } ;
struct TYPE_17__ {int NameSeg; } ;
struct TYPE_16__ {TYPE_1__ Asl; } ;
typedef TYPE_4__ ASL_METHOD_INFO ;
typedef TYPE_5__ ACPI_PREDEFINED_INFO ;
typedef TYPE_6__ ACPI_PARSE_OBJECT ;




 int ACPI_NOT_PACKAGE_ELEMENT ;


 TYPE_5__* AcpiGbl_PredefinedMethods ;
 int ApCheckForPredefinedName (TYPE_14__*,int ) ;
 int ApCheckForUnexpectedReturnValue (TYPE_6__*,TYPE_4__*) ;
 int ApCheckObjectType (int ,TYPE_6__*,int ,int ) ;
 int ApCheckPackage (TYPE_6__*,TYPE_5__ const*) ;
 int AslGbl_AllExceptionsDisabled ;
 int FALSE ;







 int TRUE ;

void
ApCheckPredefinedReturnValue (
    ACPI_PARSE_OBJECT *Op,
    ASL_METHOD_INFO *MethodInfo)
{
    UINT32 Index;
    ACPI_PARSE_OBJECT *ReturnValueOp;
    const ACPI_PREDEFINED_INFO *ThisName;
    AslGbl_AllExceptionsDisabled = TRUE;
    Index = ApCheckForPredefinedName (MethodInfo->Op,
        MethodInfo->Op->Asl.NameSeg);
    AslGbl_AllExceptionsDisabled = FALSE;

    switch (Index)
    {
    case 137:



        ApCheckForUnexpectedReturnValue (Op, MethodInfo);
        return;

    case 136:
    case 135:
    case 138:


        return;

    default:

        ThisName = &AcpiGbl_PredefinedMethods[Index];
        if (!ThisName->Info.ExpectedBtypes)
        {


            ApCheckForUnexpectedReturnValue (Op, MethodInfo);
            return;
        }



        ReturnValueOp = Op->Asl.Child;
        switch (ReturnValueOp->Asl.ParseOpcode)
        {
        case 128:
        case 132:
        case 131:
        case 133:
        case 129:
        case 134:
        case 130:



            ApCheckObjectType (ThisName->Info.Name, ReturnValueOp,
                ThisName->Info.ExpectedBtypes, ACPI_NOT_PACKAGE_ELEMENT);



            if (ReturnValueOp->Asl.ParseOpcode == 130)
            {
                ApCheckPackage (ReturnValueOp, ThisName);
            }
            break;

        default:







            break;
        }
    }
}
