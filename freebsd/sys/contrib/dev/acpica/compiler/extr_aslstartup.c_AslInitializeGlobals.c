
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t UINT32 ;
struct TYPE_2__ {int CommentType; int CaptureComments; int * ParsingParenBraceNode; int * LatestParseOp; scalar_t__ SpacesBefore; } ;


 size_t ASL_NUM_REPORT_LEVELS ;
 scalar_t__ AcpiGbl_CaptureComments ;
 TYPE_1__ AslGbl_CommentState ;
 scalar_t__ AslGbl_CurrentColumn ;
 int AslGbl_CurrentLineBuffer ;
 int AslGbl_CurrentLineNumber ;
 scalar_t__ AslGbl_CurrentLineOffset ;
 int * AslGbl_ErrorLog ;
 scalar_t__* AslGbl_ExceptionCount ;
 scalar_t__ AslGbl_FileType ;
 scalar_t__ AslGbl_InputByteCount ;
 scalar_t__ AslGbl_InputFieldCount ;
 int AslGbl_LineBufPtr ;
 int AslGbl_LogicalLineNumber ;
 int * AslGbl_NextError ;
 scalar_t__ AslGbl_NextEvent ;
 scalar_t__ AslGbl_NsLookupCount ;
 int * AslGbl_Signature ;
 scalar_t__ AslGbl_SyntaxError ;
 scalar_t__ AslGbl_TotalAllocated ;
 scalar_t__ AslGbl_TotalAllocations ;
 scalar_t__ AslGbl_TotalExecutableOpcodes ;
 scalar_t__ AslGbl_TotalFolds ;
 scalar_t__ AslGbl_TotalKeywords ;
 scalar_t__ AslGbl_TotalMethods ;
 scalar_t__ AslGbl_TotalNamedObjects ;
 scalar_t__ AslGbl_TotalParseNodes ;
 int TRUE ;

void
AslInitializeGlobals (
    void)
{
    UINT32 i;




    AslGbl_SyntaxError = 0;
    AslGbl_CurrentColumn = 0;
    AslGbl_CurrentLineNumber = 1;
    AslGbl_LogicalLineNumber = 1;
    AslGbl_CurrentLineOffset = 0;
    AslGbl_InputFieldCount = 0;
    AslGbl_InputByteCount = 0;
    AslGbl_NsLookupCount = 0;
    AslGbl_LineBufPtr = AslGbl_CurrentLineBuffer;

    AslGbl_ErrorLog = ((void*)0);
    AslGbl_NextError = ((void*)0);
    AslGbl_Signature = ((void*)0);
    AslGbl_FileType = 0;

    AslGbl_TotalExecutableOpcodes = 0;
    AslGbl_TotalNamedObjects = 0;
    AslGbl_TotalKeywords = 0;
    AslGbl_TotalParseNodes = 0;
    AslGbl_TotalMethods = 0;
    AslGbl_TotalAllocations = 0;
    AslGbl_TotalAllocated = 0;
    AslGbl_TotalFolds = 0;

    AslGbl_NextEvent = 0;
    for (i = 0; i < ASL_NUM_REPORT_LEVELS; i++)
    {
        AslGbl_ExceptionCount[i] = 0;
    }

    if (AcpiGbl_CaptureComments)
    {
        AslGbl_CommentState.SpacesBefore = 0;
        AslGbl_CommentState.CommentType = 1;
        AslGbl_CommentState.LatestParseOp = ((void*)0);
        AslGbl_CommentState.ParsingParenBraceNode = ((void*)0);
        AslGbl_CommentState.CaptureComments = TRUE;
    }
}
