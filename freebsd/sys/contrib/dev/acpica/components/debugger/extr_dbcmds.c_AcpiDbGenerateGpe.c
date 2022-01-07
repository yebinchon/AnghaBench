
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int ACPI_GPE_EVENT_INFO ;


 int ACPI_TO_POINTER (int) ;
 int * AcpiEvGetGpeEventInfo (int ,int) ;
 int AcpiEvGpeDispatch (int *,int *,int) ;
 int AcpiOsPrintf (char*) ;
 int strtoul (char*,int *,int ) ;

void
AcpiDbGenerateGpe (
    char *GpeArg,
    char *BlockArg)
{
    UINT32 BlockNumber = 0;
    UINT32 GpeNumber;
    ACPI_GPE_EVENT_INFO *GpeEventInfo;


    GpeNumber = strtoul (GpeArg, ((void*)0), 0);





    if (BlockArg)
    {
        BlockNumber = strtoul (BlockArg, ((void*)0), 0);
        if (BlockNumber == 1)
        {
            BlockNumber = 0;
        }
    }

    GpeEventInfo = AcpiEvGetGpeEventInfo (
        ACPI_TO_POINTER (BlockNumber), GpeNumber);
    if (!GpeEventInfo)
    {
        AcpiOsPrintf ("Invalid GPE\n");
        return;
    }

    (void) AcpiEvGpeDispatch (((void*)0), GpeEventInfo, GpeNumber);
}
