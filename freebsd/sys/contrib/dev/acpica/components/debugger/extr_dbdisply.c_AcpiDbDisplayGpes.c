
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_20__ {int Length; char* Pointer; } ;
struct TYPE_19__ {scalar_t__ Node; size_t RegisterCount; int GpeCount; struct TYPE_19__* Next; int BlockBaseNumber; TYPE_7__* EventInfo; TYPE_5__* RegisterInfo; } ;
struct TYPE_14__ {TYPE_6__* NotifyList; } ;
struct TYPE_18__ {int Flags; TYPE_3__ Dispatch; int RuntimeCount; } ;
struct TYPE_17__ {struct TYPE_17__* Next; } ;
struct TYPE_13__ {int Address; } ;
struct TYPE_12__ {int Address; } ;
struct TYPE_16__ {TYPE_2__ EnableAddress; TYPE_1__ StatusAddress; int EnableForWake; int EnableForRun; int BaseGpeNumber; } ;
struct TYPE_15__ {struct TYPE_15__* Next; int InterruptNumber; TYPE_8__* GpeBlockListHead; } ;
typedef int Buffer ;
typedef int ACPI_STATUS ;
typedef TYPE_4__ ACPI_GPE_XRUPT_INFO ;
typedef TYPE_5__ ACPI_GPE_REGISTER_INFO ;
typedef TYPE_6__ ACPI_GPE_NOTIFY_INFO ;
typedef TYPE_7__ ACPI_GPE_EVENT_INFO ;
typedef TYPE_8__ ACPI_GPE_BLOCK_INFO ;
typedef TYPE_9__ ACPI_BUFFER ;


 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FORMAT_UINT64 (int ) ;
 int ACPI_FULL_PATHNAME_NO_TRAILING ;
 int ACPI_GPE_CAN_WAKE ;





 int ACPI_GPE_DISPATCH_TYPE (int) ;
 int ACPI_GPE_LEVEL_TRIGGERED ;
 int ACPI_GPE_REGISTER_WIDTH ;
 scalar_t__ AcpiGbl_FadtGpeDevice ;
 TYPE_4__* AcpiGbl_GpeXruptListHead ;
 int AcpiGetName (scalar_t__,int ,TYPE_9__*) ;
 int AcpiOsPrintf (char*,...) ;

