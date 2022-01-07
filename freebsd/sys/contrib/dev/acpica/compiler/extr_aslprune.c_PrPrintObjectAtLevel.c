
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;


 int AcpiOsPrintf (char*,...) ;

__attribute__((used)) static void
PrPrintObjectAtLevel (
    UINT32 Level,
    const char *ObjectName)
{
    UINT32 i;


    for (i = 0; i < Level; i++)
    {
        AcpiOsPrintf ("  ");
    }

    AcpiOsPrintf ("[%s] at Level [%u]\n", ObjectName, Level);
}
