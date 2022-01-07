
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int UINT16 ;
typedef scalar_t__ BOOLEAN ;


 int AcpiOsPrintf (char*,...) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;

void
AcpiDmBitList (
    UINT16 Mask)
{
    UINT32 i;
    BOOLEAN Previous = FALSE;




    AcpiOsPrintf ("{");



    for (i = 0; i < 16; i++)
    {


        if (Mask & 1)
        {
            if (Previous)
            {
                AcpiOsPrintf (",");
            }

            Previous = TRUE;
            AcpiOsPrintf ("%u", i);
        }

        Mask >>= 1;
    }



    AcpiOsPrintf ("}\n");
}
