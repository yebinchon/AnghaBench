
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* DeviceName; int Type; size_t Polarity; size_t Direction; struct TYPE_7__* Next; int TargetNode; int Op; int PinIndex; int PinNumber; } ;
struct TYPE_6__ {int Description; } ;
typedef TYPE_1__ AH_DEVICE_ID ;
typedef TYPE_2__ ACPI_GPIO_INFO ;


 int ACPI_FREE (char*) ;


 int ASL_FILE_MAP_OUTPUT ;
 TYPE_1__* AcpiAhMatchHardwareId (char*) ;
 TYPE_2__* AslGbl_GpioList ;
 char** DirectionDecode ;
 int FlPrintFile (int ,char*,...) ;
 char* MpGetConnectionInfo (int ,int ,int *,char**) ;
 char* MpGetDdnValue (char*) ;
 char* MpGetHidViaNamestring (char*) ;
 char* MpGetParentDeviceHid (int ,int *,char**) ;
 int MpXrefDevices (TYPE_2__*) ;
 char** PolarityDecode ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static void
MpEmitGpioInfo (
    void)
{
    ACPI_GPIO_INFO *Info;
    char *Type;
    char *PrevDeviceName = ((void*)0);
    const char *Direction;
    const char *Polarity;
    char *ParentPathname;
    const char *Description;
    char *HidString;
    const AH_DEVICE_ID *HidInfo;




    Info = AslGbl_GpioList;
    while (Info)
    {
        HidString = MpGetHidViaNamestring (Info->DeviceName);



        if (!PrevDeviceName ||
            strcmp (PrevDeviceName, Info->DeviceName))
        {
            FlPrintFile (ASL_FILE_MAP_OUTPUT,
                "\n\nGPIO Controller:  %-8s  %-28s",
                HidString, Info->DeviceName);

            HidInfo = AcpiAhMatchHardwareId (HidString);
            if (HidInfo)
            {
                FlPrintFile (ASL_FILE_MAP_OUTPUT, "  // %s",
                    HidInfo->Description);
            }

            FlPrintFile (ASL_FILE_MAP_OUTPUT,
                "\n\nPin   Type     Direction    Polarity"
                "    Dest _HID  Destination\n");
        }

        PrevDeviceName = Info->DeviceName;



        switch (Info->Type)
        {
        case 129:

            Type = "GpioInt";
            Direction = "-Interrupt-";
            Polarity = PolarityDecode[Info->Polarity];
            break;

        case 128:

            Type = "GpioIo ";
            Direction = DirectionDecode[Info->Direction];
            Polarity = "          ";
            break;

        default:
            continue;
        }



        FlPrintFile (ASL_FILE_MAP_OUTPUT, "%4.4X  %s  %s  %s  ",
            Info->PinNumber, Type, Direction, Polarity);

        ParentPathname = ((void*)0);
        HidString = MpGetConnectionInfo (Info->Op, Info->PinIndex,
            &Info->TargetNode, &ParentPathname);
        if (HidString)
        {




            FlPrintFile (ASL_FILE_MAP_OUTPUT, "%8s   %-28s",
                HidString, ParentPathname);

            MpXrefDevices (Info);
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
