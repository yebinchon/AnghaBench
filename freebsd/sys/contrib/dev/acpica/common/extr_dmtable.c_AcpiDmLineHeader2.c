
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;


 int AcpiOsPrintf (char*,char*,char*,...) ;
 scalar_t__ AslGbl_DoTemplates ;
 int AslGbl_VerboseTemplates ;

void
AcpiDmLineHeader2 (
    UINT32 Offset,
    UINT32 ByteLength,
    char *Name,
    UINT32 Value)
{

    if (AslGbl_DoTemplates && !AslGbl_VerboseTemplates)
    {
        if (ByteLength)
        {
            AcpiOsPrintf ("[%.4d] %30s %3d : ",
                ByteLength, Name, Value);
        }
        else
        {
            AcpiOsPrintf ("%36s % 3d : ",
                Name, Value);
        }
    }
    else
    {
        if (ByteLength)
        {
            AcpiOsPrintf ("[%3.3Xh %4.4d %3d] %24s %3d : ",
                Offset, Offset, ByteLength, Name, Value);
        }
        else
        {
            AcpiOsPrintf ("[%3.3Xh %4.4d   ] %24s %3d : ",
                Offset, Offset, Name, Value);
        }
    }
}
