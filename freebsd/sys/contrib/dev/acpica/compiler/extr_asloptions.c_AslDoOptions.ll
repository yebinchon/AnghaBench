; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloptions.c_AslDoOptions.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloptions.c_AslDoOptions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ASL_SUPPORTED_OPTIONS = common dso_local global i32 0, align 4
@ACPI_OPT_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Nested command files are not supported\0A\00", align 1
@AcpiGbl_Optarg = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@AslGbl_EnableReferenceTypechecking = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"Unknown option: -a%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Debug ASL to ASL+ conversion\0A\00", align 1
@AslGbl_DoAslConversion = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@AslGbl_FoldConstants = common dso_local global i8* null, align 8
@AslGbl_IntegerOptimizationFlag = common dso_local global i8* null, align 8
@AslGbl_ReferenceOptimizationFlag = common dso_local global i8* null, align 8
@AslGbl_OptimizeTrivialParseNodes = common dso_local global i8* null, align 8
@AcpiGbl_CaptureComments = common dso_local global i8* null, align 8
@AcpiGbl_DoDisassemblerOptimizations = common dso_local global i8* null, align 8
@AcpiGbl_DebugAslConversion = common dso_local global i8* null, align 8
@AcpiGbl_DmEmitExternalOpcodes = common dso_local global i8* null, align 8
@AslGbl_DoExternalsInPlace = common dso_local global i8* null, align 8
@AslCompilerdebug = common dso_local global i32 0, align 4
@DtParserdebug = common dso_local global i32 0, align 4
@PrParserdebug = common dso_local global i32 0, align 4
@AslGbl_DebugFlag = common dso_local global i8* null, align 8
@AslGbl_KeepPreprocessorTempFile = common dso_local global i8* null, align 8
@AslGbl_PruneParseTree = common dso_local global i8* null, align 8
@AslGbl_PruneDepth = common dso_local global i8* null, align 8
@AslGbl_PruneType = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Unknown option: -b%s\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"Convert ASL to ASL+ with comments\0A\00", align 1
@AslGbl_NoResourceChecking = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [22 x i8] c"Unknown option: -c%s\0A\00", align 1
@AslGbl_DoCompile = common dso_local global i8* null, align 8
@AslGbl_DisassembleAll = common dso_local global i8* null, align 8
@AcpiGbl_NoResourceDisassembly = common dso_local global i8* null, align 8
@AcpiGbl_ForceAmlDisassembly = common dso_local global i8* null, align 8
@AcpiGbl_CstyleDisassembly = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"Unknown option: -d%s\0A\00", align 1
@AcpiGbl_DisasmFlag = common dso_local global i8* null, align 8
@AcpiGbl_Optind = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"Could not add %s to external list\0A\00", align 1
@AslGbl_IgnoreErrors = common dso_local global i8* null, align 8
@AslGbl_ExternalRefFilename = common dso_local global i8* null, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"Unknown option: -f%s\0A\00", align 1
@AslGbl_CompileGeneric = common dso_local global i8* null, align 8
@.str.9 = private unnamed_addr constant [55 x i8] c"-g option is deprecated, use acpidump utility instead\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Unknown option: -h%s\0A\00", align 1
@AslGbl_AsmIncludeOutputFlag = common dso_local global i8* null, align 8
@AslGbl_C_IncludeOutputFlag = common dso_local global i8* null, align 8
@AcpiGbl_IgnoreNoopOperator = common dso_local global i8* null, align 8
@.str.11 = private unnamed_addr constant [22 x i8] c"Unknown option: -i%s\0A\00", align 1
@AslGbl_ListingFlag = common dso_local global i8* null, align 8
@AcpiGbl_DmOpt_Listing = common dso_local global i8* null, align 8
@AslGbl_PreprocessorOutputFlag = common dso_local global i8* null, align 8
@AslGbl_MapfileFlag = common dso_local global i8* null, align 8
@AslGbl_NsOutputFlag = common dso_local global i8* null, align 8
@AslGbl_SourceOutputFlag = common dso_local global i8* null, align 8
@AslGbl_CrossReferenceOutput = common dso_local global i8* null, align 8
@.str.12 = private unnamed_addr constant [22 x i8] c"Unknown option: -l%s\0A\00", align 1
@AslGbl_LineBufferSize = common dso_local global i32 0, align 4
@ASL_DEFAULT_LINE_BUFFER_SIZE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [22 x i8] c"Line Buffer Size: %u\0A\00", align 1
@AslGbl_ParseOnlyFlag = common dso_local global i8* null, align 8
@AslGbl_CompileTimesFlag = common dso_local global i8* null, align 8
@AslGbl_DoTypechecking = common dso_local global i8* null, align 8
@AslGbl_PreprocessOnly = common dso_local global i8* null, align 8
@AslGbl_PreprocessFlag = common dso_local global i8* null, align 8
@.str.14 = private unnamed_addr constant [22 x i8] c"Unknown option: -P%s\0A\00", align 1
@AslGbl_OutputFilenamePrefix = common dso_local global i8* null, align 8
@AslGbl_UseDefaultAmlFilename = common dso_local global i8* null, align 8
@AslGbl_RevisionOverride = common dso_local global i8* null, align 8
@AslGbl_AsmOutputFlag = common dso_local global i8* null, align 8
@AslGbl_C_OutputFlag = common dso_local global i8* null, align 8
@AslGbl_C_OffsetTableFlag = common dso_local global i8* null, align 8
@.str.15 = private unnamed_addr constant [22 x i8] c"Unknown option: -s%s\0A\00", align 1
@HEX_OUTPUT_ASM = common dso_local global i32 0, align 4
@AslGbl_HexOutputFlag = common dso_local global i32 0, align 4
@HEX_OUTPUT_C = common dso_local global i32 0, align 4
@AslGbl_DtLexBisonPrototype = common dso_local global i8* null, align 8
@HEX_OUTPUT_ASL = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [22 x i8] c"Unknown option: -t%s\0A\00", align 1
@AslGbl_DoTemplates = common dso_local global i8* null, align 8
@ASL_COMPILER_NAME = common dso_local global i32 0, align 4
@AslGbl_NoErrors = common dso_local global i8* null, align 8
@AslGbl_DisplayRemarks = common dso_local global i8* null, align 8
@AslGbl_DisplayWarnings = common dso_local global i8* null, align 8
@AslGbl_VerboseErrors = common dso_local global i8* null, align 8
@AslGbl_DoSignon = common dso_local global i8* null, align 8
@AslGbl_DisplayOptimizations = common dso_local global i8* null, align 8
@AslGbl_VerboseTemplates = common dso_local global i8* null, align 8
@.str.17 = private unnamed_addr constant [22 x i8] c"Unknown option: -v%s\0A\00", align 1
@ASL_WARNING = common dso_local global i32 0, align 4
@AslGbl_WarningLevel = common dso_local global i32 0, align 4
@ASL_WARNING2 = common dso_local global i32 0, align 4
@ASL_WARNING3 = common dso_local global i32 0, align 4
@AslGbl_WarningsAsErrors = common dso_local global i8* null, align 8
@.str.18 = private unnamed_addr constant [22 x i8] c"Unknown option: -w%s\0A\00", align 1
@AcpiDbgLevel = common dso_local global i32 0, align 4
@AslGbl_UseOriginalCompilerId = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i32)* @AslDoOptions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AslDoOptions(i32 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %10

10:                                               ; preds = %477, %3
  %11 = load i32, i32* %5, align 4
  %12 = load i8**, i8*** %6, align 8
  %13 = load i32, i32* @ASL_SUPPORTED_OPTIONS, align 4
  %14 = call i32 @AcpiGetopt(i32 %11, i8** %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* @ACPI_OPT_END, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %478

17:                                               ; preds = %10
  %18 = load i32, i32* %9, align 4
  switch i32 %18, label %476 [
    i32 64, label %19
    i32 97, label %30
    i32 98, label %41
    i32 99, label %90
    i32 100, label %112
    i32 68, label %135
    i32 101, label %139
    i32 102, label %182
    i32 71, label %201
    i32 103, label %203
    i32 104, label %206
    i32 73, label %232
    i32 105, label %235
    i32 108, label %250
    i32 109, label %272
    i32 110, label %284
    i32 111, label %286
    i32 80, label %316
    i32 112, label %330
    i32 113, label %335
    i32 114, label %343
    i32 115, label %348
    i32 116, label %363
    i32 84, label %380
    i32 118, label %382
    i32 119, label %440
    i32 120, label %471
    i32 122, label %474
  ]

19:                                               ; preds = %17
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %479

24:                                               ; preds = %19
  %25 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %26 = call i32 @AslDoResponseFile(i8* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 -1, i32* %4, align 4
  br label %479

29:                                               ; preds = %24
  br label %477

30:                                               ; preds = %17
  %31 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 0
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  switch i32 %34, label %37 [
    i32 114, label %35
  ]

35:                                               ; preds = %30
  %36 = load i8*, i8** @TRUE, align 8
  store i8* %36, i8** @AslGbl_EnableReferenceTypechecking, align 8
  br label %40

37:                                               ; preds = %30
  %38 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %38)
  store i32 -1, i32* %4, align 4
  br label %479

40:                                               ; preds = %35
  br label %477

41:                                               ; preds = %17
  %42 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 0
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  switch i32 %45, label %86 [
    i32 99, label %46
    i32 102, label %58
    i32 112, label %61
    i32 115, label %73
    i32 116, label %75
  ]

46:                                               ; preds = %41
  %47 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i8*, i8** @TRUE, align 8
  store i8* %48, i8** @AslGbl_DoAslConversion, align 8
  %49 = load i8*, i8** @FALSE, align 8
  store i8* %49, i8** @AslGbl_FoldConstants, align 8
  %50 = load i8*, i8** @FALSE, align 8
  store i8* %50, i8** @AslGbl_IntegerOptimizationFlag, align 8
  %51 = load i8*, i8** @FALSE, align 8
  store i8* %51, i8** @AslGbl_ReferenceOptimizationFlag, align 8
  %52 = load i8*, i8** @FALSE, align 8
  store i8* %52, i8** @AslGbl_OptimizeTrivialParseNodes, align 8
  %53 = load i8*, i8** @TRUE, align 8
  store i8* %53, i8** @AcpiGbl_CaptureComments, align 8
  %54 = load i8*, i8** @FALSE, align 8
  store i8* %54, i8** @AcpiGbl_DoDisassemblerOptimizations, align 8
  %55 = load i8*, i8** @TRUE, align 8
  store i8* %55, i8** @AcpiGbl_DebugAslConversion, align 8
  %56 = load i8*, i8** @TRUE, align 8
  store i8* %56, i8** @AcpiGbl_DmEmitExternalOpcodes, align 8
  %57 = load i8*, i8** @TRUE, align 8
  store i8* %57, i8** @AslGbl_DoExternalsInPlace, align 8
  store i32 0, i32* %4, align 4
  br label %479

58:                                               ; preds = %41
  store i32 1, i32* @AslCompilerdebug, align 4
  store i32 1, i32* @DtParserdebug, align 4
  store i32 1, i32* @PrParserdebug, align 4
  %59 = load i8*, i8** @TRUE, align 8
  store i8* %59, i8** @AslGbl_DebugFlag, align 8
  %60 = load i8*, i8** @TRUE, align 8
  store i8* %60, i8** @AslGbl_KeepPreprocessorTempFile, align 8
  br label %89

61:                                               ; preds = %41
  %62 = load i32, i32* %5, align 4
  %63 = load i8**, i8*** %6, align 8
  %64 = call i32 @AcpiGetoptArgument(i32 %62, i8** %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 -1, i32* %4, align 4
  br label %479

67:                                               ; preds = %61
  %68 = load i8*, i8** @TRUE, align 8
  store i8* %68, i8** @AslGbl_PruneParseTree, align 8
  %69 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %70 = call i32 @strtoul(i8* %69, i32* null, i32 0)
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  store i8* %72, i8** @AslGbl_PruneDepth, align 8
  br label %89

73:                                               ; preds = %41
  %74 = load i8*, i8** @TRUE, align 8
  store i8* %74, i8** @AslGbl_DebugFlag, align 8
  br label %89

75:                                               ; preds = %41
  %76 = load i32, i32* %5, align 4
  %77 = load i8**, i8*** %6, align 8
  %78 = call i32 @AcpiGetoptArgument(i32 %76, i8** %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %75
  store i32 -1, i32* %4, align 4
  br label %479

81:                                               ; preds = %75
  %82 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %83 = call i32 @strtoul(i8* %82, i32* null, i32 0)
  %84 = sext i32 %83 to i64
  %85 = inttoptr i64 %84 to i8*
  store i8* %85, i8** @AslGbl_PruneType, align 8
  br label %89

86:                                               ; preds = %41
  %87 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %88 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %87)
  store i32 -1, i32* %4, align 4
  br label %479

89:                                               ; preds = %81, %73, %67, %58
  br label %477

90:                                               ; preds = %17
  %91 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 0
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  switch i32 %94, label %108 [
    i32 97, label %95
    i32 114, label %106
  ]

95:                                               ; preds = %90
  %96 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %97 = load i8*, i8** @TRUE, align 8
  store i8* %97, i8** @AslGbl_DoAslConversion, align 8
  %98 = load i8*, i8** @FALSE, align 8
  store i8* %98, i8** @AslGbl_FoldConstants, align 8
  %99 = load i8*, i8** @FALSE, align 8
  store i8* %99, i8** @AslGbl_IntegerOptimizationFlag, align 8
  %100 = load i8*, i8** @FALSE, align 8
  store i8* %100, i8** @AslGbl_ReferenceOptimizationFlag, align 8
  %101 = load i8*, i8** @FALSE, align 8
  store i8* %101, i8** @AslGbl_OptimizeTrivialParseNodes, align 8
  %102 = load i8*, i8** @TRUE, align 8
  store i8* %102, i8** @AcpiGbl_CaptureComments, align 8
  %103 = load i8*, i8** @FALSE, align 8
  store i8* %103, i8** @AcpiGbl_DoDisassemblerOptimizations, align 8
  %104 = load i8*, i8** @TRUE, align 8
  store i8* %104, i8** @AcpiGbl_DmEmitExternalOpcodes, align 8
  %105 = load i8*, i8** @TRUE, align 8
  store i8* %105, i8** @AslGbl_DoExternalsInPlace, align 8
  store i32 0, i32* %4, align 4
  br label %479

106:                                              ; preds = %90
  %107 = load i8*, i8** @TRUE, align 8
  store i8* %107, i8** @AslGbl_NoResourceChecking, align 8
  br label %111

108:                                              ; preds = %90
  %109 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %110 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %109)
  store i32 -1, i32* %4, align 4
  br label %479

111:                                              ; preds = %106
  br label %477

112:                                              ; preds = %17
  %113 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %114 = getelementptr inbounds i8, i8* %113, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = sext i8 %115 to i32
  switch i32 %116, label %130 [
    i32 94, label %117
    i32 97, label %119
    i32 98, label %122
    i32 99, label %124
    i32 102, label %125
    i32 108, label %127
  ]

117:                                              ; preds = %112
  %118 = load i8*, i8** @FALSE, align 8
  store i8* %118, i8** @AslGbl_DoCompile, align 8
  br label %133

119:                                              ; preds = %112
  %120 = load i8*, i8** @FALSE, align 8
  store i8* %120, i8** @AslGbl_DoCompile, align 8
  %121 = load i8*, i8** @TRUE, align 8
  store i8* %121, i8** @AslGbl_DisassembleAll, align 8
  br label %133

122:                                              ; preds = %112
  %123 = load i8*, i8** @TRUE, align 8
  store i8* %123, i8** @AcpiGbl_NoResourceDisassembly, align 8
  br label %133

124:                                              ; preds = %112
  br label %133

125:                                              ; preds = %112
  %126 = load i8*, i8** @TRUE, align 8
  store i8* %126, i8** @AcpiGbl_ForceAmlDisassembly, align 8
  br label %133

127:                                              ; preds = %112
  %128 = load i8*, i8** @FALSE, align 8
  store i8* %128, i8** @AslGbl_DoCompile, align 8
  %129 = load i8*, i8** @FALSE, align 8
  store i8* %129, i8** @AcpiGbl_CstyleDisassembly, align 8
  br label %133

130:                                              ; preds = %112
  %131 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %132 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i8* %131)
  store i32 -1, i32* %4, align 4
  br label %479

133:                                              ; preds = %127, %125, %124, %122, %119, %117
  %134 = load i8*, i8** @TRUE, align 8
  store i8* %134, i8** @AcpiGbl_DisasmFlag, align 8
  br label %477

135:                                              ; preds = %17
  %136 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %137 = load i8*, i8** @TRUE, align 8
  %138 = call i32 @PrAddDefine(i8* %136, i32* null, i8* %137)
  br label %477

139:                                              ; preds = %17
  %140 = load i64, i64* @AcpiGbl_Optind, align 8
  %141 = add i64 %140, -1
  store i64 %141, i64* @AcpiGbl_Optind, align 8
  %142 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %143 = load i8**, i8*** %6, align 8
  %144 = load i64, i64* @AcpiGbl_Optind, align 8
  %145 = getelementptr inbounds i8*, i8** %143, i64 %144
  store i8* %142, i8** %145, align 8
  br label %146

146:                                              ; preds = %178, %139
  %147 = load i8**, i8*** %6, align 8
  %148 = load i64, i64* @AcpiGbl_Optind, align 8
  %149 = getelementptr inbounds i8*, i8** %147, i64 %148
  %150 = load i8*, i8** %149, align 8
  %151 = icmp ne i8* %150, null
  br i1 %151, label %152, label %161

152:                                              ; preds = %146
  %153 = load i8**, i8*** %6, align 8
  %154 = load i64, i64* @AcpiGbl_Optind, align 8
  %155 = getelementptr inbounds i8*, i8** %153, i64 %154
  %156 = load i8*, i8** %155, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 0
  %158 = load i8, i8* %157, align 1
  %159 = sext i8 %158 to i32
  %160 = icmp ne i32 %159, 45
  br label %161

161:                                              ; preds = %152, %146
  %162 = phi i1 [ false, %146 ], [ %160, %152 ]
  br i1 %162, label %163, label %181

163:                                              ; preds = %161
  %164 = load i8**, i8*** %6, align 8
  %165 = load i64, i64* @AcpiGbl_Optind, align 8
  %166 = getelementptr inbounds i8*, i8** %164, i64 %165
  %167 = load i8*, i8** %166, align 8
  %168 = call i32 @AcpiDmAddToExternalFileList(i8* %167)
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* %8, align 4
  %170 = call i32 @ACPI_FAILURE(i32 %169)
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %163
  %173 = load i8**, i8*** %6, align 8
  %174 = load i64, i64* @AcpiGbl_Optind, align 8
  %175 = getelementptr inbounds i8*, i8** %173, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i8* %176)
  store i32 -1, i32* %4, align 4
  br label %479

