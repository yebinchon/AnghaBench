
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Lo; scalar_t__ Hi; } ;
struct TYPE_4__ {int Full; TYPE_1__ Part; } ;
typedef TYPE_2__ UINT64_OVERLAY ;
typedef int UINT64 ;
typedef int UINT32 ;
typedef int ACPI_STATUS ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_SHIFT_LEFT_64_BY_32 (scalar_t__,scalar_t__,int) ;
 int AE_OK ;
 int UtShortShiftLeft ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiUtShortShiftLeft (
    UINT64 Operand,
    UINT32 Count,
    UINT64 *OutResult)
{
    UINT64_OVERLAY OperandOvl;


    ACPI_FUNCTION_TRACE (UtShortShiftLeft);


    OperandOvl.Full = Operand;

    if ((Count & 63) >= 32)
    {
        OperandOvl.Part.Hi = OperandOvl.Part.Lo;
        OperandOvl.Part.Lo = 0;
        Count = (Count & 63) - 32;
    }
    ACPI_SHIFT_LEFT_64_BY_32 (OperandOvl.Part.Hi,
        OperandOvl.Part.Lo, Count);



    if (OutResult)
    {
        *OutResult = OperandOvl.Full;
    }

    return_ACPI_STATUS (AE_OK);
}
