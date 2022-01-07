
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* Op; } ;
struct TYPE_6__ {char* String; int Integer; } ;
struct TYPE_7__ {int ParseOpcode; TYPE_1__ Value; TYPE_3__* Next; TYPE_3__* Child; } ;
struct TYPE_8__ {TYPE_2__ Asl; } ;
typedef TYPE_3__ ACPI_PARSE_OBJECT ;
typedef TYPE_4__ ACPI_NAMESPACE_NODE ;


 int ACPI_EISAID_STRING_SIZE ;
 int AcpiExEisaIdToString (char*,int ) ;



 char* UtLocalCacheCalloc (int ) ;

char *
MpGetHidFromParseTree (
    ACPI_NAMESPACE_NODE *HidNode)
{
    ACPI_PARSE_OBJECT *Op;
    ACPI_PARSE_OBJECT *Arg;
    char *HidString;


    Op = HidNode->Op;
    if (!Op)
    {


        return ("Unresolved Symbol - referenced but not defined in this table");
    }

    switch (Op->Asl.ParseOpcode)
    {
    case 129:

        Arg = Op->Asl.Child;
        Arg = Arg->Asl.Next;

        switch (Arg->Asl.ParseOpcode)
        {
        case 128:

            return (Arg->Asl.Value.String);

        case 130:



            HidString = UtLocalCacheCalloc (ACPI_EISAID_STRING_SIZE);
            AcpiExEisaIdToString (HidString, Arg->Asl.Value.Integer);
            return (HidString);

        default:

            return ("UNKNOWN");
        }

    default:
        return ("-No HID-");
    }
}