178:                                              ; preds = %163
  %179 = load i64, i64* @AcpiGbl_Optind, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* @AcpiGbl_Optind, align 8
  br label %146

181:                                              ; preds = %161
  br label %477

182:                                              ; preds = %17
  %183 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %184 = getelementptr inbounds i8, i8* %183, i64 0
  %185 = load i8, i8* %184, align 1
  %186 = sext i8 %185 to i32
  switch i32 %186, label %197 [
    i32 94, label %187
    i32 101, label %189
  ]

187:                                              ; preds = %182
  %188 = load i8*, i8** @TRUE, align 8
  store i8* %188, i8** @AslGbl_IgnoreErrors, align 8
  br label %200

189:                                              ; preds = %182
  %190 = load i32, i32* %5, align 4
  %191 = load i8**, i8*** %6, align 8
  %192 = call i32 @AcpiGetoptArgument(i32 %190, i8** %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %189
  store i32 -1, i32* %4, align 4
  br label %479

195:                                              ; preds = %189
  %196 = load i8*, i8** @AcpiGbl_Optarg, align 8
  store i8* %196, i8** @AslGbl_ExternalRefFilename, align 8
  br label %200

197:                                              ; preds = %182
  %198 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i8* %198)
  store i32 -1, i32* %4, align 4
  br label %479

