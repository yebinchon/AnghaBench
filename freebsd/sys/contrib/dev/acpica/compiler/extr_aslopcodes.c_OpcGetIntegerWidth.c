
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT8 ;
struct TYPE_5__ {scalar_t__ Integer; } ;
struct TYPE_6__ {TYPE_1__ Value; TYPE_3__* Next; TYPE_3__* Child; } ;
struct TYPE_7__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;


 int AcpiUtSetIntegerWidth (scalar_t__) ;
 scalar_t__ AslGbl_RevisionOverride ;

void
OpcGetIntegerWidth (
    ACPI_PARSE_OBJECT *Op)
{
    ACPI_PARSE_OBJECT *Child;


    if (!Op)
    {
        return;
    }

    if (AslGbl_RevisionOverride)
    {
        AcpiUtSetIntegerWidth (AslGbl_RevisionOverride);
    }
    else
    {
        Child = Op->Asl.Child;
        Child = Child->Asl.Next;
        Child = Child->Asl.Next;



        AcpiUtSetIntegerWidth ((UINT8) Child->Asl.Value.Integer);
    }
}
