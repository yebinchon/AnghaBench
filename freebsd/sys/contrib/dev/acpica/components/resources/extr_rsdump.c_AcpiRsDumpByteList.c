
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef size_t UINT16 ;


 int AcpiOsPrintf (char*,char*,size_t,int ) ;

__attribute__((used)) static void
AcpiRsDumpByteList (
    UINT16 Length,
    UINT8 *Data)
{
    UINT16 i;


    for (i = 0; i < Length; i++)
    {
        AcpiOsPrintf ("%25s%2.2X : %2.2X\n", "Byte", i, Data[i]);
    }
}