200:                                              ; preds = %195, %187
  br label %477

201:                                              ; preds = %17
  %202 = load i8*, i8** @TRUE, align 8
  store i8* %202, i8** @AslGbl_CompileGeneric, align 8
  br label %477

203:                                              ; preds = %17
  %204 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0))
  %205 = call i32 @exit(i32 1) #3
  unreachable

206:                                              ; preds = %17
  %207 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %208 = getelementptr inbounds i8, i8* %207, i64 0
  %209 = load i8, i8* %208, align 1
  %210 = sext i8 %209 to i32
  switch i32 %210, label %229 [
    i32 94, label %211
    i32 99, label %214
    i32 100, label %217
    i32 102, label %220
    i32 114, label %223
    i32 116, label %226
  ]

211:                                              ; preds = %206
  %212 = call i32 (...) @Usage()
  %213 = call i32 @exit(i32 0) #3
  unreachable

214:                                              ; preds = %206
  %215 = call i32 (...) @UtDisplayConstantOpcodes()
  %216 = call i32 @exit(i32 0) #3
  unreachable

217:                                              ; preds = %206
  %218 = call i32 (...) @AslDisassemblyHelp()
  %219 = call i32 @exit(i32 0) #3
  unreachable

220:                                              ; preds = %206
  %221 = call i32 (...) @AslFilenameHelp()
  %222 = call i32 @exit(i32 0) #3
  unreachable

