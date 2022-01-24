#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  size_t UINT32 ;
struct TYPE_20__ {int Length; char* Pointer; } ;
struct TYPE_19__ {scalar_t__ Node; size_t RegisterCount; int GpeCount; struct TYPE_19__* Next; int /*<<< orphan*/  BlockBaseNumber; TYPE_7__* EventInfo; TYPE_5__* RegisterInfo; } ;
struct TYPE_14__ {TYPE_6__* NotifyList; } ;
struct TYPE_18__ {int Flags; TYPE_3__ Dispatch; int /*<<< orphan*/  RuntimeCount; } ;
struct TYPE_17__ {struct TYPE_17__* Next; } ;
struct TYPE_13__ {int /*<<< orphan*/  Address; } ;
struct TYPE_12__ {int /*<<< orphan*/  Address; } ;
struct TYPE_16__ {TYPE_2__ EnableAddress; TYPE_1__ StatusAddress; int /*<<< orphan*/  EnableForWake; int /*<<< orphan*/  EnableForRun; int /*<<< orphan*/  BaseGpeNumber; } ;
struct TYPE_15__ {struct TYPE_15__* Next; int /*<<< orphan*/  InterruptNumber; TYPE_8__* GpeBlockListHead; } ;
typedef  int /*<<< orphan*/  Buffer ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;
typedef  TYPE_4__ ACPI_GPE_XRUPT_INFO ;
typedef  TYPE_5__ ACPI_GPE_REGISTER_INFO ;
typedef  TYPE_6__ ACPI_GPE_NOTIFY_INFO ;
typedef  TYPE_7__ ACPI_GPE_EVENT_INFO ;
typedef  TYPE_8__ ACPI_GPE_BLOCK_INFO ;
typedef  TYPE_9__ ACPI_BUFFER ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ACPI_FULL_PATHNAME_NO_TRAILING ; 
 int ACPI_GPE_CAN_WAKE ; 
#define  ACPI_GPE_DISPATCH_HANDLER 132 
#define  ACPI_GPE_DISPATCH_METHOD 131 
#define  ACPI_GPE_DISPATCH_NONE 130 
#define  ACPI_GPE_DISPATCH_NOTIFY 129 
#define  ACPI_GPE_DISPATCH_RAW_HANDLER 128 
 int FUNC2 (int) ; 
 int ACPI_GPE_LEVEL_TRIGGERED ; 
 int ACPI_GPE_REGISTER_WIDTH ; 
 scalar_t__ AcpiGbl_FadtGpeDevice ; 
 TYPE_4__* AcpiGbl_GpeXruptListHead ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

