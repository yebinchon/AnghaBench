
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT32 ;
struct TYPE_9__ {scalar_t__ StartTime; scalar_t__ EndTime; } ;
struct TYPE_8__ {scalar_t__ Handle; } ;
struct TYPE_7__ {struct TYPE_7__* Next; TYPE_1__* Files; scalar_t__ ParserErrorDetected; } ;
struct TYPE_6__ {int Filename; } ;
typedef int BOOLEAN ;
typedef TYPE_2__ ASL_GLOBAL_FILE_NODE ;


 int ASL_DEBUG_OUTPUT ;
 size_t ASL_ERROR ;
 size_t ASL_FILE_AML_OUTPUT ;
 size_t ASL_FILE_INPUT ;
 int ASL_FILE_STDERR ;
 int ASL_FILE_STDOUT ;
 int ASL_MAX_ERROR_COUNT ;
 int AePrintErrorLog (int ) ;
 int AslCheckForErrorExit () ;
 scalar_t__ AslGbl_CompileTimesFlag ;
 scalar_t__ AslGbl_DebugFlag ;
 int AslGbl_DoAslConversion ;
 TYPE_5__* AslGbl_Events ;
 int* AslGbl_ExceptionCount ;
 TYPE_4__* AslGbl_Files ;
 TYPE_2__* AslGbl_FilesList ;
 int AslGbl_IgnoreErrors ;
 size_t AslGbl_NamespaceEvent ;
 int AslGbl_NsLookupCount ;
 scalar_t__ AslGbl_ParserErrorDetected ;
 scalar_t__ AslGbl_PreprocessOnly ;
 int AslGbl_TotalAllocated ;
 int AslGbl_TotalAllocations ;
 int AslGbl_TotalFolds ;
 int AslGbl_TotalMethods ;
 int AslGbl_TotalNamedObjects ;
 int AslGbl_TotalParseNodes ;
 int CmDumpAllEvents () ;
 int CmFinishFiles (int ) ;
 int DbgPrint (int ,char*,...) ;
 int FALSE ;

 int FlSwitchFileSet (int ) ;


 int TRUE ;
 int UtDeleteLocalCaches () ;
 int UtDisplaySummary (int ) ;
 int printf (char*,...) ;

int
CmCleanupAndExit (
    void)
{
    int Status = 0;
    BOOLEAN DeleteAmlFile = FALSE;
    ASL_GLOBAL_FILE_NODE *CurrentFileNode = AslGbl_FilesList;




    (void) AslCheckForErrorExit ();

    AePrintErrorLog (ASL_FILE_STDERR);
    if (AslGbl_DebugFlag)
    {


        AePrintErrorLog (ASL_FILE_STDOUT);
    }



    CmDumpAllEvents ();

    if (AslGbl_CompileTimesFlag)
    {
        printf ("\nMiscellaneous compile statistics\n\n");
        printf ("%11u : %s\n", AslGbl_TotalParseNodes, "Parse nodes");
        printf ("%11u : %s\n", AslGbl_NsLookupCount, "Namespace searches");
        printf ("%11u : %s\n", AslGbl_TotalNamedObjects, "Named objects");
        printf ("%11u : %s\n", AslGbl_TotalMethods, "Control methods");
        printf ("%11u : %s\n", AslGbl_TotalAllocations, "Memory Allocations");
        printf ("%11u : %s\n", AslGbl_TotalAllocated, "Total allocated memory");
        printf ("%11u : %s\n", AslGbl_TotalFolds, "Constant subtrees folded");
        printf ("\n");
    }

    if (AslGbl_NsLookupCount)
    {
        DbgPrint (ASL_DEBUG_OUTPUT,
            "\n\nMiscellaneous compile statistics\n\n");

        DbgPrint (ASL_DEBUG_OUTPUT,
            "%32s : %u\n", "Total Namespace searches",
            AslGbl_NsLookupCount);

        DbgPrint (ASL_DEBUG_OUTPUT,
            "%32s : %u usec\n", "Time per search", ((UINT32)
            (AslGbl_Events[AslGbl_NamespaceEvent].EndTime -
                AslGbl_Events[AslGbl_NamespaceEvent].StartTime) / 10) /
                AslGbl_NsLookupCount);
    }

    if (AslGbl_ExceptionCount[ASL_ERROR] > ASL_MAX_ERROR_COUNT)
    {
        printf ("\nMaximum error count (%d) exceeded\n",
            ASL_MAX_ERROR_COUNT);
    }

    UtDisplaySummary (ASL_FILE_STDOUT);
    if (AslGbl_ParserErrorDetected || AslGbl_PreprocessOnly ||
        ((AslGbl_ExceptionCount[ASL_ERROR] > 0) &&
        (!AslGbl_IgnoreErrors) &&
        AslGbl_Files[ASL_FILE_AML_OUTPUT].Handle))
    {
        DeleteAmlFile = TRUE;
        Status = -1;
    }



    while (CurrentFileNode)
    {





        if (Status != -1 && !AslGbl_IgnoreErrors &&
            CurrentFileNode->ParserErrorDetected)
        {
            Status = -1;
        }

        switch (FlSwitchFileSet (CurrentFileNode->Files[ASL_FILE_INPUT].Filename))
        {
            case 128:
            case 129:

                CmFinishFiles (DeleteAmlFile);
                CurrentFileNode = CurrentFileNode->Next;
                break;

            case 130:
            default:

                CurrentFileNode = ((void*)0);
                break;
        }
    }



    if (!AslGbl_DoAslConversion)
    {
        UtDeleteLocalCaches ();
    }

    return (Status);
}
