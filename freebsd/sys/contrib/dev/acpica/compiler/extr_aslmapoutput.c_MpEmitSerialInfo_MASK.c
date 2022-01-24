#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* DeviceName; struct TYPE_10__* Next; int /*<<< orphan*/  TargetNode; int /*<<< orphan*/  Op; int /*<<< orphan*/  Speed; int /*<<< orphan*/  Address; TYPE_2__* Resource; } ;
struct TYPE_9__ {int /*<<< orphan*/  Description; } ;
struct TYPE_7__ {int Type; } ;
struct TYPE_8__ {TYPE_1__ CommonSerialBus; } ;
typedef  TYPE_2__ AML_RESOURCE ;
typedef  TYPE_3__ AH_DEVICE_ID ;
typedef  TYPE_4__ ACPI_SERIAL_INFO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  AML_RESOURCE_I2C_SERIALBUSTYPE 130 
#define  AML_RESOURCE_SPI_SERIALBUSTYPE 129 
#define  AML_RESOURCE_UART_SERIALBUSTYPE 128 
 int /*<<< orphan*/  ASL_FILE_MAP_OUTPUT ; 
 TYPE_3__* FUNC1 (char*) ; 
 TYPE_4__* AslGbl_SerialList ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 
 char* FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char**) ; 
 scalar_t__ FUNC7 (char*,char*) ; 

__attribute__((used)) static void
FUNC8 (
    void)
{
    ACPI_SERIAL_INFO        *Info;
    char                    *Type;
    char                    *ParentPathname;
    char                    *PrevDeviceName = NULL;
    char                    *HidString;
    const AH_DEVICE_ID      *HidInfo;
    const char              *Description;
    AML_RESOURCE            *Resource;


    /* Walk the constructed serial descriptor list */

    Info = AslGbl_SerialList;
    while (Info)
    {
        Resource = Info->Resource;
        switch (Resource->CommonSerialBus.Type)
        {
        case AML_RESOURCE_I2C_SERIALBUSTYPE:
            Type = "I2C ";
            break;

        case AML_RESOURCE_SPI_SERIALBUSTYPE:
            Type = "SPI ";
            break;

        case AML_RESOURCE_UART_SERIALBUSTYPE:
            Type = "UART";
            break;

        default:
            Type = "UNKN";
            break;
        }

        HidString = FUNC5 (Info->DeviceName);

        /* Print header info for the controller itself */

        if (!PrevDeviceName ||
            FUNC7 (PrevDeviceName, Info->DeviceName))
        {
            FUNC2 (ASL_FILE_MAP_OUTPUT, "\n\n%s Controller:  ",
                Type);
            FUNC2 (ASL_FILE_MAP_OUTPUT, "%-8s  %-28s",
                HidString, Info->DeviceName);

            HidInfo = FUNC1 (HidString);
            if (HidInfo)
            {
                FUNC2 (ASL_FILE_MAP_OUTPUT, "  // %s",
                    HidInfo->Description);
            }

            FUNC2 (ASL_FILE_MAP_OUTPUT, "\n\n");
            FUNC2 (ASL_FILE_MAP_OUTPUT,
                "Type  Address   Speed      Dest _HID  Destination\n");
        }

        PrevDeviceName = Info->DeviceName;

        FUNC2 (ASL_FILE_MAP_OUTPUT, "%s   %4.4X    %8.8X    ",
            Type, Info->Address, Info->Speed);

        ParentPathname = NULL;
        HidString = FUNC3 (Info->Op, 0, &Info->TargetNode,
            &ParentPathname);
        if (HidString)
        {
            /*
             * This is a Connection() field
             * Attempt to find all references to the field.
             */
            FUNC2 (ASL_FILE_MAP_OUTPUT, "%8s   %-28s",
                HidString, ParentPathname);
        }
        else
        {
            /* Normal resource template */

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