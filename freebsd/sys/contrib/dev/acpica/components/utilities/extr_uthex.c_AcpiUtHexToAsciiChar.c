
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT64 ;
typedef int UINT32 ;


 char* AcpiGbl_HexToAscii ;
 int AcpiUtShortShiftRight (int,int ,int*) ;

char
AcpiUtHexToAsciiChar (
    UINT64 Integer,
    UINT32 Position)
{
    UINT64 Index;

    AcpiUtShortShiftRight (Integer, Position, &Index);
    return (AcpiGbl_HexToAscii[Index & 0xF]);
}
