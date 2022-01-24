#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* DeviceName; int Type; size_t Polarity; size_t Direction; struct TYPE_7__* Next; int /*<<< orphan*/  TargetNode; int /*<<< orphan*/  Op; int /*<<< orphan*/  PinIndex; int /*<<< orphan*/  PinNumber; } ;
struct TYPE_6__ {int /*<<< orphan*/  Description; } ;
typedef  TYPE_1__ AH_DEVICE_ID ;
typedef  TYPE_2__ ACPI_GPIO_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  AML_RESOURCE_GPIO_TYPE_INT 129 
#define  AML_RESOURCE_GPIO_TYPE_IO 128 
 int /*<<< orphan*/  ASL_FILE_MAP_OUTPUT ; 
 TYPE_1__* FUNC1 (char*) ; 
 TYPE_2__* AslGbl_GpioList ; 
 char** DirectionDecode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 char** PolarityDecode ; 
 scalar_t__ FUNC8 (char*,char*) ; 

__attribute__((used)) static void
FUNC9 (
    void)
{
    ACPI_GPIO_INFO          *Info;
    char                    *Type;
    char                    *PrevDeviceName = NULL;
    const char              *Direction;
    const char              *Polarity;
    char                    *ParentPathname;
    const char              *Description;
    char                    *HidString;
    const AH_DEVICE_ID      *HidInfo;


    /* Walk the GPIO descriptor list */

    Info = AslGbl_GpioList;
    while (Info)
    {
        HidString = FUNC5 (Info->DeviceName);

        /* Print header info for the controller itself */

        if (!PrevDeviceName ||
            FUNC8 (PrevDeviceName, Info->DeviceName))
        {
            FUNC2 (ASL_FILE_MAP_OUTPUT,
                "\n\nGPIO Controller:  %-8s  %-28s",
                HidString, Info->DeviceName);

            HidInfo = FUNC1 (HidString);
            if (HidInfo)
            {
                FUNC2 (ASL_FILE_MAP_OUTPUT, "  // %s",
                    HidInfo->Description);
            }

            FUNC2 (ASL_FILE_MAP_OUTPUT,
                "\n\nPin   Type     Direction    Polarity"
                "    Dest _HID  Destination\n");
        }

        PrevDeviceName = Info->DeviceName;

        /* Setup various strings based upon the type (GpioInt or GpioIo) */

        switch (Info->Type)
        {
        case AML_RESOURCE_GPIO_TYPE_INT:

            Type = "GpioInt";
            Direction = "-Interrupt-";
            Polarity = PolarityDecode[Info->Polarity];
            break;

        case AML_RESOURCE_GPIO_TYPE_IO:

            Type = "GpioIo ";
            Direction = DirectionDecode[Info->Direction];
            Polarity = "          ";
            break;

        default:
            continue;
        }

        /* Emit the GPIO info */

        FUNC2 (ASL_FILE_MAP_OUTPUT, "%4.4X  %s  %s  %s  ",
            Info->PinNumber, Type, Direction, Polarity);

        ParentPathname = NULL;
        HidString = FUNC3 (Info->Op, Info->PinIndex,
            &Info->TargetNode, &ParentPathname);
        if (HidString)
        {
            /*
             * This is a Connection() field
             * Attempt to find all references to the field.
             */
            FUNC2 (ASL_FILE_MAP_OUTPUT, "%8s   %-28s",
                HidString, ParentPathname);

            FUNC7 (Info);
        }
        else
        {
            /*
             * For Devices, attempt to get the _HID description string.
             * Failing that (many _HIDs are not recognized), attempt to
             * get the _DDN description string.
             */
            HidString = FUNC6 (Info->Op, &Info->TargetNode,
                &ParentPathname);

            FUNC2 (ASL_FILE_MAP_OUTPUT, "%8s   %-28s",
                HidString, ParentPathname);

            /* Get the _HID description or _DDN string */

            HidInfo = FUNC1 (HidString);
            if (HidInfo)
            {
                FUNC2 (ASL_FILE_MAP_OUTPUT, "  // %s",
                    HidInfo->Description);
            }
            else if ((Description = FUNC4 (ParentPathname)))
            {
                FUNC2 (ASL_FILE_MAP_OUTPUT, "  // %s (_DDN)",
                    Description);
            }
        }

        FUNC2 (ASL_FILE_MAP_OUTPUT, "\n");
        FUNC0 (ParentPathname);
        Info = Info->Next;
    }
}