223:                                              ; preds = %206
  %224 = call i32 (...) @ApDisplayReservedNames()
  %225 = call i32 @exit(i32 0) #3
  unreachable

226:                                              ; preds = %206
  %227 = call i32 (...) @UtDisplaySupportedTables()
  %228 = call i32 @exit(i32 0) #3
  unreachable

229:                                              ; preds = %206
  %230 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %231 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i8* %230)
  store i32 -1, i32* %4, align 4
  br label %479

232:                                              ; preds = %17
  %233 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %234 = call i32 @FlAddIncludeDirectory(i8* %233)
  br label %477

235:                                              ; preds = %17
  %236 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %237 = getelementptr inbounds i8, i8* %236, i64 0
  %238 = load i8, i8* %237, align 1
  %239 = sext i8 %238 to i32
  switch i32 %239, label %246 [
    i32 97, label %240
    i32 99, label %242
    i32 110, label %244
  ]

240:                                              ; preds = %235
  %241 = load i8*, i8** @TRUE, align 8
  store i8* %241, i8** @AslGbl_AsmIncludeOutputFlag, align 8
  br label %249

242:                                              ; preds = %235
  %243 = load i8*, i8** @TRUE, align 8
  store i8* %243, i8** @AslGbl_C_IncludeOutputFlag, align 8
  br label %249

