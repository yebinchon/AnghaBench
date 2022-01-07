
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT8 ;
typedef size_t UINT32 ;


 size_t ACPI_BUFFER_BYTES_PER_LINE ;
 int AcpiDmIndent (size_t) ;
 int AcpiOsPrintf (char*,...) ;
 scalar_t__ isprint (scalar_t__) ;

void
AcpiDmDisasmByteList (
    UINT32 Level,
    UINT8 *ByteData,
    UINT32 ByteCount)
{
    UINT32 i;
    UINT32 j;
    UINT32 CurrentIndex;
    UINT8 BufChar;


    if (!ByteCount)
    {
        return;
    }

    for (i = 0; i < ByteCount; i += ACPI_BUFFER_BYTES_PER_LINE)
    {


        AcpiDmIndent (Level);
        if (ByteCount > ACPI_BUFFER_BYTES_PER_LINE)
        {
            AcpiOsPrintf ("/* %04X */ ", i);
        }



        for (j = 0; j < ACPI_BUFFER_BYTES_PER_LINE; j++)
        {
            CurrentIndex = i + j;
            if (CurrentIndex >= ByteCount)
            {


                AcpiOsPrintf ("      ");
                continue;
            }

            AcpiOsPrintf (" 0x%2.2X", ByteData[CurrentIndex]);



            if (CurrentIndex < (ByteCount - 1))
            {
                AcpiOsPrintf (",");
            }
            else
            {
                AcpiOsPrintf (" ");
            }
        }



        AcpiOsPrintf ("  // ");
        for (j = 0; j < ACPI_BUFFER_BYTES_PER_LINE; j++)
        {
            CurrentIndex = i + j;
            if (CurrentIndex >= ByteCount)
            {
                break;
            }

            BufChar = ByteData[CurrentIndex];
            if (isprint (BufChar))
            {
                AcpiOsPrintf ("%c", BufChar);
            }
            else
            {
                AcpiOsPrintf (".");
            }
        }



        AcpiOsPrintf ("\n");
    }
}
