
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT8 ;
struct TYPE_6__ {int Child; } ;
struct TYPE_8__ {TYPE_1__ Asl; } ;
struct TYPE_7__ {void* ParserErrorDetected; } ;
typedef TYPE_2__ ASL_GLOBAL_FILE_NODE ;
typedef int ACPI_STATUS ;


 int AE_ERROR ;
 int AE_OK ;
 int ASL_DEBUG_OUTPUT ;
 int ASL_DEFINE ;
 int ASL_ERROR ;
 int ASL_MSG_COMPILER_INTERNAL ;
 int ASL_WALK_VISIT_TWICE ;
 int ASL_WALK_VISIT_UPWARD ;
 int AslCompilerparse () ;
 int AslError (int ,int ,int *,char*) ;
 int AslGbl_CurrentLineNumber ;
 int AslGbl_LogicalLineNumber ;
 TYPE_3__* AslGbl_ParseTreeRoot ;
 void* AslGbl_ParserErrorDetected ;
 scalar_t__ AslGbl_PreprocessFlag ;
 scalar_t__ AslGbl_PreprocessOnly ;
 int AslGbl_PruneDepth ;
 scalar_t__ AslGbl_PruneParseTree ;
 int AslGbl_PruneType ;
 scalar_t__ AslGbl_SyntaxError ;
 int AslPruneParseTree (int ,int ) ;
 int CmFlushSourceCode () ;
 int DbgPrint (int ,char*) ;
 int FALSE ;
 TYPE_2__* FlGetCurrentFileNode () ;
 int LsDumpParseTree () ;
 int OpcAmlOpcodeWalk ;
 int OpcGetIntegerWidth (int ) ;
 int PrAddDefine (int ,char*,int ) ;
 int PrDoPreprocess () ;
 void* TRUE ;
 int * TrAmlTransformWalkBegin ;
 int TrAmlTransformWalkEnd ;
 int TrWalkParseTree (TYPE_3__*,int ,int *,int ,int *) ;
 int UtBeginEvent (char*) ;
 int UtEndEvent (int ) ;
 int fprintf (int ,char*) ;
 int stderr ;

ACPI_STATUS
CmDoCompile (
    void)
{
    UINT8 FullCompile;
    UINT8 Event;
    ASL_GLOBAL_FILE_NODE *FileNode;


    FullCompile = UtBeginEvent ("*** Total Compile time ***");
    Event = UtBeginEvent ("Open input and output files");
    UtEndEvent (Event);

    Event = UtBeginEvent ("Preprocess input file");
    if (AslGbl_PreprocessFlag)
    {


        PrAddDefine (ASL_DEFINE, "", FALSE);



        PrDoPreprocess ();
        AslGbl_CurrentLineNumber = 1;
        AslGbl_LogicalLineNumber = 1;

        if (AslGbl_PreprocessOnly)
        {
            UtEndEvent (Event);
            return (AE_OK);
        }
    }
    UtEndEvent (Event);




    Event = UtBeginEvent ("Parse source code and build parse tree");
    AslCompilerparse();
    UtEndEvent (Event);



    if (AslGbl_SyntaxError)
    {
        fprintf (stderr,
            "Compiler aborting due to parser-detected syntax error(s)\n");



        FileNode = FlGetCurrentFileNode ();
        FileNode->ParserErrorDetected = TRUE;
        AslGbl_ParserErrorDetected = TRUE;
        LsDumpParseTree ();
        goto ErrorExit;
    }



    if (!AslGbl_ParseTreeRoot)
    {




        AslError (ASL_ERROR, ASL_MSG_COMPILER_INTERNAL,
            ((void*)0), "- Could not resolve parse tree root node");

        goto ErrorExit;
    }



    Event = UtBeginEvent ("Flush source input");
    CmFlushSourceCode ();



    if (AslGbl_PruneParseTree)
    {
        AslPruneParseTree (AslGbl_PruneDepth, AslGbl_PruneType);
    }



    LsDumpParseTree ();

    OpcGetIntegerWidth (AslGbl_ParseTreeRoot->Asl.Child);
    UtEndEvent (Event);



    Event = UtBeginEvent ("Parse tree transforms");
    DbgPrint (ASL_DEBUG_OUTPUT, "\nParse tree transforms\n\n");
    TrWalkParseTree (AslGbl_ParseTreeRoot, ASL_WALK_VISIT_TWICE,
        TrAmlTransformWalkBegin, TrAmlTransformWalkEnd, ((void*)0));
    UtEndEvent (Event);



    Event = UtBeginEvent ("Generate AML opcodes");
    DbgPrint (ASL_DEBUG_OUTPUT, "Generating AML opcodes\n\n");
    TrWalkParseTree (AslGbl_ParseTreeRoot, ASL_WALK_VISIT_UPWARD, ((void*)0),
        OpcAmlOpcodeWalk, ((void*)0));
    UtEndEvent (Event);

    UtEndEvent (FullCompile);
    return (AE_OK);

ErrorExit:
    UtEndEvent (FullCompile);
    return (AE_ERROR);
}