244:                                              ; preds = %235
  %245 = load i8*, i8** @TRUE, align 8
  store i8* %245, i8** @AcpiGbl_IgnoreNoopOperator, align 8
  br label %249

246:                                              ; preds = %235
  %247 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %248 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %247)
  store i32 -1, i32* %4, align 4
  br label %479

249:                                              ; preds = %244, %242, %240
  br label %477

250:                                              ; preds = %17
  %251 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 0
  %253 = load i8, i8* %252, align 1
  %254 = sext i8 %253 to i32
  switch i32 %254, label %268 [
    i32 94, label %255
    i32 105, label %258
    i32 109, label %260
    i32 110, label %262
    i32 115, label %264
    i32 120, label %266
  ]

255:                                              ; preds = %250
  %256 = load i8*, i8** @TRUE, align 8
  store i8* %256, i8** @AslGbl_ListingFlag, align 8
  %257 = load i8*, i8** @TRUE, align 8
  store i8* %257, i8** @AcpiGbl_DmOpt_Listing, align 8
  br label %271

258:                                              ; preds = %250
  %259 = load i8*, i8** @TRUE, align 8
  store i8* %259, i8** @AslGbl_PreprocessorOutputFlag, align 8
  br label %271

260:                                              ; preds = %250
  %261 = load i8*, i8** @TRUE, align 8
  store i8* %261, i8** @AslGbl_MapfileFlag, align 8
  br label %271

262:                                              ; preds = %250
  %263 = load i8*, i8** @TRUE, align 8
  store i8* %263, i8** @AslGbl_NsOutputFlag, align 8
  br label %271

264:                                              ; preds = %250
  %265 = load i8*, i8** @TRUE, align 8
  store i8* %265, i8** @AslGbl_SourceOutputFlag, align 8
  br label %271

266:                                              ; preds = %250
  %267 = load i8*, i8** @TRUE, align 8
  store i8* %267, i8** @AslGbl_CrossReferenceOutput, align 8
  br label %271

268:                                              ; preds = %250
  %269 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %270 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0), i8* %269)
  store i32 -1, i32* %4, align 4
  br label %479

271:                                              ; preds = %266, %264, %262, %260, %258, %255
  br label %477

272:                                              ; preds = %17
  %273 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %274 = call i32 @strtoul(i8* %273, i32* null, i32 0)
  %275 = mul nsw i32 %274, 1024
  store i32 %275, i32* @AslGbl_LineBufferSize, align 4
  %276 = load i32, i32* @AslGbl_LineBufferSize, align 4
  %277 = load i32, i32* @ASL_DEFAULT_LINE_BUFFER_SIZE, align 4
  %278 = icmp slt i32 %276, %277
  br i1 %278, label %279, label %281

279:                                              ; preds = %272
  %280 = load i32, i32* @ASL_DEFAULT_LINE_BUFFER_SIZE, align 4
  store i32 %280, i32* @AslGbl_LineBufferSize, align 4
  br label %281

281:                                              ; preds = %279, %272
  %282 = load i32, i32* @AslGbl_LineBufferSize, align 4
  %283 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i32 %282)
  br label %477

284:                                              ; preds = %17
  %285 = load i8*, i8** @TRUE, align 8
  store i8* %285, i8** @AslGbl_ParseOnlyFlag, align 8
  br label %477

286:                                              ; preds = %17
  %287 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %288 = getelementptr inbounds i8, i8* %287, i64 0
  %289 = load i8, i8* %288, align 1
  %290 = sext i8 %289 to i32
  switch i32 %290, label %312 [
    i32 97, label %291
    i32 99, label %296
    i32 100, label %298
    i32 101, label %300
    i32 69, label %302
    i32 102, label %304
    i32 105, label %306
    i32 110, label %308
    i32 116, label %310
  ]

