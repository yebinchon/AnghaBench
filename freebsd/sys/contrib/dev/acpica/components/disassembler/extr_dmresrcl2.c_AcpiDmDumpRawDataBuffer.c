
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
typedef int UINT32 ;


 int AcpiDmIndent (int) ;
 int AcpiOsPrintf (char*,...) ;

__attribute__((used)) static void
AcpiDmDumpRawDataBuffer (
    UINT8 *Buffer,
    UINT32 Length,
    UINT32 Level)
{
    UINT32 Index;
    UINT32 i;
    UINT32 j;


    if (!Length)
    {
        return;
    }

    AcpiOsPrintf ("RawDataBuffer (0x%.2X)  // Vendor Data", Length);

    AcpiOsPrintf ("\n");
    AcpiDmIndent (Level + 1);
    AcpiOsPrintf ("{\n");
    AcpiDmIndent (Level + 2);

    for (i = 0; i < Length;)
    {
        for (j = 0; j < 8; j++)
        {
            Index = i + j;
            if (Index >= Length)
            {
                goto Finish;
            }

            AcpiOsPrintf ("0x%2.2X", Buffer[Index]);
            if ((Index + 1) >= Length)
            {
                goto Finish;
            }

            AcpiOsPrintf (", ");
        }

        AcpiOsPrintf ("\n");
        AcpiDmIndent (Level + 2);

        i += 8;
    }

Finish:
    AcpiOsPrintf ("\n");
    AcpiDmIndent (Level + 1);
    AcpiOsPrintf ("}");
}
