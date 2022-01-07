
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT32 ;
struct TYPE_3__ {scalar_t__ LogicalLineNumber; struct TYPE_3__* Next; } ;


 scalar_t__ ASL_FILE_LISTING_OUTPUT ;
 int AePrintException (scalar_t__,TYPE_1__*,char*) ;
 TYPE_1__* AslGbl_NextError ;
 int FlPrintFile (scalar_t__,char*) ;

void
LsCheckException (
    UINT32 LineNumber,
    UINT32 FileId)
{

    if ((!AslGbl_NextError) ||
        (LineNumber < AslGbl_NextError->LogicalLineNumber ))
    {
        return;
    }



    if (FileId == ASL_FILE_LISTING_OUTPUT)
    {
        while (AslGbl_NextError &&
              (LineNumber >= AslGbl_NextError->LogicalLineNumber))
        {
            AePrintException (FileId, AslGbl_NextError, "\n[****iasl****]\n");
            AslGbl_NextError = AslGbl_NextError->Next;
        }

        FlPrintFile (FileId, "\n");
    }
}