291:                                              ; preds = %286
  %292 = load i8*, i8** @FALSE, align 8
  store i8* %292, i8** @AslGbl_FoldConstants, align 8
  %293 = load i8*, i8** @FALSE, align 8
  store i8* %293, i8** @AslGbl_IntegerOptimizationFlag, align 8
  %294 = load i8*, i8** @FALSE, align 8
  store i8* %294, i8** @AslGbl_ReferenceOptimizationFlag, align 8
  %295 = load i8*, i8** @FALSE, align 8
  store i8* %295, i8** @AslGbl_OptimizeTrivialParseNodes, align 8
  br label %315

296:                                              ; preds = %286
  %297 = load i8*, i8** @TRUE, align 8
  store i8* %297, i8** @AslGbl_CompileTimesFlag, align 8
  br label %315

298:                                              ; preds = %286
  %299 = load i8*, i8** @FALSE, align 8
  store i8* %299, i8** @AcpiGbl_DoDisassemblerOptimizations, align 8
  br label %315

300:                                              ; preds = %286
  %301 = load i8*, i8** @TRUE, align 8
  store i8* %301, i8** @AcpiGbl_DmEmitExternalOpcodes, align 8
  br label %315

302:                                              ; preds = %286
  %303 = load i8*, i8** @TRUE, align 8
  store i8* %303, i8** @AslGbl_DoExternalsInPlace, align 8
  br label %315

304:                                              ; preds = %286
  %305 = load i8*, i8** @FALSE, align 8
  store i8* %305, i8** @AslGbl_FoldConstants, align 8
  br label %315

306:                                              ; preds = %286
  %307 = load i8*, i8** @FALSE, align 8
  store i8* %307, i8** @AslGbl_IntegerOptimizationFlag, align 8
  br label %315

308:                                              ; preds = %286
  %309 = load i8*, i8** @FALSE, align 8
  store i8* %309, i8** @AslGbl_ReferenceOptimizationFlag, align 8
  br label %315

310:                                              ; preds = %286
  %311 = load i8*, i8** @FALSE, align 8
  store i8* %311, i8** @AslGbl_DoTypechecking, align 8
  br label %315

312:                                              ; preds = %286
  %313 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %314 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i8* %313)
  store i32 -1, i32* %4, align 4
  br label %479

315:                                              ; preds = %310, %308, %306, %304, %302, %300, %298, %296, %291
  br label %477

316:                                              ; preds = %17
  %317 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %318 = getelementptr inbounds i8, i8* %317, i64 0
  %319 = load i8, i8* %318, align 1
  %320 = sext i8 %319 to i32
  switch i32 %320, label %326 [
    i32 94, label %321
    i32 110, label %324
  ]

321:                                              ; preds = %316
  %322 = load i8*, i8** @TRUE, align 8
  store i8* %322, i8** @AslGbl_PreprocessOnly, align 8
  %323 = load i8*, i8** @TRUE, align 8
  store i8* %323, i8** @AslGbl_PreprocessorOutputFlag, align 8
  br label %329

324:                                              ; preds = %316
  %325 = load i8*, i8** @FALSE, align 8
  store i8* %325, i8** @AslGbl_PreprocessFlag, align 8
  br label %329

326:                                              ; preds = %316
  %327 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %328 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i8* %327)
  store i32 -1, i32* %4, align 4
  br label %479

329:                                              ; preds = %324, %321
  br label %477

330:                                              ; preds = %17
  %331 = load i8*, i8** @AcpiGbl_Optarg, align 8
  store i8* %331, i8** @AslGbl_OutputFilenamePrefix, align 8
  %332 = load i8*, i8** @AslGbl_OutputFilenamePrefix, align 8
  %333 = call i32 @UtConvertBackslashes(i8* %332)
  %334 = load i8*, i8** @FALSE, align 8
  store i8* %334, i8** @AslGbl_UseDefaultAmlFilename, align 8
  br label %477

335:                                              ; preds = %17
  %336 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %337 = load i8*, i8** @FALSE, align 8
  store i8* %337, i8** @AslGbl_FoldConstants, align 8
  %338 = load i8*, i8** @FALSE, align 8
  store i8* %338, i8** @AslGbl_IntegerOptimizationFlag, align 8
  %339 = load i8*, i8** @FALSE, align 8
  store i8* %339, i8** @AslGbl_ReferenceOptimizationFlag, align 8
  %340 = load i8*, i8** @FALSE, align 8
  store i8* %340, i8** @AslGbl_OptimizeTrivialParseNodes, align 8
  %341 = load i8*, i8** @TRUE, align 8
  store i8* %341, i8** @AslGbl_DoExternalsInPlace, align 8
  %342 = load i8*, i8** @TRUE, align 8
  store i8* %342, i8** @AcpiGbl_CaptureComments, align 8
  store i32 0, i32* %4, align 4
  br label %479

343:                                              ; preds = %17
  %344 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %345 = call i32 @strtoul(i8* %344, i32* null, i32 0)
  %346 = sext i32 %345 to i64
  %347 = inttoptr i64 %346 to i8*
  store i8* %347, i8** @AslGbl_RevisionOverride, align 8
  br label %477

348:                                              ; preds = %17
  %349 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %350 = getelementptr inbounds i8, i8* %349, i64 0
  %351 = load i8, i8* %350, align 1
  %352 = sext i8 %351 to i32
  switch i32 %352, label %359 [
    i32 97, label %353
    i32 99, label %355
    i32 111, label %357
  ]

