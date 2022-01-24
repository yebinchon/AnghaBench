#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UINT8 ;
struct TYPE_6__ {int /*<<< orphan*/  Child; } ;
struct TYPE_8__ {TYPE_1__ Asl; } ;
struct TYPE_7__ {void* ParserErrorDetected; } ;
typedef  TYPE_2__ ASL_GLOBAL_FILE_NODE ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 int /*<<< orphan*/  AE_ERROR ; 
 int /*<<< orphan*/  AE_OK ; 
 int /*<<< orphan*/  ASL_DEBUG_OUTPUT ; 
 int /*<<< orphan*/  ASL_DEFINE ; 
 int /*<<< orphan*/  ASL_ERROR ; 
 int /*<<< orphan*/  ASL_MSG_COMPILER_INTERNAL ; 
 int /*<<< orphan*/  ASL_WALK_VISIT_TWICE ; 
 int /*<<< orphan*/  ASL_WALK_VISIT_UPWARD ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int AslGbl_CurrentLineNumber ; 
 int AslGbl_LogicalLineNumber ; 
 TYPE_3__* AslGbl_ParseTreeRoot ; 
 void* AslGbl_ParserErrorDetected ; 
 scalar_t__ AslGbl_PreprocessFlag ; 
 scalar_t__ AslGbl_PreprocessOnly ; 
 int /*<<< orphan*/  AslGbl_PruneDepth ; 
 scalar_t__ AslGbl_PruneParseTree ; 
 int /*<<< orphan*/  AslGbl_PruneType ; 
 scalar_t__ AslGbl_SyntaxError ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_2__* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  OpcAmlOpcodeWalk ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* TRUE ; 
 int /*<<< orphan*/ * TrAmlTransformWalkBegin ; 
 int /*<<< orphan*/  TrAmlTransformWalkEnd ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

ACPI_STATUS
FUNC14 (
    void)
{
    UINT8                   FullCompile;
    UINT8                   Event;
    ASL_GLOBAL_FILE_NODE    *FileNode;


    FullCompile = FUNC11 ("*** Total Compile time ***");
    Event = FUNC11 ("Open input and output files");
    FUNC12 (Event);

    Event = FUNC11 ("Preprocess input file");
    if (AslGbl_PreprocessFlag)
    {
        /* Enter compiler name as a #define */

        FUNC8 (ASL_DEFINE, "", FALSE);

        /* Preprocessor */

        FUNC9 ();
        AslGbl_CurrentLineNumber = 1;
        AslGbl_LogicalLineNumber = 1;

        if (AslGbl_PreprocessOnly)
        {
            FUNC12 (Event);
            return (AE_OK);
        }
    }
    FUNC12 (Event);


    /* Build the parse tree */

    Event = FUNC11 ("Parse source code and build parse tree");
    FUNC0();
    FUNC12 (Event);

    /* Check for parser-detected syntax errors */

    if (AslGbl_SyntaxError)
    {
        FUNC13 (stderr,
            "Compiler aborting due to parser-detected syntax error(s)\n");

        /* Flag this error in the FileNode for compilation summary */

        FileNode = FUNC5 ();
        FileNode->ParserErrorDetected = TRUE;
        AslGbl_ParserErrorDetected = TRUE;
        FUNC6 ();
        goto ErrorExit;
    }

    /* Did the parse tree get successfully constructed? */

    if (!AslGbl_ParseTreeRoot)
    {
        /*
         * If there are no errors, then we have some sort of
         * internal problem.
         */
        FUNC1 (ASL_ERROR, ASL_MSG_COMPILER_INTERNAL,
            NULL, "- Could not resolve parse tree root node");

        goto ErrorExit;
    }

    /* Flush out any remaining source after parse tree is complete */

    Event = FUNC11 ("Flush source input");
    FUNC3 ();

    /* Prune the parse tree if requested (debug purposes only) */

    if (AslGbl_PruneParseTree)
    {
        FUNC2 (AslGbl_PruneDepth, AslGbl_PruneType);
    }

    /* Optional parse tree dump, compiler debug output only */

    FUNC6 ();

    FUNC7 (AslGbl_ParseTreeRoot->Asl.Child);
    FUNC12 (Event);

    /* Pre-process parse tree for any operator transforms */

    Event = FUNC11 ("Parse tree transforms");
    FUNC4 (ASL_DEBUG_OUTPUT, "\nParse tree transforms\n\n");
    FUNC10 (AslGbl_ParseTreeRoot, ASL_WALK_VISIT_TWICE,
        TrAmlTransformWalkBegin, TrAmlTransformWalkEnd, NULL);
    FUNC12 (Event);

    /* Generate AML opcodes corresponding to the parse tokens */

    Event = FUNC11 ("Generate AML opcodes");
    FUNC4 (ASL_DEBUG_OUTPUT, "Generating AML opcodes\n\n");
    FUNC10 (AslGbl_ParseTreeRoot, ASL_WALK_VISIT_UPWARD, NULL,
        OpcAmlOpcodeWalk, NULL);
    FUNC12 (Event);

    FUNC12 (FullCompile);
    return (AE_OK);

ErrorExit:
    FUNC12 (FullCompile);
    return (AE_ERROR);
}