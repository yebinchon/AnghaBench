
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_4__ {int * Context; int * Handler; } ;
struct TYPE_3__ {int EnableRegisterId; } ;
typedef int ACPI_STATUS ;


 int ACPI_DISABLE_EVENT ;
 scalar_t__ ACPI_FAILURE (int ) ;
 size_t ACPI_NUM_FIXED_EVENTS ;
 int AE_OK ;
 TYPE_2__* AcpiGbl_FixedEventHandlers ;
 TYPE_1__* AcpiGbl_FixedEventInfo ;
 int AcpiWriteBitRegister (int,int ) ;

__attribute__((used)) static ACPI_STATUS
AcpiEvFixedEventInitialize (
    void)
{
    UINT32 i;
    ACPI_STATUS Status;






    for (i = 0; i < ACPI_NUM_FIXED_EVENTS; i++)
    {
        AcpiGbl_FixedEventHandlers[i].Handler = ((void*)0);
        AcpiGbl_FixedEventHandlers[i].Context = ((void*)0);



        if (AcpiGbl_FixedEventInfo[i].EnableRegisterId != 0xFF)
        {
            Status = AcpiWriteBitRegister (
                AcpiGbl_FixedEventInfo[i].EnableRegisterId,
                ACPI_DISABLE_EVENT);
            if (ACPI_FAILURE (Status))
            {
                return (Status);
            }
        }
    }

    return (AE_OK);
}
