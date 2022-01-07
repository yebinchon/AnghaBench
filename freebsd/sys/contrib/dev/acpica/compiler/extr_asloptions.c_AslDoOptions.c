
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* UINT8 ;
typedef int UINT32 ;
typedef int BOOLEAN ;
typedef int ACPI_STATUS ;


 char* ACPI_COMMON_SIGNON (int ) ;
 int ACPI_FAILURE (int ) ;
 int ACPI_OPT_END ;
 int ASL_COMPILER_NAME ;
 int ASL_DEFAULT_LINE_BUFFER_SIZE ;
 int ASL_SUPPORTED_OPTIONS ;
 int ASL_WARNING ;
 int ASL_WARNING2 ;
 int ASL_WARNING3 ;
 int AcpiDbgLevel ;
 int AcpiDmAddToExternalFileList (char*) ;
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
 int AcpiGetopt (int,char**,int ) ;
 int AcpiGetoptArgument (int,char**) ;
 int ApDisplayReservedNames () ;
 int AslCompilerdebug ;
 int AslDisableException (char*) ;
 int AslDisassemblyHelp () ;
 int AslDoResponseFile (char*) ;
 int AslElevateException (char*) ;
 int AslExpectException (char*) ;
 int AslFilenameHelp () ;
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
 int AslGbl_HexOutputFlag ;
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
 int AslGbl_WarningLevel ;
 void* AslGbl_WarningsAsErrors ;
 int DtParserdebug ;
 void* FALSE ;
 int FlAddIncludeDirectory (char*) ;
 int HEX_OUTPUT_ASL ;
 int HEX_OUTPUT_ASM ;
 int HEX_OUTPUT_C ;
 int PrAddDefine (char*,int *,void*) ;
 int PrParserdebug ;
 void* TRUE ;
 int Usage () ;
 int UtConvertBackslashes (char*) ;
 int UtDisplayConstantOpcodes () ;
 int UtDisplaySupportedTables () ;
 int exit (int) ;
 int printf (char*,...) ;
 int strtoul (char*,int *,int) ;

