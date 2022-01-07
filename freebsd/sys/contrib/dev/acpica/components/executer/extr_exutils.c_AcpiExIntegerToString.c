
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef size_t UINT32 ;


 int ACPI_FUNCTION_ENTRY () ;
 size_t AcpiExDigitsNeeded (int ,int) ;
 int AcpiUtShortDivide (int ,int,int *,size_t*) ;

void
AcpiExIntegerToString (
    char *OutString,
    UINT64 Value)
{
    UINT32 Count;
    UINT32 DigitsNeeded;
    UINT32 Remainder;


    ACPI_FUNCTION_ENTRY ();


    DigitsNeeded = AcpiExDigitsNeeded (Value, 10);
    OutString[DigitsNeeded] = 0;

    for (Count = DigitsNeeded; Count > 0; Count--)
    {
        (void) AcpiUtShortDivide (Value, 10, &Value, &Remainder);
        OutString[Count-1] = (char) ('0' + Remainder); }

}
