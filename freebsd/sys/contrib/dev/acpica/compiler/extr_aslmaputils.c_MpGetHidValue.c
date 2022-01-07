
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int Type; TYPE_2__* Object; } ;
struct TYPE_11__ {int Value; } ;
struct TYPE_9__ {char* Pointer; } ;
struct TYPE_10__ {TYPE_3__ Integer; TYPE_1__ String; } ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_NAMESPACE_NODE ;


 int ACPI_EISAID_STRING_SIZE ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_NS_NO_UPSEARCH ;



 int ASL_FILE_MAP_OUTPUT ;
 int AcpiExEisaIdToString (char*,int ) ;
 int AcpiNsGetNode (TYPE_4__*,int ,int ,TYPE_4__**) ;
 int FlPrintFile (int ,char*,int) ;
 int METHOD_NAME__HID ;
 char* MpGetHidFromParseTree (TYPE_4__*) ;
 char* UtLocalCacheCalloc (int ) ;

char *
MpGetHidValue (
    ACPI_NAMESPACE_NODE *DeviceNode)
{
    ACPI_NAMESPACE_NODE *HidNode;
    char *HidString;
    ACPI_STATUS Status;


    Status = AcpiNsGetNode (DeviceNode, METHOD_NAME__HID,
        ACPI_NS_NO_UPSEARCH, &HidNode);
    if (ACPI_FAILURE (Status))
    {
        goto ErrorExit;
    }



    if (!HidNode->Object)
    {
        return (MpGetHidFromParseTree (HidNode));
    }



    switch (HidNode->Type)
    {
    case 128:

        return (HidNode->Object->String.Pointer);

    case 130:



        HidString = UtLocalCacheCalloc (ACPI_EISAID_STRING_SIZE);
        AcpiExEisaIdToString (HidString, HidNode->Object->Integer.Value);
        return (HidString);

    case 129:

        return ("-Method-");

    default:

        FlPrintFile (ASL_FILE_MAP_OUTPUT, "BAD HID TYPE: %u", HidNode->Type);
        break;
    }


ErrorExit:
    return ("-No HID-");
}