353:                                              ; preds = %348
  %354 = load i8*, i8** @TRUE, align 8
  store i8* %354, i8** @AslGbl_AsmOutputFlag, align 8
  br label %362

355:                                              ; preds = %348
  %356 = load i8*, i8** @TRUE, align 8
  store i8* %356, i8** @AslGbl_C_OutputFlag, align 8
  br label %362

357:                                              ; preds = %348
  %358 = load i8*, i8** @TRUE, align 8
  store i8* %358, i8** @AslGbl_C_OffsetTableFlag, align 8
  br label %362

359:                                              ; preds = %348
  %360 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %361 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0), i8* %360)
  store i32 -1, i32* %4, align 4
  br label %479

362:                                              ; preds = %357, %355, %353
  br label %477

363:                                              ; preds = %17
  %364 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %365 = getelementptr inbounds i8, i8* %364, i64 0
  %366 = load i8, i8* %365, align 1
  %367 = sext i8 %366 to i32
  switch i32 %367, label %376 [
    i32 97, label %368
    i32 99, label %370
    i32 112, label %372
    i32 115, label %374
  ]

368:                                              ; preds = %363
  %369 = load i32, i32* @HEX_OUTPUT_ASM, align 4
  store i32 %369, i32* @AslGbl_HexOutputFlag, align 4
  br label %379

370:                                              ; preds = %363
  %371 = load i32, i32* @HEX_OUTPUT_C, align 4
  store i32 %371, i32* @AslGbl_HexOutputFlag, align 4
  br label %379

372:                                              ; preds = %363
  %373 = load i8*, i8** @TRUE, align 8
  store i8* %373, i8** @AslGbl_DtLexBisonPrototype, align 8
  br label %379

374:                                              ; preds = %363
  %375 = load i32, i32* @HEX_OUTPUT_ASL, align 4
  store i32 %375, i32* @AslGbl_HexOutputFlag, align 4
  br label %379

376:                                              ; preds = %363
  %377 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %378 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.16, i64 0, i64 0), i8* %377)
  store i32 -1, i32* %4, align 4
  br label %479

379:                                              ; preds = %374, %372, %370, %368
  br label %477

380:                                              ; preds = %17
  %381 = load i8*, i8** @TRUE, align 8
  store i8* %381, i8** @AslGbl_DoTemplates, align 8
  br label %477

382:                                              ; preds = %17
  %383 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %384 = getelementptr inbounds i8, i8* %383, i64 0
  %385 = load i8, i8* %384, align 1
  %386 = sext i8 %385 to i32
  switch i32 %386, label %436 [
    i32 94, label %387
    i32 97, label %392
    i32 101, label %394
    i32 105, label %397
    i32 111, label %400
    i32 114, label %402
    i32 115, label %404
    i32 116, label %406
    i32 119, label %408
    i32 120, label %422
  ]

387:                                              ; preds = %382
  %388 = load i32, i32* @ASL_COMPILER_NAME, align 4
  %389 = call i8* @ACPI_COMMON_SIGNON(i32 %388)
  %390 = call i32 (i8*, ...) @printf(i8* %389)
  %391 = call i32 @exit(i32 0) #3
  unreachable

392:                                              ; preds = %382
  %393 = load i8*, i8** @TRUE, align 8
  store i8* %393, i8** @AslGbl_NoErrors, align 8
  br label %439

394:                                              ; preds = %382
  %395 = load i8*, i8** @FALSE, align 8
  store i8* %395, i8** @AslGbl_DisplayRemarks, align 8
  %396 = load i8*, i8** @FALSE, align 8
  store i8* %396, i8** @AslGbl_DisplayWarnings, align 8
  br label %439

397:                                              ; preds = %382
  %398 = load i8*, i8** @FALSE, align 8
  store i8* %398, i8** @AslGbl_VerboseErrors, align 8
  %399 = load i8*, i8** @FALSE, align 8
  store i8* %399, i8** @AslGbl_DoSignon, align 8
  br label %439

400:                                              ; preds = %382
  %401 = load i8*, i8** @TRUE, align 8
  store i8* %401, i8** @AslGbl_DisplayOptimizations, align 8
  br label %439

402:                                              ; preds = %382
  %403 = load i8*, i8** @FALSE, align 8
  store i8* %403, i8** @AslGbl_DisplayRemarks, align 8
  br label %439

404:                                              ; preds = %382
  %405 = load i8*, i8** @FALSE, align 8
  store i8* %405, i8** @AslGbl_DoSignon, align 8
  br label %439

406:                                              ; preds = %382
  %407 = load i8*, i8** @TRUE, align 8
  store i8* %407, i8** @AslGbl_VerboseTemplates, align 8
  br label %439

408:                                              ; preds = %382
  %409 = load i32, i32* %5, align 4
  %410 = load i8**, i8*** %6, align 8
  %411 = call i32 @AcpiGetoptArgument(i32 %409, i8** %410)
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %414

413:                                              ; preds = %408
  store i32 -1, i32* %4, align 4
  br label %479

414:                                              ; preds = %408
  %415 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %416 = call i32 @AslDisableException(i8* %415)
  store i32 %416, i32* %8, align 4
  %417 = load i32, i32* %8, align 4
  %418 = call i32 @ACPI_FAILURE(i32 %417)
  %419 = icmp ne i32 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %414
  store i32 -1, i32* %4, align 4
  br label %479

421:                                              ; preds = %414
  br label %439