void
FUNC5 (
    void)
{
    ACPI_GPE_BLOCK_INFO     *GpeBlock;
    ACPI_GPE_XRUPT_INFO     *GpeXruptInfo;
    ACPI_GPE_EVENT_INFO     *GpeEventInfo;
    ACPI_GPE_REGISTER_INFO  *GpeRegisterInfo;
    char                    *GpeType;
    ACPI_GPE_NOTIFY_INFO    *Notify;
    UINT32                  GpeIndex;
    UINT32                  Block = 0;
    UINT32                  i;
    UINT32                  j;
    UINT32                  Count;
    char                    Buffer[80];
    ACPI_BUFFER             RetBuf;
    ACPI_STATUS             Status;


    RetBuf.Length = sizeof (Buffer);
    RetBuf.Pointer = Buffer;

    Block = 0;

    /* Walk the GPE lists */

    GpeXruptInfo = AcpiGbl_GpeXruptListHead;
    while (GpeXruptInfo)
    {
        GpeBlock = GpeXruptInfo->GpeBlockListHead;
        while (GpeBlock)
        {
            Status = FUNC3 (GpeBlock->Node,
                ACPI_FULL_PATHNAME_NO_TRAILING, &RetBuf);
            if (FUNC0 (Status))
            {
                FUNC4 ("Could not convert name to pathname\n");
            }

            if (GpeBlock->Node == AcpiGbl_FadtGpeDevice)
            {
                GpeType = "FADT-defined GPE block";
            }
            else
            {
                GpeType = "GPE Block Device";
            }

            FUNC4 (
                "\nBlock %u - Info %p  DeviceNode %p [%s] - %s\n",
                Block, GpeBlock, GpeBlock->Node, Buffer, GpeType);

            FUNC4 (
                "    Registers:    %u (%u GPEs)\n",
                GpeBlock->RegisterCount, GpeBlock->GpeCount);

            FUNC4 (
                "    GPE range:    0x%X to 0x%X on interrupt %u\n",
                GpeBlock->BlockBaseNumber,
                GpeBlock->BlockBaseNumber + (GpeBlock->GpeCount - 1),
                GpeXruptInfo->InterruptNumber);

            FUNC4 (
                "    RegisterInfo: %p  Status %8.8X%8.8X Enable %8.8X%8.8X\n",
                GpeBlock->RegisterInfo,
                FUNC1 (
                    GpeBlock->RegisterInfo->StatusAddress.Address),
                FUNC1 (
                    GpeBlock->RegisterInfo->EnableAddress.Address));

            FUNC4 ("    EventInfo:    %p\n", GpeBlock->EventInfo);

            /* Examine each GPE Register within the block */

            for (i = 0; i < GpeBlock->RegisterCount; i++)
            {
                GpeRegisterInfo = &GpeBlock->RegisterInfo[i];

                FUNC4 (
                    "    Reg %u: (GPE %.2X-%.2X)  "
                    "RunEnable %2.2X WakeEnable %2.2X"
                    " Status %8.8X%8.8X Enable %8.8X%8.8X\n",
                    i, GpeRegisterInfo->BaseGpeNumber,
                    GpeRegisterInfo->BaseGpeNumber +
                        (ACPI_GPE_REGISTER_WIDTH - 1),
                    GpeRegisterInfo->EnableForRun,
                    GpeRegisterInfo->EnableForWake,
                    FUNC1 (
                        GpeRegisterInfo->StatusAddress.Address),
                    FUNC1 (
                        GpeRegisterInfo->EnableAddress.Address));

                /* Now look at the individual GPEs in this byte register */

                for (j = 0; j < ACPI_GPE_REGISTER_WIDTH; j++)
                {
                    GpeIndex = (i * ACPI_GPE_REGISTER_WIDTH) + j;
                    GpeEventInfo = &GpeBlock->EventInfo[GpeIndex];

                    if (FUNC2 (GpeEventInfo->Flags) ==
                        ACPI_GPE_DISPATCH_NONE)
                    {
                        /* This GPE is not used (no method or handler), ignore it */

                        continue;
                    }

                    FUNC4 (
                        "        GPE %.2X: %p  RunRefs %2.2X Flags %2.2X (",
                        GpeBlock->BlockBaseNumber + GpeIndex, GpeEventInfo,
                        GpeEventInfo->RuntimeCount, GpeEventInfo->Flags);

                    /* Decode the flags byte */

                    if (GpeEventInfo->Flags & ACPI_GPE_LEVEL_TRIGGERED)
                    {
                        FUNC4 ("Level, ");
                    }
                    else
                    {
                        FUNC4 ("Edge,  ");
                    }

                    if (GpeEventInfo->Flags & ACPI_GPE_CAN_WAKE)
                    {
                        FUNC4 ("CanWake, ");
                    }
                    else
                    {
                        FUNC4 ("RunOnly, ");
                    }

                    switch (FUNC2 (GpeEventInfo->Flags))
                    {
                    case ACPI_GPE_DISPATCH_NONE:

                        FUNC4 ("NotUsed");
                        break;

                    case ACPI_GPE_DISPATCH_METHOD:

                        FUNC4 ("Method");
                        break;

                    case ACPI_GPE_DISPATCH_HANDLER:

                        FUNC4 ("Handler");
                        break;

                    case ACPI_GPE_DISPATCH_NOTIFY:

                        Count = 0;
                        Notify = GpeEventInfo->Dispatch.NotifyList;
                        while (Notify)
                        {
                            Count++;
                            Notify = Notify->Next;
                        }

                        FUNC4 ("Implicit Notify on %u devices",
                            Count);
                        break;

                    case ACPI_GPE_DISPATCH_RAW_HANDLER:

                        FUNC4 ("RawHandler");
                        break;

                    default:

                        FUNC4 ("UNKNOWN: %X",
                            FUNC2 (GpeEventInfo->Flags));
                        break;
                    }

                    FUNC4 (")\n");
                }
            }

            Block++;
            GpeBlock = GpeBlock->Next;
        }

        GpeXruptInfo = GpeXruptInfo->Next;
    }
}