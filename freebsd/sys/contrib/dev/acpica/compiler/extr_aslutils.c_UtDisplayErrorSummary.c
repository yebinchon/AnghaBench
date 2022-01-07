
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT32 ;
typedef int BOOLEAN ;


 size_t ASL_ERROR ;
 scalar_t__ ASL_INPUT_TYPE_ASCII_DATA ;
 size_t ASL_OPTIMIZATION ;
 size_t ASL_REMARK ;
 size_t ASL_WARNING ;
 size_t ASL_WARNING2 ;
 size_t ASL_WARNING3 ;
 scalar_t__* AslGbl_ExceptionCount ;
 scalar_t__ AslGbl_FileType ;
 int AslGbl_IgnoreErrors ;
 scalar_t__ AslGbl_ParserErrorDetected ;
 scalar_t__ AslGbl_TotalFolds ;
 int FlPrintFile (int ,char*,...) ;

__attribute__((used)) static void
UtDisplayErrorSummary (
    UINT32 FileId)
{
    BOOLEAN ErrorDetected;


    ErrorDetected = AslGbl_ParserErrorDetected ||
        ((AslGbl_ExceptionCount[ASL_ERROR] > 0) && !AslGbl_IgnoreErrors);

    if (ErrorDetected)
    {
        FlPrintFile (FileId, "\nCompilation failed. ");
    }
    else
    {
        FlPrintFile (FileId, "\nCompilation successful. ");
    }

    FlPrintFile (FileId,
        "%u Errors, %u Warnings, %u Remarks",
        AslGbl_ExceptionCount[ASL_ERROR],
        AslGbl_ExceptionCount[ASL_WARNING] +
            AslGbl_ExceptionCount[ASL_WARNING2] +
            AslGbl_ExceptionCount[ASL_WARNING3],
        AslGbl_ExceptionCount[ASL_REMARK]);

    if (AslGbl_FileType != ASL_INPUT_TYPE_ASCII_DATA)
    {
        if (AslGbl_ParserErrorDetected)
        {
            FlPrintFile (FileId,
                "\nNo AML files were generated due to syntax error(s)\n");
            return;
        }
        else if (ErrorDetected)
        {
            FlPrintFile (FileId,
                "\nNo AML files were generated due to compiler error(s)\n");
            return;
        }

        FlPrintFile (FileId, ", %u Optimizations",
            AslGbl_ExceptionCount[ASL_OPTIMIZATION]);

        if (AslGbl_TotalFolds)
        {
            FlPrintFile (FileId, ", %u Constants Folded", AslGbl_TotalFolds);
        }
    }

    FlPrintFile (FileId, "\n");
}
