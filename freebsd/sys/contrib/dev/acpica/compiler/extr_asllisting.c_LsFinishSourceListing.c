
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;


 scalar_t__ ASL_FILE_ASM_INCLUDE_OUTPUT ;
 scalar_t__ ASL_FILE_C_INCLUDE_OUTPUT ;
 scalar_t__ ASL_FILE_C_SOURCE_OUTPUT ;
 scalar_t__ ASL_FILE_LISTING_OUTPUT ;
 int AePrintErrorLog (scalar_t__) ;
 scalar_t__ AslGbl_CurrentAmlOffset ;
 int FlPrintFile (scalar_t__,char*) ;
 int LsFlushListingBuffer (scalar_t__) ;
 scalar_t__ LsWriteOneSourceLine (scalar_t__) ;
 int TRUE ;
 int UtDisplayOneSummary (scalar_t__,int ) ;

__attribute__((used)) static void
LsFinishSourceListing (
    UINT32 FileId)
{

    if ((FileId == ASL_FILE_ASM_INCLUDE_OUTPUT) ||
        (FileId == ASL_FILE_C_INCLUDE_OUTPUT))
    {
        return;
    }

    LsFlushListingBuffer (FileId);
    AslGbl_CurrentAmlOffset = 0;



    if (FileId == ASL_FILE_C_SOURCE_OUTPUT)
    {
        FlPrintFile (FileId, "    /*\n");
    }

    while (LsWriteOneSourceLine (FileId))
    { ; }

    if (FileId == ASL_FILE_C_SOURCE_OUTPUT)
    {
        FlPrintFile (FileId, "\n     */\n    };\n");
    }

    FlPrintFile (FileId, "\n");

    if (FileId == ASL_FILE_LISTING_OUTPUT)
    {


        FlPrintFile (FileId, "\n\nSummary of errors and warnings\n\n");
        AePrintErrorLog (FileId);
        FlPrintFile (FileId, "\n");
        UtDisplayOneSummary (FileId, TRUE);
        FlPrintFile (FileId, "\n");
    }
}