__attribute__((used)) static int
AslDoOptions (
    int argc,
    char **argv,
    BOOLEAN IsResponseFile)
{
    ACPI_STATUS Status;
    UINT32 j;




    while ((j = AcpiGetopt (argc, argv, ASL_SUPPORTED_OPTIONS)) != ACPI_OPT_END) switch (j)
    {
    case '@':

        if (IsResponseFile)
        {
            printf ("Nested command files are not supported\n");
            return (-1);
        }

        if (AslDoResponseFile (AcpiGbl_Optarg))
        {
            return (-1);
        }
        break;

    case 'a':

        switch (AcpiGbl_Optarg[0])
        {
        case 'r':

            AslGbl_EnableReferenceTypechecking = TRUE;
            break;

        default:

            printf ("Unknown option: -a%s\n", AcpiGbl_Optarg);
            return (-1);
        }

        break;


    case 'b':

        switch (AcpiGbl_Optarg[0])
        {

        case 'c':

            printf ("Debug ASL to ASL+ conversion\n");

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

            AslCompilerdebug = 1;
            DtParserdebug = 1;
            PrParserdebug = 1;
            AslGbl_DebugFlag = TRUE;
            AslGbl_KeepPreprocessorTempFile = TRUE;
            break;

        case 'p':



            if (AcpiGetoptArgument (argc, argv))
            {
                return (-1);
            }

            AslGbl_PruneParseTree = TRUE;
            AslGbl_PruneDepth = (UINT8) strtoul (AcpiGbl_Optarg, ((void*)0), 0);
            break;

        case 's':

            AslGbl_DebugFlag = TRUE;
            break;

        case 't':



            if (AcpiGetoptArgument (argc, argv))
            {
                return (-1);
            }

            AslGbl_PruneType = (UINT8) strtoul (AcpiGbl_Optarg, ((void*)0), 0);
            break;

        default:

            printf ("Unknown option: -b%s\n", AcpiGbl_Optarg);
            return (-1);
        }

        break;

    case 'c':

        switch (AcpiGbl_Optarg[0])
        {

        case 'a':

            printf ("Convert ASL to ASL+ with comments\n");
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

            printf ("Unknown option: -c%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'd':

        switch (AcpiGbl_Optarg[0])
        {
        case '^':

            AslGbl_DoCompile = FALSE;
            break;

        case 'a':

            AslGbl_DoCompile = FALSE;
            AslGbl_DisassembleAll = TRUE;
            break;

        case 'b':

            AcpiGbl_NoResourceDisassembly = TRUE;
            break;

        case 'c':

            break;

        case 'f':

            AcpiGbl_ForceAmlDisassembly = TRUE;
            break;

        case 'l':

            AslGbl_DoCompile = FALSE;
            AcpiGbl_CstyleDisassembly = FALSE;
            break;

        default:

            printf ("Unknown option: -d%s\n", AcpiGbl_Optarg);
            return (-1);
        }

        AcpiGbl_DisasmFlag = TRUE;
        break;

    case 'D':

        PrAddDefine (AcpiGbl_Optarg, ((void*)0), TRUE);
        break;

    case 'e':



        AcpiGbl_Optind--;
        argv[AcpiGbl_Optind] = AcpiGbl_Optarg;

        while (argv[AcpiGbl_Optind] &&
              (argv[AcpiGbl_Optind][0] != '-'))
        {
            Status = AcpiDmAddToExternalFileList (argv[AcpiGbl_Optind]);
            if (ACPI_FAILURE (Status))
            {
                printf ("Could not add %s to external list\n",
                    argv[AcpiGbl_Optind]);
                return (-1);
            }

            AcpiGbl_Optind++;
        }
        break;

    case 'f':

        switch (AcpiGbl_Optarg[0])
        {
        case '^':

            AslGbl_IgnoreErrors = TRUE;
            break;

        case 'e':

            if (AcpiGetoptArgument (argc, argv))
            {
                return (-1);
            }

            AslGbl_ExternalRefFilename = AcpiGbl_Optarg;
            break;

        default:

            printf ("Unknown option: -f%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'G':

        AslGbl_CompileGeneric = TRUE;
        break;

    case 'g':

        printf ("-g option is deprecated, use acpidump utility instead\n");
        exit (1);

    case 'h':

        switch (AcpiGbl_Optarg[0])
        {
        case '^':

            Usage ();
            exit (0);

        case 'c':

            UtDisplayConstantOpcodes ();
            exit (0);

        case 'd':

            AslDisassemblyHelp ();
            exit (0);

        case 'f':

            AslFilenameHelp ();
            exit (0);

        case 'r':



            ApDisplayReservedNames ();
            exit (0);

        case 't':

            UtDisplaySupportedTables ();
            exit (0);

        default:

            printf ("Unknown option: -h%s\n", AcpiGbl_Optarg);
            return (-1);
        }

    case 'I':

        FlAddIncludeDirectory (AcpiGbl_Optarg);
        break;

    case 'i':

        switch (AcpiGbl_Optarg[0])
        {
        case 'a':



            AslGbl_AsmIncludeOutputFlag = TRUE;
            break;

        case 'c':



            AslGbl_C_IncludeOutputFlag = TRUE;
            break;

        case 'n':



            AcpiGbl_IgnoreNoopOperator = TRUE;
            break;

        default:

            printf ("Unknown option: -i%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'l':

        switch (AcpiGbl_Optarg[0])
        {
        case '^':



            AslGbl_ListingFlag = TRUE;
            AcpiGbl_DmOpt_Listing = TRUE;
            break;

        case 'i':



            AslGbl_PreprocessorOutputFlag = TRUE;
            break;

        case 'm':



            AslGbl_MapfileFlag = TRUE;
            break;

        case 'n':



            AslGbl_NsOutputFlag = TRUE;
            break;

        case 's':



            AslGbl_SourceOutputFlag = TRUE;
            break;

        case 'x':



            AslGbl_CrossReferenceOutput = TRUE;
            break;

        default:

            printf ("Unknown option: -l%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'm':

        AslGbl_LineBufferSize = (UINT32) strtoul (AcpiGbl_Optarg, ((void*)0), 0) * 1024;
        if (AslGbl_LineBufferSize < ASL_DEFAULT_LINE_BUFFER_SIZE)
        {
            AslGbl_LineBufferSize = ASL_DEFAULT_LINE_BUFFER_SIZE;
        }
        printf ("Line Buffer Size: %u\n", AslGbl_LineBufferSize);
        break;

    case 'n':

        AslGbl_ParseOnlyFlag = TRUE;
        break;

    case 'o':

        switch (AcpiGbl_Optarg[0])
        {
        case 'a':



            AslGbl_FoldConstants = FALSE;
            AslGbl_IntegerOptimizationFlag = FALSE;
            AslGbl_ReferenceOptimizationFlag = FALSE;
            AslGbl_OptimizeTrivialParseNodes = FALSE;

            break;

        case 'c':



            AslGbl_CompileTimesFlag = TRUE;
            break;

        case 'd':



            AcpiGbl_DoDisassemblerOptimizations = FALSE;
            break;

        case 'e':



            AcpiGbl_DmEmitExternalOpcodes = TRUE;
            break;

        case 'E':






            AslGbl_DoExternalsInPlace = TRUE;
            break;

        case 'f':



            AslGbl_FoldConstants = FALSE;
            break;

        case 'i':



            AslGbl_IntegerOptimizationFlag = FALSE;
            break;

        case 'n':



            AslGbl_ReferenceOptimizationFlag = FALSE;
            break;

        case 't':



            AslGbl_DoTypechecking = FALSE;
            break;

        default:

            printf ("Unknown option: -c%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'P':

        switch (AcpiGbl_Optarg[0])
        {
        case '^':

            AslGbl_PreprocessOnly = TRUE;
            AslGbl_PreprocessorOutputFlag = TRUE;
            break;

        case 'n':

            AslGbl_PreprocessFlag = FALSE;
            break;

        default:

            printf ("Unknown option: -P%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'p':

        AslGbl_OutputFilenamePrefix = AcpiGbl_Optarg;
        UtConvertBackslashes (AslGbl_OutputFilenamePrefix);
        AslGbl_UseDefaultAmlFilename = FALSE;
        break;

    case 'q':

        printf ("Convert ASL to ASL+ with comments\n");
        AslGbl_FoldConstants = FALSE;
        AslGbl_IntegerOptimizationFlag = FALSE;
        AslGbl_ReferenceOptimizationFlag = FALSE;
        AslGbl_OptimizeTrivialParseNodes = FALSE;
        AslGbl_DoExternalsInPlace = TRUE;
        AcpiGbl_CaptureComments = TRUE;
        return (0);

    case 'r':

        AslGbl_RevisionOverride = (UINT8) strtoul (AcpiGbl_Optarg, ((void*)0), 0);
        break;

    case 's':

        switch (AcpiGbl_Optarg[0])
        {
        case 'a':



            AslGbl_AsmOutputFlag = TRUE;
            break;

        case 'c':



            AslGbl_C_OutputFlag = TRUE;
            break;

        case 'o':



            AslGbl_C_OffsetTableFlag = TRUE;
            break;

        default:

            printf ("Unknown option: -s%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 't':

        switch (AcpiGbl_Optarg[0])
        {
        case 'a':

            AslGbl_HexOutputFlag = HEX_OUTPUT_ASM;
            break;

        case 'c':

            AslGbl_HexOutputFlag = HEX_OUTPUT_C;
            break;

    case 'p':

            AslGbl_DtLexBisonPrototype = TRUE;
            break;

        case 's':

            AslGbl_HexOutputFlag = HEX_OUTPUT_ASL;
            break;

        default:

            printf ("Unknown option: -t%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'T':

        AslGbl_DoTemplates = TRUE;
        break;

    case 'v':

        switch (AcpiGbl_Optarg[0])
        {
        case '^':

            printf (ACPI_COMMON_SIGNON (ASL_COMPILER_NAME));
            exit (0);

        case 'a':



            AslGbl_NoErrors = TRUE;
            break;

        case 'e':



            AslGbl_DisplayRemarks = FALSE;
            AslGbl_DisplayWarnings = FALSE;
            break;

        case 'i':
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



            if (AcpiGetoptArgument (argc, argv))
            {
                return (-1);
            }

            Status = AslDisableException (AcpiGbl_Optarg);
            if (ACPI_FAILURE (Status))
            {
                return (-1);
            }
            break;

        case 'x':



            if (AcpiGetoptArgument (argc, argv))
            {
                return (-1);
            }

            Status = AslExpectException (AcpiGbl_Optarg);
            if (ACPI_FAILURE (Status))
            {
                return (-1);
            }
            break;

        default:

            printf ("Unknown option: -v%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'w':

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



            if (AcpiGetoptArgument (argc, argv))
            {
                return (-1);
            }

            Status = AslElevateException (AcpiGbl_Optarg);
            if (ACPI_FAILURE (Status))
            {
                return (-1);
            }
            break;


        default:

            printf ("Unknown option: -w%s\n", AcpiGbl_Optarg);
            return (-1);
        }
        break;

    case 'x':

        AcpiDbgLevel = strtoul (AcpiGbl_Optarg, ((void*)0), 16);
        break;

    case 'z':

        AslGbl_UseOriginalCompilerId = TRUE;
        break;

    default:

        return (-1);
    }

    return (0);
}
