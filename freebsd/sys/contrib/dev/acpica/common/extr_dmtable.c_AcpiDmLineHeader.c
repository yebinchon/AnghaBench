
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;


 int AcpiOsPrintf (char*,char*,...) ;
 scalar_t__ AslGbl_DoTemplates ;
 int AslGbl_VerboseTemplates ;

void
AcpiDmLineHeader (
    UINT32 Offset,
    UINT32 ByteLength,
    char *Name)
{



    if (!Name)
    {
        Name = "";
    }

    if (AslGbl_DoTemplates && !AslGbl_VerboseTemplates)
    {
        if (ByteLength)
        {
            AcpiOsPrintf ("[%.4d] %34s : ", ByteLength, Name);
        }
        else
        {
            if (*Name)
            {
                AcpiOsPrintf ("%41s : ", Name);
            }
            else
            {
                AcpiOsPrintf ("%41s   ", Name);
            }
        }
    }
    else
    {
        if (ByteLength)
        {
            AcpiOsPrintf ("[%3.3Xh %4.4d% 4d] %28s : ",
                Offset, Offset, ByteLength, Name);
        }
        else
        {
            if (*Name)
            {
                AcpiOsPrintf ("%44s : ", Name);
            }
            else
            {
                AcpiOsPrintf ("%44s   ", Name);
            }
        }
    }
}