422:                                              ; preds = %382
  %423 = load i32, i32* %5, align 4
  %424 = load i8**, i8*** %6, align 8
  %425 = call i32 @AcpiGetoptArgument(i32 %423, i8** %424)
  %426 = icmp ne i32 %425, 0
  br i1 %426, label %427, label %428

427:                                              ; preds = %422
  store i32 -1, i32* %4, align 4
  br label %479

428:                                              ; preds = %422
  %429 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %430 = call i32 @AslExpectException(i8* %429)
  store i32 %430, i32* %8, align 4
  %431 = load i32, i32* %8, align 4
  %432 = call i32 @ACPI_FAILURE(i32 %431)
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %435

434:                                              ; preds = %428
  store i32 -1, i32* %4, align 4
  br label %479

435:                                              ; preds = %428
  br label %439

436:                                              ; preds = %382
  %437 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %438 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.17, i64 0, i64 0), i8* %437)
  store i32 -1, i32* %4, align 4
  br label %479

439:                                              ; preds = %435, %421, %406, %404, %402, %400, %397, %394, %392
  br label %477

440:                                              ; preds = %17
  %441 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %442 = getelementptr inbounds i8, i8* %441, i64 0
  %443 = load i8, i8* %442, align 1
  %444 = sext i8 %443 to i32
  switch i32 %444, label %467 [
    i32 49, label %445
    i32 50, label %447
    i32 51, label %449
    i32 101, label %451
    i32 119, label %453
  ]

445:                                              ; preds = %440
  %446 = load i32, i32* @ASL_WARNING, align 4
  store i32 %446, i32* @AslGbl_WarningLevel, align 4
  br label %470

447:                                              ; preds = %440
  %448 = load i32, i32* @ASL_WARNING2, align 4
  store i32 %448, i32* @AslGbl_WarningLevel, align 4
  br label %470

449:                                              ; preds = %440
  %450 = load i32, i32* @ASL_WARNING3, align 4
  store i32 %450, i32* @AslGbl_WarningLevel, align 4
  br label %470

451:                                              ; preds = %440
  %452 = load i8*, i8** @TRUE, align 8
  store i8* %452, i8** @AslGbl_WarningsAsErrors, align 8
  br label %470

453:                                              ; preds = %440
  %454 = load i32, i32* %5, align 4
  %455 = load i8**, i8*** %6, align 8
  %456 = call i32 @AcpiGetoptArgument(i32 %454, i8** %455)
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %459

458:                                              ; preds = %453
  store i32 -1, i32* %4, align 4
  br label %479

459:                                              ; preds = %453
  %460 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %461 = call i32 @AslElevateException(i8* %460)
  store i32 %461, i32* %8, align 4
  %462 = load i32, i32* %8, align 4
  %463 = call i32 @ACPI_FAILURE(i32 %462)
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %466

465:                                              ; preds = %459
  store i32 -1, i32* %4, align 4
  br label %479

466:                                              ; preds = %459
  br label %470

467:                                              ; preds = %440
  %468 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %469 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.18, i64 0, i64 0), i8* %468)
  store i32 -1, i32* %4, align 4
  br label %479

470:                                              ; preds = %466, %451, %449, %447, %445
  br label %477

471:                                              ; preds = %17
  %472 = load i8*, i8** @AcpiGbl_Optarg, align 8
  %473 = call i32 @strtoul(i8* %472, i32* null, i32 16)
  store i32 %473, i32* @AcpiDbgLevel, align 4
  br label %477

474:                                              ; preds = %17
  %475 = load i8*, i8** @TRUE, align 8
  store i8* %475, i8** @AslGbl_UseOriginalCompilerId, align 8
  br label %477

476:                                              ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %479

477:                                              ; preds = %474, %471, %470, %439, %380, %379, %362, %343, %330, %329, %315, %284, %281, %271, %249, %232, %201, %200, %181, %135, %133, %111, %89, %40, %29
  br label %10

478:                                              ; preds = %10
  store i32 0, i32* %4, align 4
  br label %479

479:                                              ; preds = %478, %476, %467, %465, %458, %436, %434, %427, %420, %413, %376, %359, %335, %326, %312, %268, %246, %229, %197, %194, %172, %130, %108, %95, %86, %80, %66, %46, %37, %28, %22
  %480 = load i32, i32* %4, align 4
  ret i32 %480
}

declare dso_local i32 @AcpiGetopt(i32, i8**, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @AslDoResponseFile(i8*) #1

declare dso_local i32 @AcpiGetoptArgument(i32, i8**) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @PrAddDefine(i8*, i32*, i8*) #1

declare dso_local i32 @AcpiDmAddToExternalFileList(i8*) #1

declare dso_local i32 @ACPI_FAILURE(i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @Usage(...) #1

declare dso_local i32 @UtDisplayConstantOpcodes(...) #1

declare dso_local i32 @AslDisassemblyHelp(...) #1

declare dso_local i32 @AslFilenameHelp(...) #1

declare dso_local i32 @ApDisplayReservedNames(...) #1

declare dso_local i32 @UtDisplaySupportedTables(...) #1

declare dso_local i32 @FlAddIncludeDirectory(i8*) #1

declare dso_local i32 @UtConvertBackslashes(i8*) #1

declare dso_local i8* @ACPI_COMMON_SIGNON(i32) #1

declare dso_local i32 @AslDisableException(i8*) #1

declare dso_local i32 @AslExpectException(i8*) #1

declare dso_local i32 @AslElevateException(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
