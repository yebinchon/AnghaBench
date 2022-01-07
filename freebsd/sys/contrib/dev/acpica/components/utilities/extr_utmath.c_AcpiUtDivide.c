
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Hi; scalar_t__ Lo; } ;
struct TYPE_4__ {scalar_t__ Full; TYPE_1__ Part; } ;
typedef TYPE_2__ UINT64_OVERLAY ;
typedef scalar_t__ UINT64 ;
typedef void* UINT32 ;
typedef scalar_t__ INT32 ;
typedef int ACPI_STATUS ;


 int ACPI_DIV_64_BY_32 (void*,scalar_t__,scalar_t__,scalar_t__,void*) ;
 int ACPI_ERROR (int ) ;
 int ACPI_FUNCTION_TRACE (int ) ;
 int ACPI_SHIFT_RIGHT_64 (scalar_t__,void*) ;
 int AE_AML_DIVIDE_BY_ZERO ;
 int AE_INFO ;
 int AE_OK ;
 int UtDivide ;
 int return_ACPI_STATUS (int ) ;

ACPI_STATUS
AcpiUtDivide (
    UINT64 InDividend,
    UINT64 InDivisor,
    UINT64 *OutQuotient,
    UINT64 *OutRemainder)
{
    UINT64_OVERLAY Dividend;
    UINT64_OVERLAY Divisor;
    UINT64_OVERLAY Quotient;
    UINT64_OVERLAY Remainder;
    UINT64_OVERLAY NormalizedDividend;
    UINT64_OVERLAY NormalizedDivisor;
    UINT32 Partial1;
    UINT64_OVERLAY Partial2;
    UINT64_OVERLAY Partial3;


    ACPI_FUNCTION_TRACE (UtDivide);




    if (InDivisor == 0)
    {
        ACPI_ERROR ((AE_INFO, "Divide by zero"));
        return_ACPI_STATUS (AE_AML_DIVIDE_BY_ZERO);
    }

    Divisor.Full = InDivisor;
    Dividend.Full = InDividend;
    if (Divisor.Part.Hi == 0)
    {




        Remainder.Part.Hi = 0;





        ACPI_DIV_64_BY_32 (0, Dividend.Part.Hi, Divisor.Part.Lo,
            Quotient.Part.Hi, Partial1);

        ACPI_DIV_64_BY_32 (Partial1, Dividend.Part.Lo, Divisor.Part.Lo,
            Quotient.Part.Lo, Remainder.Part.Lo);
    }

    else
    {




        Quotient.Part.Hi = 0;
        NormalizedDividend = Dividend;
        NormalizedDivisor = Divisor;



        do
        {
            ACPI_SHIFT_RIGHT_64 (
                NormalizedDivisor.Part.Hi, NormalizedDivisor.Part.Lo);
            ACPI_SHIFT_RIGHT_64 (
                NormalizedDividend.Part.Hi, NormalizedDividend.Part.Lo);

        } while (NormalizedDivisor.Part.Hi != 0);



        ACPI_DIV_64_BY_32 (
            NormalizedDividend.Part.Hi, NormalizedDividend.Part.Lo,
            NormalizedDivisor.Part.Lo, Quotient.Part.Lo, Partial1);





        Partial1 = Quotient.Part.Lo * Divisor.Part.Hi;
        Partial2.Full = (UINT64) Quotient.Part.Lo * Divisor.Part.Lo;
        Partial3.Full = (UINT64) Partial2.Part.Hi + Partial1;

        Remainder.Part.Hi = Partial3.Part.Lo;
        Remainder.Part.Lo = Partial2.Part.Lo;

        if (Partial3.Part.Hi == 0)
        {
            if (Partial3.Part.Lo >= Dividend.Part.Hi)
            {
                if (Partial3.Part.Lo == Dividend.Part.Hi)
                {
                    if (Partial2.Part.Lo > Dividend.Part.Lo)
                    {
                        Quotient.Part.Lo--;
                        Remainder.Full -= Divisor.Full;
                    }
                }
                else
                {
                    Quotient.Part.Lo--;
                    Remainder.Full -= Divisor.Full;
                }
            }

            Remainder.Full = Remainder.Full - Dividend.Full;
            Remainder.Part.Hi = (UINT32) -((INT32) Remainder.Part.Hi);
            Remainder.Part.Lo = (UINT32) -((INT32) Remainder.Part.Lo);

            if (Remainder.Part.Lo)
            {
                Remainder.Part.Hi--;
            }
        }
    }



    if (OutQuotient)
    {
        *OutQuotient = Quotient.Full;
    }
    if (OutRemainder)
    {
        *OutRemainder = Remainder.Full;
    }

    return_ACPI_STATUS (AE_OK);
}
