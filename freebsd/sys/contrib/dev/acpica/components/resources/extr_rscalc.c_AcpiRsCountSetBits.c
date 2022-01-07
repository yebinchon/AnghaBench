
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT16 ;


 int ACPI_FUNCTION_ENTRY () ;

__attribute__((used)) static UINT8
AcpiRsCountSetBits (
    UINT16 BitField)
{
    UINT8 BitsSet;


    ACPI_FUNCTION_ENTRY ();


    for (BitsSet = 0; BitField; BitsSet++)
    {


        BitField &= (UINT16) (BitField - 1);
    }

    return (BitsSet);
}
