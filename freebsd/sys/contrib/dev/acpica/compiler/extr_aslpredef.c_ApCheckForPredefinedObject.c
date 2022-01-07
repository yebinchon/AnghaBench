
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_17__ {scalar_t__ ParseOpcode; TYPE_2__* Child; } ;
struct TYPE_19__ {TYPE_4__ Asl; } ;
struct TYPE_16__ {int ExpectedBtypes; int Name; int ArgumentList; } ;
struct TYPE_18__ {TYPE_3__ Info; } ;
struct TYPE_14__ {TYPE_6__* Next; } ;
struct TYPE_15__ {TYPE_1__ Asl; } ;
typedef TYPE_5__ ACPI_PREDEFINED_INFO ;
typedef TYPE_6__ ACPI_PARSE_OBJECT ;




 int ACPI_NOT_PACKAGE_ELEMENT ;


 int ASL_ERROR ;
 int ASL_MSG_RESERVED_METHOD ;
 TYPE_5__* AcpiGbl_PredefinedMethods ;
 int ApCheckForPredefinedName (TYPE_6__*,char*) ;
 int ApCheckObjectType (int ,TYPE_6__*,int ,int ) ;
 int ApCheckPackage (TYPE_6__*,TYPE_5__ const*) ;
 int AslError (int ,int ,TYPE_6__*,char*) ;
 scalar_t__ METHOD_GET_ARG_COUNT (int ) ;
 scalar_t__ PARSEOP_PACKAGE ;

void
ApCheckForPredefinedObject (
    ACPI_PARSE_OBJECT *Op,
    char *Name)
{
    UINT32 Index;
    ACPI_PARSE_OBJECT *ObjectOp;
    const ACPI_PREDEFINED_INFO *ThisName;






    Index = ApCheckForPredefinedName (Op, Name);

    switch (Index)
    {
    case 129:
    case 128:
    case 131:


        return;

    case 130:






        AslError (ASL_ERROR, ASL_MSG_RESERVED_METHOD, Op,
            "with zero arguments");
        return;

    default:

        break;
    }







    ThisName = &AcpiGbl_PredefinedMethods[Index];
    if (METHOD_GET_ARG_COUNT (ThisName->Info.ArgumentList) > 0)
    {
        AslError (ASL_ERROR, ASL_MSG_RESERVED_METHOD, Op,
            "with arguments");
        return;
    }







    if (!ThisName->Info.ExpectedBtypes)
    {
        AslError (ASL_ERROR, ASL_MSG_RESERVED_METHOD, Op,
            "with zero arguments");
        return;
    }



    ObjectOp = Op->Asl.Child->Asl.Next;
    ApCheckObjectType (ThisName->Info.Name, Op->Asl.Child->Asl.Next,
        ThisName->Info.ExpectedBtypes, ACPI_NOT_PACKAGE_ELEMENT);



    if (ObjectOp->Asl.ParseOpcode == PARSEOP_PACKAGE)
    {
        ApCheckPackage (ObjectOp, ThisName);
    }
}
