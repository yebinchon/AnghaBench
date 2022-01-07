
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {char* DeviceName; struct TYPE_10__* Next; int TargetNode; int Op; int Speed; int Address; TYPE_2__* Resource; } ;
struct TYPE_9__ {int Description; } ;
struct TYPE_7__ {int Type; } ;
struct TYPE_8__ {TYPE_1__ CommonSerialBus; } ;
typedef TYPE_2__ AML_RESOURCE ;
typedef TYPE_3__ AH_DEVICE_ID ;
typedef TYPE_4__ ACPI_SERIAL_INFO ;


 int ACPI_FREE (char*) ;



 int ASL_FILE_MAP_OUTPUT ;
 TYPE_3__* AcpiAhMatchHardwareId (char*) ;
 TYPE_4__* AslGbl_SerialList ;
 int FlPrintFile (int ,char*,...) ;
 char* MpGetConnectionInfo (int ,int ,int *,char**) ;
 char* MpGetDdnValue (char*) ;
 char* MpGetHidViaNamestring (char*) ;
 char* MpGetParentDeviceHid (int ,int *,char**) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
MpEmitSerialInfo (
    void)
{
    ACPI_SERIAL_INFO *Info;
    char *Type;
    char *ParentPathname;
    char *PrevDeviceName = ((void*)0);
    char *HidString;
    const AH_DEVICE_ID *HidInfo;
    const char *Description;
    AML_RESOURCE *Resource;




    Info = AslGbl_SerialList;
    while (Info)
    {
        Resource = Info->Resource;
        switch (Resource->CommonSerialBus.Type)
        {
        case 130:
            Type = "I2C ";
            break;

        case 129:
            Type = "SPI ";
            break;

        case 128:
            Type = "UART";
            break;

        default:
            Type = "UNKN";
            break;
        }

        HidString = MpGetHidViaNamestring (Info->DeviceName);



        if (!PrevDeviceName ||
            strcmp (PrevDeviceName, Info->DeviceName))
        {
            FlPrintFile (ASL_FILE_MAP_OUTPUT, "\n\n%s Controller:  ",
                Type);
            FlPrintFile (ASL_FILE_MAP_OUTPUT, "%-8s  %-28s",
                HidString, Info->DeviceName);

            HidInfo = AcpiAhMatchHardwareId (HidString);
            if (HidInfo)
            {
                FlPrintFile (ASL_FILE_MAP_OUTPUT, "  // %s",
                    HidInfo->Description);
            }

            FlPrintFile (ASL_FILE_MAP_OUTPUT, "\n\n");
            FlPrintFile (ASL_FILE_MAP_OUTPUT,
                "Type  Address   Speed      Dest _HID  Destination\n");
        }

        PrevDeviceName = Info->DeviceName;

        FlPrintFile (ASL_FILE_MAP_OUTPUT, "%s   %4.4X    %8.8X    ",
            Type, Info->Address, Info->Speed);

        ParentPathname = ((void*)0);
        HidString = MpGetConnectionInfo (Info->Op, 0, &Info->TargetNode,
            &ParentPathname);
        if (HidString)
        {




            FlPrintFile (ASL_FILE_MAP_OUTPUT, "%8s   %-28s",
                HidString, ParentPathname);
        }
        else
        {


            HidString = MpGetParentDeviceHid (Info->Op, &Info->TargetNode,
                &ParentPathname);
            FlPrintFile (ASL_FILE_MAP_OUTPUT, "%8s   %-28s",
                HidString, ParentPathname);



            HidInfo = AcpiAhMatchHardwareId (HidString);
            if (HidInfo)
            {
                FlPrintFile (ASL_FILE_MAP_OUTPUT, "  // %s",
                    HidInfo->Description);
            }
            else if ((Description = MpGetDdnValue (ParentPathname)))
            {
                FlPrintFile (ASL_FILE_MAP_OUTPUT, "  // %s (_DDN)",
                    Description);
            }
        }

        FlPrintFile (ASL_FILE_MAP_OUTPUT, "\n");
        ACPI_FREE (ParentPathname);
        Info = Info->Next;
    }
}