void
AcpiDbDisplayGpes (
    void)
{
    ACPI_GPE_BLOCK_INFO *GpeBlock;
    ACPI_GPE_XRUPT_INFO *GpeXruptInfo;
    ACPI_GPE_EVENT_INFO *GpeEventInfo;
    ACPI_GPE_REGISTER_INFO *GpeRegisterInfo;
    char *GpeType;
    ACPI_GPE_NOTIFY_INFO *Notify;
    UINT32 GpeIndex;
    UINT32 Block = 0;
    UINT32 i;
    UINT32 j;
    UINT32 Count;
    char Buffer[80];
    ACPI_BUFFER RetBuf;
    ACPI_STATUS Status;


    RetBuf.Length = sizeof (Buffer);
    RetBuf.Pointer = Buffer;

    Block = 0;



    GpeXruptInfo = AcpiGbl_GpeXruptListHead;
    while (GpeXruptInfo)
    {
        GpeBlock = GpeXruptInfo->GpeBlockListHead;
        while (GpeBlock)
        {
            Status = AcpiGetName (GpeBlock->Node,
                ACPI_FULL_PATHNAME_NO_TRAILING, &RetBuf);
            if (ACPI_FAILURE (Status))
            {
                AcpiOsPrintf ("Could not convert name to pathname\n");
            }

            if (GpeBlock->Node == AcpiGbl_FadtGpeDevice)
            {
                GpeType = "FADT-defined GPE block";
            }
            else
            {
                GpeType = "GPE Block Device";
            }

            AcpiOsPrintf (
                "\nBlock %u - Info %p  DeviceNode %p [%s] - %s\n",
                Block, GpeBlock, GpeBlock->Node, Buffer, GpeType);

            AcpiOsPrintf (
                "    Registers:    %u (%u GPEs)\n",
                GpeBlock->RegisterCount, GpeBlock->GpeCount);

            AcpiOsPrintf (
                "    GPE range:    0x%X to 0x%X on interrupt %u\n",
                GpeBlock->BlockBaseNumber,
                GpeBlock->BlockBaseNumber + (GpeBlock->GpeCount - 1),
                GpeXruptInfo->InterruptNumber);

            AcpiOsPrintf (
                "    RegisterInfo: %p  Status %8.8X%8.8X Enable %8.8X%8.8X\n",
                GpeBlock->RegisterInfo,
                ACPI_FORMAT_UINT64 (
                    GpeBlock->RegisterInfo->StatusAddress.Address),
                ACPI_FORMAT_UINT64 (
                    GpeBlock->RegisterInfo->EnableAddress.Address));

            AcpiOsPrintf ("    EventInfo:    %p\n", GpeBlock->EventInfo);



            for (i = 0; i < GpeBlock->RegisterCount; i++)
            {
                GpeRegisterInfo = &GpeBlock->RegisterInfo[i];

                AcpiOsPrintf (
                    "    Reg %u: (GPE %.2X-%.2X)  "
                    "RunEnable %2.2X WakeEnable %2.2X"
                    " Status %8.8X%8.8X Enable %8.8X%8.8X\n",
                    i, GpeRegisterInfo->BaseGpeNumber,
                    GpeRegisterInfo->BaseGpeNumber +
                        (ACPI_GPE_REGISTER_WIDTH - 1),
                    GpeRegisterInfo->EnableForRun,
                    GpeRegisterInfo->EnableForWake,
                    ACPI_FORMAT_UINT64 (
                        GpeRegisterInfo->StatusAddress.Address),
                    ACPI_FORMAT_UINT64 (
                        GpeRegisterInfo->EnableAddress.Address));



                for (j = 0; j < ACPI_GPE_REGISTER_WIDTH; j++)
                {
                    GpeIndex = (i * ACPI_GPE_REGISTER_WIDTH) + j;
                    GpeEventInfo = &GpeBlock->EventInfo[GpeIndex];

                    if (ACPI_GPE_DISPATCH_TYPE (GpeEventInfo->Flags) ==
                        130)
                    {


                        continue;
                    }

                    AcpiOsPrintf (
                        "        GPE %.2X: %p  RunRefs %2.2X Flags %2.2X (",
                        GpeBlock->BlockBaseNumber + GpeIndex, GpeEventInfo,
                        GpeEventInfo->RuntimeCount, GpeEventInfo->Flags);



                    if (GpeEventInfo->Flags & ACPI_GPE_LEVEL_TRIGGERED)
                    {
                        AcpiOsPrintf ("Level, ");
                    }
                    else
                    {
                        AcpiOsPrintf ("Edge,  ");
                    }

                    if (GpeEventInfo->Flags & ACPI_GPE_CAN_WAKE)
                    {
                        AcpiOsPrintf ("CanWake, ");
                    }
                    else
                    {
                        AcpiOsPrintf ("RunOnly, ");
                    }

                    switch (ACPI_GPE_DISPATCH_TYPE (GpeEventInfo->Flags))
                    {
                    case 130:

                        AcpiOsPrintf ("NotUsed");
                        break;

                    case 131:

                        AcpiOsPrintf ("Method");
                        break;

                    case 132:

                        AcpiOsPrintf ("Handler");
                        break;

                    case 129:

                        Count = 0;
                        Notify = GpeEventInfo->Dispatch.NotifyList;
                        while (Notify)
                        {
                            Count++;
                            Notify = Notify->Next;
                        }

                        AcpiOsPrintf ("Implicit Notify on %u devices",
                            Count);
                        break;

                    case 128:

                        AcpiOsPrintf ("RawHandler");
                        break;

                    default:

                        AcpiOsPrintf ("UNKNOWN: %X",
                            ACPI_GPE_DISPATCH_TYPE (GpeEventInfo->Flags));
                        break;
                    }

                    AcpiOsPrintf (")\n");
                }
            }

            Block++;
            GpeBlock = GpeBlock->Next;
        }

        GpeXruptInfo = GpeXruptInfo->Next;
    }
}
