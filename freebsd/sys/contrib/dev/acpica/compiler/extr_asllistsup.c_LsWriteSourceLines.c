
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT32 ;


 scalar_t__ ASL_FILE_ASM_INCLUDE_OUTPUT ;
 scalar_t__ ASL_FILE_C_INCLUDE_OUTPUT ;
 scalar_t__ ASL_FILE_C_SOURCE_OUTPUT ;
 scalar_t__ AslGbl_CurrentLine ;
 scalar_t__ AslGbl_HexBytesWereWritten ;
 scalar_t__ AslGbl_SourceLine ;
 scalar_t__ FALSE ;
 int FlPrintFile (scalar_t__,char*) ;
 int LsFlushListingBuffer (scalar_t__) ;
 scalar_t__ LsWriteOneSourceLine (scalar_t__) ;

void
LsWriteSourceLines (
    UINT32 ToLineNumber,
    UINT32 ToLogicalLineNumber,
    UINT32 FileId)
{



    if ((FileId == ASL_FILE_ASM_INCLUDE_OUTPUT) ||
        (FileId == ASL_FILE_C_INCLUDE_OUTPUT))
    {
        return;
    }

    AslGbl_CurrentLine = ToLogicalLineNumber;



    LsFlushListingBuffer (FileId);



    if (AslGbl_SourceLine < AslGbl_CurrentLine)
    {




        if (AslGbl_HexBytesWereWritten)
        {
            FlPrintFile (FileId, "\n");
            AslGbl_HexBytesWereWritten = FALSE;
        }

        if (FileId == ASL_FILE_C_SOURCE_OUTPUT)
        {
            FlPrintFile (FileId, "    /*\n");
        }



        while ((AslGbl_SourceLine < AslGbl_CurrentLine) &&
                LsWriteOneSourceLine (FileId))
        { ; }

        if (FileId == ASL_FILE_C_SOURCE_OUTPUT)
        {
            FlPrintFile (FileId, "     */");
        }

        FlPrintFile (FileId, "\n");
    }
}
