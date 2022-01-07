
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_2__ {size_t StatusBitMask; size_t EnableBitMask; } ;
typedef int ACPI_STATUS ;


 int ACPI_DB_INTERRUPTS ;
 int ACPI_DEBUG_PRINT (int ) ;
 int ACPI_EVENT_TYPE_FIXED ;
 scalar_t__ ACPI_FAILURE (int ) ;
 int ACPI_FUNCTION_NAME (int ) ;
 size_t ACPI_INTERRUPT_NOT_HANDLED ;
 size_t ACPI_NUM_FIXED_EVENTS ;
 int ACPI_REGISTER_PM1_ENABLE ;
 int ACPI_REGISTER_PM1_STATUS ;
 size_t AcpiEvFixedEventDispatch (size_t) ;
 int * AcpiFixedEventCount ;
 TYPE_1__* AcpiGbl_FixedEventInfo ;
 int AcpiGbl_GlobalEventHandler (int ,int *,size_t,int ) ;
 int AcpiGbl_GlobalEventHandlerContext ;
 int AcpiHwRegisterRead (int ,size_t*) ;
 int EvFixedEventDetect ;

UINT32
AcpiEvFixedEventDetect (
    void)
{
    UINT32 IntStatus = ACPI_INTERRUPT_NOT_HANDLED;
    UINT32 FixedStatus;
    UINT32 FixedEnable;
    UINT32 i;
    ACPI_STATUS Status;


    ACPI_FUNCTION_NAME (EvFixedEventDetect);






    Status = AcpiHwRegisterRead (ACPI_REGISTER_PM1_STATUS, &FixedStatus);
    Status |= AcpiHwRegisterRead (ACPI_REGISTER_PM1_ENABLE, &FixedEnable);
    if (ACPI_FAILURE (Status))
    {
        return (IntStatus);
    }

    ACPI_DEBUG_PRINT ((ACPI_DB_INTERRUPTS,
        "Fixed Event Block: Enable %08X Status %08X\n",
        FixedEnable, FixedStatus));




    for (i = 0; i < ACPI_NUM_FIXED_EVENTS; i++)
    {


        if ((FixedStatus & AcpiGbl_FixedEventInfo[i].StatusBitMask) &&
            (FixedEnable & AcpiGbl_FixedEventInfo[i].EnableBitMask))
        {




            AcpiFixedEventCount[i]++;
            if (AcpiGbl_GlobalEventHandler)
            {
                AcpiGbl_GlobalEventHandler (ACPI_EVENT_TYPE_FIXED, ((void*)0),
                     i, AcpiGbl_GlobalEventHandlerContext);
            }

            IntStatus |= AcpiEvFixedEventDispatch (i);
        }
    }

    return (IntStatus);
}
