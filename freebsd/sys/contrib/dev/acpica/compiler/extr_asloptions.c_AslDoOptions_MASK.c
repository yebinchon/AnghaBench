#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* UINT8 ;
typedef  int UINT32 ;
typedef  int /*<<< orphan*/  BOOLEAN ;
typedef  int /*<<< orphan*/  ACPI_STATUS ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int ACPI_OPT_END ; 
 int /*<<< orphan*/  ASL_COMPILER_NAME ; 
 int ASL_DEFAULT_LINE_BUFFER_SIZE ; 
 int /*<<< orphan*/  ASL_SUPPORTED_OPTIONS ; 
 int /*<<< orphan*/  ASL_WARNING ; 
 int /*<<< orphan*/  ASL_WARNING2 ; 
 int /*<<< orphan*/  ASL_WARNING3 ; 
 int /*<<< orphan*/  AcpiDbgLevel ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 void* AcpiGbl_CaptureComments ; 
 void* AcpiGbl_CstyleDisassembly ; 
 void* AcpiGbl_DebugAslConversion ; 
 void* AcpiGbl_DisasmFlag ; 
 void* AcpiGbl_DmEmitExternalOpcodes ; 
 void* AcpiGbl_DmOpt_Listing ; 
 void* AcpiGbl_DoDisassemblerOptimizations ; 
 void* AcpiGbl_ForceAmlDisassembly ; 
 void* AcpiGbl_IgnoreNoopOperator ; 
 void* AcpiGbl_NoResourceDisassembly ; 
 char* AcpiGbl_Optarg ; 
 size_t AcpiGbl_Optind ; 
 int FUNC3 (int,char**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char**) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int AslCompilerdebug ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 void* AslGbl_AsmIncludeOutputFlag ; 
 void* AslGbl_AsmOutputFlag ; 
 void* AslGbl_C_IncludeOutputFlag ; 
 void* AslGbl_C_OffsetTableFlag ; 
 void* AslGbl_C_OutputFlag ; 
 void* AslGbl_CompileGeneric ; 
 void* AslGbl_CompileTimesFlag ; 
 void* AslGbl_CrossReferenceOutput ; 
 void* AslGbl_DebugFlag ; 
 void* AslGbl_DisassembleAll ; 
 void* AslGbl_DisplayOptimizations ; 
 void* AslGbl_DisplayRemarks ; 
 void* AslGbl_DisplayWarnings ; 
 void* AslGbl_DoAslConversion ; 
 void* AslGbl_DoCompile ; 
 void* AslGbl_DoExternalsInPlace ; 
 void* AslGbl_DoSignon ; 
 void* AslGbl_DoTemplates ; 
 void* AslGbl_DoTypechecking ; 
 void* AslGbl_DtLexBisonPrototype ; 
 void* AslGbl_EnableReferenceTypechecking ; 
 char* AslGbl_ExternalRefFilename ; 
 void* AslGbl_FoldConstants ; 
 int /*<<< orphan*/  AslGbl_HexOutputFlag ; 
 void* AslGbl_IgnoreErrors ; 
 void* AslGbl_IntegerOptimizationFlag ; 
 void* AslGbl_KeepPreprocessorTempFile ; 
 int AslGbl_LineBufferSize ; 
 void* AslGbl_ListingFlag ; 
 void* AslGbl_MapfileFlag ; 
 void* AslGbl_NoErrors ; 
 void* AslGbl_NoResourceChecking ; 
 void* AslGbl_NsOutputFlag ; 
 void* AslGbl_OptimizeTrivialParseNodes ; 
 char* AslGbl_OutputFilenamePrefix ; 
 void* AslGbl_ParseOnlyFlag ; 
 void* AslGbl_PreprocessFlag ; 
 void* AslGbl_PreprocessOnly ; 
 void* AslGbl_PreprocessorOutputFlag ; 
 void* AslGbl_PruneDepth ; 
 void* AslGbl_PruneParseTree ; 
 void* AslGbl_PruneType ; 
 void* AslGbl_ReferenceOptimizationFlag ; 
 void* AslGbl_RevisionOverride ; 
 void* AslGbl_SourceOutputFlag ; 
 void* AslGbl_UseDefaultAmlFilename ; 
 void* AslGbl_UseOriginalCompilerId ; 
 void* AslGbl_VerboseErrors ; 
 void* AslGbl_VerboseTemplates ; 
 int /*<<< orphan*/  AslGbl_WarningLevel ; 
 void* AslGbl_WarningsAsErrors ; 
 int DtParserdebug ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  HEX_OUTPUT_ASL ; 
 int /*<<< orphan*/  HEX_OUTPUT_ASM ; 
 int /*<<< orphan*/  HEX_OUTPUT_C ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ *,void*) ; 
 int PrParserdebug ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int) ; 
 int /*<<< orphan*/  FUNC19 (char*,...) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC21 (
    int                     argc,
    char                    **argv,
    BOOLEAN                 IsResponseFile)
{
    ACPI_STATUS             Status;
    UINT32                  j;


    /* Get the command line options */

    while ((j = FUNC3 (argc, argv, ASL_SUPPORTED_OPTIONS)) != ACPI_OPT_END) switch (j)
    {
    case '@':   /* Begin a response file */

        if (IsResponseFile)
        {
            FUNC19 ("Nested command files are not supported\n");
            return (-1);
        }

        if (FUNC8 (AcpiGbl_Optarg))
        {
            return (-1);
        }
        break;

    case 'a':   /* Debug options */

        switch (AcpiGbl_Optarg[0])
        {
        case 'r':

            AslGbl_EnableReferenceTypechecking = TRUE;
            break;

        default:

            FUNC19 ("Unknown option: -a%s\n", AcpiGbl_Optarg);
            return (-1);
        }

        break;


    case 'b':   /* Debug options */

        switch (AcpiGbl_Optarg[0])
        {

        case 'c':

            FUNC19 ("Debug ASL to ASL+ conversion\n");

            AslGbl_DoAslConversion = TRUE;
            AslGbl_FoldConstants = FALSE;
            AslGbl_IntegerOptimizationFlag = FALSE;
            AslGbl_ReferenceOptimizationFlag = FALSE;
            AslGbl_OptimizeTrivialParseNodes = FALSE;
            AcpiGbl_CaptureComments = TRUE;
            AcpiGbl_DoDisassemblerOptimizations = FALSE;
            AcpiGbl_DebugAslConversion = TRUE;
            AcpiGbl_DmEmitExternalOpcodes = TRUE;
            AslGbl_DoExternalsInPlace = TRUE;

            return (0);

        case 'f':

            AslCompilerdebug = 1; /* same as yydebug */
            DtParserdebug = 1;
            PrParserdebug = 1;
            AslGbl_DebugFlag = TRUE;
            AslGbl_KeepPreprocessorTempFile = TRUE;
            break;

        case 'p':   /* Prune ASL parse tree */

            /* Get the required argument */

            if (FUNC4 (argc, argv))
            {
                return (-1);
            }

            AslGbl_PruneParseTree = TRUE;
            AslGbl_PruneDepth = (UINT8) FUNC20 (AcpiGbl_Optarg, NULL, 0);
            break;

        case 's':

            AslGbl_DebugFlag = TRUE;
            break;

        case 't':

            /* Get the required argument */

            if (FUNC4 (argc, argv))
            {
                return (-1);
            }

            AslGbl_PruneType = (UINT8) FUNC20 (AcpiGbl_Optarg, NULL, 0);
            break;

        default:

            FUNC19 ("Unknown option: -b%s\n", AcpiGbl_Optarg);
            return (-1);
        }

        break;

    case 'c':

        switch (AcpiGbl_Optarg[0])
        {

        case 'a':

            FUNC19 ("Convert ASL to ASL+ with comments\n");
            AslGbl_DoAslConversion = TRUE;
            AslGbl_FoldConstants = FALSE;
            AslGbl_IntegerOptimizationFlag = FALSE;
            AslGbl_ReferenceOptimizationFlag = FALSE;
            AslGbl_OptimizeTrivialParseNodes = FALSE;
            AcpiGbl_CaptureComments = TRUE;
            AcpiGbl_DoDisassemblerOptimizations = FALSE;
            AcpiGbl_DmEmitExternalOpcodes = TRUE;
            AslGbl_DoExternalsInPlace = TRUE;

            return (0);

        case 'r':

            AslGbl_NoResourceChecking = TRUE;
            break;

        default:

            FUNC19 ("Unknown option: -c%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'd':   /* Disassembler */

        switch (AcpiGbl_Optarg[0])
        {
        case '^':

            AslGbl_DoCompile = FALSE;
            break;

        case 'a':

            AslGbl_DoCompile = FALSE;
            AslGbl_DisassembleAll = TRUE;
            break;

        case 'b':   /* Do not convert buffers to resource descriptors */

            AcpiGbl_NoResourceDisassembly = TRUE;
            break;

        case 'c':

            break;

        case 'f':

            AcpiGbl_ForceAmlDisassembly = TRUE;
            break;

        case 'l':   /* Use legacy ASL code (not ASL+) for disassembly */

            AslGbl_DoCompile = FALSE;
            AcpiGbl_CstyleDisassembly = FALSE;
            break;

        default:

            FUNC19 ("Unknown option: -d%s\n", AcpiGbl_Optarg);
            return (-1);
        }

        AcpiGbl_DisasmFlag = TRUE;
        break;

    case 'D':   /* Define a symbol */

        FUNC13 (AcpiGbl_Optarg, NULL, TRUE);
        break;

    case 'e':   /* External files for disassembler */

        /* Get entire list of external files */

        AcpiGbl_Optind--;
        argv[AcpiGbl_Optind] = AcpiGbl_Optarg;

        while (argv[AcpiGbl_Optind] &&
              (argv[AcpiGbl_Optind][0] != '-'))
        {
            Status = FUNC2 (argv[AcpiGbl_Optind]);
            if (FUNC1 (Status))
            {
                FUNC19 ("Could not add %s to external list\n",
                    argv[AcpiGbl_Optind]);
                return (-1);
            }

            AcpiGbl_Optind++;
        }
        break;

    case 'f':

        switch (AcpiGbl_Optarg[0])
        {
        case '^':   /* Ignore errors and force creation of aml file */

            AslGbl_IgnoreErrors = TRUE;
            break;

        case 'e':   /* Disassembler: Get external declaration file */

            if (FUNC4 (argc, argv))
            {
                return (-1);
            }

            AslGbl_ExternalRefFilename = AcpiGbl_Optarg;
            break;

        default:

            FUNC19 ("Unknown option: -f%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'G':

        AslGbl_CompileGeneric = TRUE;
        break;

    case 'g':   /* Get all ACPI tables */

        FUNC19 ("-g option is deprecated, use acpidump utility instead\n");
        FUNC18 (1);

    case 'h':

        switch (AcpiGbl_Optarg[0])
        {
        case '^':

            FUNC14 ();
            FUNC18 (0);

        case 'c':

            FUNC16 ();
            FUNC18 (0);

        case 'd':

            FUNC7 ();
            FUNC18 (0);

        case 'f':

            FUNC11 ();
            FUNC18 (0);

        case 'r':

            /* reserved names */

            FUNC5 ();
            FUNC18 (0);

        case 't':

            FUNC17 ();
            FUNC18 (0);

        default:

            FUNC19 ("Unknown option: -h%s\n", AcpiGbl_Optarg);
            return (-1);
        }

    case 'I':   /* Add an include file search directory */

        FUNC12 (AcpiGbl_Optarg);
        break;

    case 'i':   /* Output AML as an include file */

        switch (AcpiGbl_Optarg[0])
        {
        case 'a':

            /* Produce assembly code include file */

            AslGbl_AsmIncludeOutputFlag = TRUE;
            break;

        case 'c':

            /* Produce C include file */

            AslGbl_C_IncludeOutputFlag = TRUE;
            break;

        case 'n':

            /* Compiler/Disassembler: Ignore the NOOP operator */

            AcpiGbl_IgnoreNoopOperator = TRUE;
            break;

        default:

            FUNC19 ("Unknown option: -i%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'l':   /* Listing files */

        switch (AcpiGbl_Optarg[0])
        {
        case '^':

            /* Produce listing file (Mixed source/aml) */

            AslGbl_ListingFlag = TRUE;
            AcpiGbl_DmOpt_Listing = TRUE;
            break;

        case 'i':

            /* Produce preprocessor output file */

            AslGbl_PreprocessorOutputFlag = TRUE;
            break;

        case 'm':

            /* Produce hardware map summary file */

            AslGbl_MapfileFlag = TRUE;
            break;

        case 'n':

            /* Produce namespace file */

            AslGbl_NsOutputFlag = TRUE;
            break;

        case 's':

            /* Produce combined source file */

            AslGbl_SourceOutputFlag = TRUE;
            break;

        case 'x':

            /* Produce cross-reference file */

            AslGbl_CrossReferenceOutput = TRUE;
            break;

        default:

            FUNC19 ("Unknown option: -l%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'm':   /* Set line buffer size */

        AslGbl_LineBufferSize = (UINT32) FUNC20 (AcpiGbl_Optarg, NULL, 0) * 1024;
        if (AslGbl_LineBufferSize < ASL_DEFAULT_LINE_BUFFER_SIZE)
        {
            AslGbl_LineBufferSize = ASL_DEFAULT_LINE_BUFFER_SIZE;
        }
        FUNC19 ("Line Buffer Size: %u\n", AslGbl_LineBufferSize);
        break;

    case 'n':   /* Parse only */

        AslGbl_ParseOnlyFlag = TRUE;
        break;

    case 'o':   /* Control compiler AML optimizations */

        switch (AcpiGbl_Optarg[0])
        {
        case 'a':

            /* Disable all optimizations */

            AslGbl_FoldConstants = FALSE;
            AslGbl_IntegerOptimizationFlag = FALSE;
            AslGbl_ReferenceOptimizationFlag = FALSE;
            AslGbl_OptimizeTrivialParseNodes = FALSE;

            break;

        case 'c':

            /* Display compile time(s) */

            AslGbl_CompileTimesFlag = TRUE;
            break;

        case 'd':

            /* Disable disassembler code optimizations */

            AcpiGbl_DoDisassemblerOptimizations = FALSE;
            break;

        case 'e':

            /* Disassembler: Emit embedded external operators */

            AcpiGbl_DmEmitExternalOpcodes = TRUE;
            break;

        case 'E':

            /*
             * iASL: keep External opcodes in place.
             * No affect if Gbl_DoExternals is false.
             */

            AslGbl_DoExternalsInPlace = TRUE;
            break;

        case 'f':

            /* Disable folding on "normal" expressions */

            AslGbl_FoldConstants = FALSE;
            break;

        case 'i':

            /* Disable integer optimization to constants */

            AslGbl_IntegerOptimizationFlag = FALSE;
            break;

        case 'n':

            /* Disable named reference optimization */

            AslGbl_ReferenceOptimizationFlag = FALSE;
            break;

        case 't':

            /* Disable heavy typechecking */

            AslGbl_DoTypechecking = FALSE;
            break;

        default:

            FUNC19 ("Unknown option: -c%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'P':   /* Preprocessor options */

        switch (AcpiGbl_Optarg[0])
        {
        case '^':   /* Proprocess only, emit (.i) file */

            AslGbl_PreprocessOnly = TRUE;
            AslGbl_PreprocessorOutputFlag = TRUE;
            break;

        case 'n':   /* Disable preprocessor */

            AslGbl_PreprocessFlag = FALSE;
            break;

        default:

            FUNC19 ("Unknown option: -P%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'p':   /* Override default AML output filename */

        AslGbl_OutputFilenamePrefix = AcpiGbl_Optarg;
        FUNC15 (AslGbl_OutputFilenamePrefix);
        AslGbl_UseDefaultAmlFilename = FALSE;
        break;

    case 'q':   /* ASL/ASl+ converter: compile only and leave badaml. */

        FUNC19 ("Convert ASL to ASL+ with comments\n");
        AslGbl_FoldConstants = FALSE;
        AslGbl_IntegerOptimizationFlag = FALSE;
        AslGbl_ReferenceOptimizationFlag = FALSE;
        AslGbl_OptimizeTrivialParseNodes = FALSE;
        AslGbl_DoExternalsInPlace = TRUE;
        AcpiGbl_CaptureComments = TRUE;
        return (0);

    case 'r':   /* Override revision found in table header */

        AslGbl_RevisionOverride = (UINT8) FUNC20 (AcpiGbl_Optarg, NULL, 0);
        break;

    case 's':   /* Create AML in a source code file */

        switch (AcpiGbl_Optarg[0])
        {
        case 'a':

            /* Produce assembly code output file */

            AslGbl_AsmOutputFlag = TRUE;
            break;

        case 'c':

            /* Produce C hex output file */

            AslGbl_C_OutputFlag = TRUE;
            break;

        case 'o':

            /* Produce AML offset table in C */

            AslGbl_C_OffsetTableFlag = TRUE;
            break;

        default:

            FUNC19 ("Unknown option: -s%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 't':   /* Produce hex table output file */

        switch (AcpiGbl_Optarg[0])
        {
        case 'a':

            AslGbl_HexOutputFlag = HEX_OUTPUT_ASM;
            break;

        case 'c':

            AslGbl_HexOutputFlag = HEX_OUTPUT_C;
            break;

    case 'p': /* data table flex/bison prototype */

            AslGbl_DtLexBisonPrototype = TRUE;
            break;

        case 's':

            AslGbl_HexOutputFlag = HEX_OUTPUT_ASL;
            break;

        default:

            FUNC19 ("Unknown option: -t%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'T':   /* Create a ACPI table template file */

        AslGbl_DoTemplates = TRUE;
        break;

    case 'v':   /* Version and verbosity settings */

        switch (AcpiGbl_Optarg[0])
        {
        case '^':

            FUNC19 (FUNC0 (ASL_COMPILER_NAME));
            FUNC18 (0);

        case 'a':

            /* Disable all error/warning/remark messages */

            AslGbl_NoErrors = TRUE;
            break;

        case 'e':

            /* Disable all warning/remark messages (errors only) */

            AslGbl_DisplayRemarks = FALSE;
            AslGbl_DisplayWarnings = FALSE;
            break;

        case 'i':
            /*
             * Support for integrated development environment(s).
             *
             * 1) No compiler signon
             * 2) Send stderr messages to stdout
             * 3) Less verbose error messages (single line only for each)
             * 4) Error/warning messages are formatted appropriately to
             *    be recognized by MS Visual Studio
             */
            AslGbl_VerboseErrors = FALSE;
            AslGbl_DoSignon = FALSE;
            break;

        case 'o':

            AslGbl_DisplayOptimizations = TRUE;
            break;

        case 'r':

            AslGbl_DisplayRemarks = FALSE;
            break;

        case 's':

            AslGbl_DoSignon = FALSE;
            break;

        case 't':

            AslGbl_VerboseTemplates = TRUE;
            break;

        case 'w':

            /* Get the required argument */

            if (FUNC4 (argc, argv))
            {
                return (-1);
            }

            Status = FUNC6 (AcpiGbl_Optarg);
            if (FUNC1 (Status))
            {
                return (-1);
            }
            break;

        case 'x':

            /* Get the required argument */

            if (FUNC4 (argc, argv))
            {
                return (-1);
            }

            Status = FUNC10 (AcpiGbl_Optarg);
            if (FUNC1 (Status))
            {
                return (-1);
            }
            break;

        default:

            FUNC19 ("Unknown option: -v%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'w': /* Set warning levels */

        switch (AcpiGbl_Optarg[0])
        {
        case '1':

            AslGbl_WarningLevel = ASL_WARNING;
            break;

        case '2':

            AslGbl_WarningLevel = ASL_WARNING2;
            break;

        case '3':

            AslGbl_WarningLevel = ASL_WARNING3;
            break;

        case 'e':

            AslGbl_WarningsAsErrors = TRUE;
            break;

        case 'w':

            /* Get the required argument */

            if (FUNC4 (argc, argv))
            {
                return (-1);
            }

            Status = FUNC9 (AcpiGbl_Optarg);
            if (FUNC1 (Status))
            {
                return (-1);
            }
            break;


        default:

            FUNC19 ("Unknown option: -w%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'x':   /* Set debug print output level */

        AcpiDbgLevel = FUNC20 (AcpiGbl_Optarg, NULL, 16);
        break;

    case 'z':

        AslGbl_UseOriginalCompilerId = TRUE;
        break;

    default:

        return (-1);
    }

    return (0);
}