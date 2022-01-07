
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT64 ;
typedef int UINT32 ;


 int ACPI_FUNCTION_TRACE (int ) ;
 int AcpiUtShortDivide (scalar_t__,int,scalar_t__*,int *) ;
 int ExDigitsNeeded ;
 int return_UINT32 (int) ;

__attribute__((used)) static UINT32
AcpiExDigitsNeeded (
    UINT64 Value,
    UINT32 Base)
{
    UINT32 NumDigits;
    UINT64 CurrentValue;


    ACPI_FUNCTION_TRACE (ExDigitsNeeded);




    if (Value == 0)
    {
        return_UINT32 (1);
    }

    CurrentValue = Value;
    NumDigits = 0;



    while (CurrentValue)
    {
        (void) AcpiUtShortDivide (CurrentValue, Base, &CurrentValue, ((void*)0));
        NumDigits++;
    }

    return_UINT32 (NumDigits);
}
