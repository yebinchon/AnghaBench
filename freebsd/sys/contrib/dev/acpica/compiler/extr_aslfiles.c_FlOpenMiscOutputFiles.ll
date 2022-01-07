; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfiles.c_FlOpenMiscOutputFiles.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfiles.c_FlOpenMiscOutputFiles.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i32 }

@AslGbl_MapfileFlag = common dso_local global i64 0, align 8
@FILE_SUFFIX_MAP = common dso_local global i32 0, align 4
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_LISTING_FILENAME = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@ASL_FILE_MAP_OUTPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"w+t\00", align 1
@AslGbl_FileType = common dso_local global i64 0, align 8
@ASL_INPUT_TYPE_BINARY_ACPI_TABLE = common dso_local global i64 0, align 8
@AE_OK = common dso_local global i32 0, align 4
@AslGbl_HexOutputFlag = common dso_local global i64 0, align 8
@FILE_SUFFIX_HEX_DUMP = common dso_local global i32 0, align 4
@ASL_FILE_HEX_OUTPUT = common dso_local global i64 0, align 8
@AslGbl_DebugFlag = common dso_local global i64 0, align 8
@FILE_SUFFIX_DEBUG = common dso_local global i32 0, align 4
@ASL_MSG_DEBUG_FILENAME = common dso_local global i32 0, align 4
@AslGbl_Files = common dso_local global %struct.TYPE_2__* null, align 8
@ASL_FILE_DEBUG_OUTPUT = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"\0ACould not open debug output file: %s\0A\0A\00", align 1
@AslGbl_CrossReferenceOutput = common dso_local global i64 0, align 8
@FILE_SUFFIX_XREF = common dso_local global i32 0, align 4
@ASL_FILE_XREF_OUTPUT = common dso_local global i64 0, align 8
@AslGbl_ListingFlag = common dso_local global i64 0, align 8
@FILE_SUFFIX_LISTING = common dso_local global i32 0, align 4
@ASL_FILE_LISTING_OUTPUT = common dso_local global i64 0, align 8
@AslGbl_PreprocessFlag = common dso_local global i64 0, align 8
@FILE_SUFFIX_PREPROCESSOR = common dso_local global i32 0, align 4
@ASL_MSG_PREPROCESSOR_FILENAME = common dso_local global i32 0, align 4
@ASL_FILE_PREPROCESSOR = common dso_local global i64 0, align 8
@AslGbl_PreprocessorOutputFlag = common dso_local global i64 0, align 8
@FILE_SUFFIX_PREPROC_USER = common dso_local global i32 0, align 4
@ASL_FILE_PREPROCESSOR_USER = common dso_local global i64 0, align 8
@ASL_INPUT_TYPE_ASCII_DATA = common dso_local global i64 0, align 8
@FILE_SUFFIX_SOURCE = common dso_local global i32 0, align 4
@ASL_FILE_SOURCE_OUTPUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"w+b\00", align 1
@AslGbl_AsmOutputFlag = common dso_local global i64 0, align 8
@FILE_SUFFIX_ASM_SOURCE = common dso_local global i32 0, align 4
@ASL_FILE_ASM_SOURCE_OUTPUT = common dso_local global i64 0, align 8
@AslGbl_C_OutputFlag = common dso_local global i64 0, align 8
@FILE_SUFFIX_C_SOURCE = common dso_local global i32 0, align 4
@ASL_FILE_C_SOURCE_OUTPUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"/*\0A\00", align 1
@AslGbl_C_OffsetTableFlag = common dso_local global i64 0, align 8
@FILE_SUFFIX_C_OFFSET = common dso_local global i32 0, align 4
@ASL_FILE_C_OFFSET_OUTPUT = common dso_local global i64 0, align 8
@AslGbl_AsmIncludeOutputFlag = common dso_local global i64 0, align 8
@FILE_SUFFIX_ASM_INCLUDE = common dso_local global i32 0, align 4
@ASL_FILE_ASM_INCLUDE_OUTPUT = common dso_local global i64 0, align 8
@AslGbl_C_IncludeOutputFlag = common dso_local global i64 0, align 8
@FILE_SUFFIX_C_INCLUDE = common dso_local global i32 0, align 4
@ASL_FILE_C_INCLUDE_OUTPUT = common dso_local global i64 0, align 8
@AslGbl_NsOutputFlag = common dso_local global i64 0, align 8
@FILE_SUFFIX_NAMESPACE = common dso_local global i32 0, align 4
@ASL_FILE_NAMESPACE_OUTPUT = common dso_local global i64 0, align 8
@AcpiGbl_DebugAslConversion = common dso_local global i64 0, align 8
@FILE_SUFFIX_CONVERT_DEBUG = common dso_local global i32 0, align 4
@ASL_FILE_CONV_DEBUG_OUTPUT = common dso_local global i64 0, align 8
@AcpiGbl_ConvDebugFile = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FlOpenMiscOutputFiles(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load i64, i64* @AslGbl_MapfileFlag, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = load i32, i32* @FILE_SUFFIX_MAP, align 4
  %10 = call i8* @FlGenerateFilename(i8* %8, i32 %9)
  store i8* %10, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = load i32, i32* @ASL_ERROR, align 4
  %15 = load i32, i32* @ASL_MSG_LISTING_FILENAME, align 4
  %16 = call i32 @AslCommonError(i32 %14, i32 %15, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %17 = load i32, i32* @AE_ERROR, align 4
  store i32 %17, i32* %2, align 4
  br label %365

18:                                               ; preds = %7
  %19 = load i64, i64* @ASL_FILE_MAP_OUTPUT, align 8
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @FlOpenFile(i64 %19, i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %22 = load i64, i64* @ASL_FILE_MAP_OUTPUT, align 8
  %23 = call i32 @AslCompilerSignon(i64 %22)
  %24 = load i64, i64* @ASL_FILE_MAP_OUTPUT, align 8
  %25 = call i32 @AslCompilerFileHeader(i64 %24)
  br label %26

26:                                               ; preds = %18, %1
  %27 = load i64, i64* @AslGbl_FileType, align 8
  %28 = load i64, i64* @ASL_INPUT_TYPE_BINARY_ACPI_TABLE, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @AE_OK, align 4
  store i32 %31, i32* %2, align 4
  br label %365

32:                                               ; preds = %26
  %33 = load i64, i64* @AslGbl_HexOutputFlag, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %32
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* @FILE_SUFFIX_HEX_DUMP, align 4
  %38 = call i8* @FlGenerateFilename(i8* %36, i32 %37)
  store i8* %38, i8** %4, align 8
  %39 = load i8*, i8** %4, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* @ASL_ERROR, align 4
  %43 = load i32, i32* @ASL_MSG_LISTING_FILENAME, align 4
  %44 = call i32 @AslCommonError(i32 %42, i32 %43, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %45 = load i32, i32* @AE_ERROR, align 4
  store i32 %45, i32* %2, align 4
  br label %365

46:                                               ; preds = %35
  %47 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %48 = load i8*, i8** %4, align 8
  %49 = call i32 @FlOpenFile(i64 %47, i8* %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %50 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %51 = call i32 @AslCompilerSignon(i64 %50)
  %52 = load i64, i64* @ASL_FILE_HEX_OUTPUT, align 8
  %53 = call i32 @AslCompilerFileHeader(i64 %52)
  br label %54

54:                                               ; preds = %46, %32
  %55 = load i64, i64* @AslGbl_DebugFlag, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %98

57:                                               ; preds = %54
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* @FILE_SUFFIX_DEBUG, align 4
  %60 = call i8* @FlGenerateFilename(i8* %58, i32 %59)
  store i8* %60, i8** %4, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %68, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @ASL_ERROR, align 4
  %65 = load i32, i32* @ASL_MSG_DEBUG_FILENAME, align 4
  %66 = call i32 @AslCommonError(i32 %64, i32 %65, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %67 = load i32, i32* @AE_ERROR, align 4
  store i32 %67, i32* %2, align 4
  br label %365

68:                                               ; preds = %57
  %69 = load i8*, i8** %4, align 8
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %71 = load i64, i64* @ASL_FILE_DEBUG_OUTPUT, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i8* %69, i8** %73, align 8
  %74 = load i8*, i8** %4, align 8
  %75 = load i32, i32* @stderr, align 4
  %76 = call i32 @freopen(i8* %74, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %78 = load i64, i64* @ASL_FILE_DEBUG_OUTPUT, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 %76, i32* %80, align 8
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %82 = load i64, i64* @ASL_FILE_DEBUG_OUTPUT, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %93, label %87

87:                                               ; preds = %68
  %88 = load i32, i32* @stdout, align 4
  %89 = load i8*, i8** %4, align 8
  %90 = call i32 @fprintf(i32 %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i8* %89)
  %91 = call i32 (...) @CmCleanupAndExit()
  %92 = call i32 @exit(i32 1) #3
  unreachable

93:                                               ; preds = %68
  %94 = load i64, i64* @ASL_FILE_DEBUG_OUTPUT, align 8
  %95 = call i32 @AslCompilerSignon(i64 %94)
  %96 = load i64, i64* @ASL_FILE_DEBUG_OUTPUT, align 8
  %97 = call i32 @AslCompilerFileHeader(i64 %96)
  br label %98

98:                                               ; preds = %93, %54
  %99 = load i64, i64* @AslGbl_CrossReferenceOutput, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %98
  %102 = load i8*, i8** %3, align 8
  %103 = load i32, i32* @FILE_SUFFIX_XREF, align 4
  %104 = call i8* @FlGenerateFilename(i8* %102, i32 %103)
  store i8* %104, i8** %4, align 8
  %105 = load i8*, i8** %4, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %101
  %108 = load i32, i32* @ASL_ERROR, align 4
  %109 = load i32, i32* @ASL_MSG_DEBUG_FILENAME, align 4
  %110 = call i32 @AslCommonError(i32 %108, i32 %109, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %111 = load i32, i32* @AE_ERROR, align 4
  store i32 %111, i32* %2, align 4
  br label %365

112:                                              ; preds = %101
  %113 = load i64, i64* @ASL_FILE_XREF_OUTPUT, align 8
  %114 = load i8*, i8** %4, align 8
  %115 = call i32 @FlOpenFile(i64 %113, i8* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %116 = load i64, i64* @ASL_FILE_XREF_OUTPUT, align 8
  %117 = call i32 @AslCompilerSignon(i64 %116)
  %118 = load i64, i64* @ASL_FILE_XREF_OUTPUT, align 8
  %119 = call i32 @AslCompilerFileHeader(i64 %118)
  br label %120

120:                                              ; preds = %112, %98
  %121 = load i64, i64* @AslGbl_ListingFlag, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %142

123:                                              ; preds = %120
  %124 = load i8*, i8** %3, align 8
  %125 = load i32, i32* @FILE_SUFFIX_LISTING, align 4
  %126 = call i8* @FlGenerateFilename(i8* %124, i32 %125)
  store i8* %126, i8** %4, align 8
  %127 = load i8*, i8** %4, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %134, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* @ASL_ERROR, align 4
  %131 = load i32, i32* @ASL_MSG_LISTING_FILENAME, align 4
  %132 = call i32 @AslCommonError(i32 %130, i32 %131, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %133 = load i32, i32* @AE_ERROR, align 4
  store i32 %133, i32* %2, align 4
  br label %365

134:                                              ; preds = %123
  %135 = load i64, i64* @ASL_FILE_LISTING_OUTPUT, align 8
  %136 = load i8*, i8** %4, align 8
  %137 = call i32 @FlOpenFile(i64 %135, i8* %136, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %138 = load i64, i64* @ASL_FILE_LISTING_OUTPUT, align 8
  %139 = call i32 @AslCompilerSignon(i64 %138)
  %140 = load i64, i64* @ASL_FILE_LISTING_OUTPUT, align 8
  %141 = call i32 @AslCompilerFileHeader(i64 %140)
  br label %142

142:                                              ; preds = %134, %120
  %143 = load i64, i64* @AslGbl_PreprocessFlag, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %160

145:                                              ; preds = %142
  %146 = load i8*, i8** %3, align 8
  %147 = load i32, i32* @FILE_SUFFIX_PREPROCESSOR, align 4
  %148 = call i8* @FlGenerateFilename(i8* %146, i32 %147)
  store i8* %148, i8** %4, align 8
  %149 = load i8*, i8** %4, align 8
  %150 = icmp ne i8* %149, null
  br i1 %150, label %156, label %151

151:                                              ; preds = %145
  %152 = load i32, i32* @ASL_ERROR, align 4
  %153 = load i32, i32* @ASL_MSG_PREPROCESSOR_FILENAME, align 4
  %154 = call i32 @AslCommonError(i32 %152, i32 %153, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %155 = load i32, i32* @AE_ERROR, align 4
  store i32 %155, i32* %2, align 4
  br label %365

156:                                              ; preds = %145
  %157 = load i64, i64* @ASL_FILE_PREPROCESSOR, align 8
  %158 = load i8*, i8** %4, align 8
  %159 = call i32 @FlOpenFile(i64 %157, i8* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %160

160:                                              ; preds = %156, %142
  %161 = load i64, i64* @AslGbl_PreprocessorOutputFlag, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %178

163:                                              ; preds = %160
  %164 = load i8*, i8** %3, align 8
  %165 = load i32, i32* @FILE_SUFFIX_PREPROC_USER, align 4
  %166 = call i8* @FlGenerateFilename(i8* %164, i32 %165)
  store i8* %166, i8** %4, align 8
  %167 = load i8*, i8** %4, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %174, label %169

169:                                              ; preds = %163
  %170 = load i32, i32* @ASL_ERROR, align 4
  %171 = load i32, i32* @ASL_MSG_PREPROCESSOR_FILENAME, align 4
  %172 = call i32 @AslCommonError(i32 %170, i32 %171, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %173 = load i32, i32* @AE_ERROR, align 4
  store i32 %173, i32* %2, align 4
  br label %365

174:                                              ; preds = %163
  %175 = load i64, i64* @ASL_FILE_PREPROCESSOR_USER, align 8
  %176 = load i8*, i8** %4, align 8
  %177 = call i32 @FlOpenFile(i64 %175, i8* %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  br label %178

178:                                              ; preds = %174, %160
  %179 = load i64, i64* @AslGbl_FileType, align 8
  %180 = load i64, i64* @ASL_INPUT_TYPE_ASCII_DATA, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %184

182:                                              ; preds = %178
  %183 = load i32, i32* @AE_OK, align 4
  store i32 %183, i32* %2, align 4
  br label %365

184:                                              ; preds = %178
  %185 = load i8*, i8** %3, align 8
  %186 = load i32, i32* @FILE_SUFFIX_SOURCE, align 4
  %187 = call i8* @FlGenerateFilename(i8* %185, i32 %186)
  store i8* %187, i8** %4, align 8
  %188 = load i8*, i8** %4, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %195, label %190

190:                                              ; preds = %184
  %191 = load i32, i32* @ASL_ERROR, align 4
  %192 = load i32, i32* @ASL_MSG_LISTING_FILENAME, align 4
  %193 = call i32 @AslCommonError(i32 %191, i32 %192, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %194 = load i32, i32* @AE_ERROR, align 4
  store i32 %194, i32* %2, align 4
  br label %365

195:                                              ; preds = %184
  %196 = load i64, i64* @ASL_FILE_SOURCE_OUTPUT, align 8
  %197 = load i8*, i8** %4, align 8
  %198 = call i32 @FlOpenFile(i64 %196, i8* %197, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %199 = load i64, i64* @AslGbl_AsmOutputFlag, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %220

201:                                              ; preds = %195
  %202 = load i8*, i8** %3, align 8
  %203 = load i32, i32* @FILE_SUFFIX_ASM_SOURCE, align 4
  %204 = call i8* @FlGenerateFilename(i8* %202, i32 %203)
  store i8* %204, i8** %4, align 8
  %205 = load i8*, i8** %4, align 8
  %206 = icmp ne i8* %205, null
  br i1 %206, label %212, label %207

207:                                              ; preds = %201
  %208 = load i32, i32* @ASL_ERROR, align 4
  %209 = load i32, i32* @ASL_MSG_LISTING_FILENAME, align 4
  %210 = call i32 @AslCommonError(i32 %208, i32 %209, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %211 = load i32, i32* @AE_ERROR, align 4
  store i32 %211, i32* %2, align 4
  br label %365

212:                                              ; preds = %201
  %213 = load i64, i64* @ASL_FILE_ASM_SOURCE_OUTPUT, align 8
  %214 = load i8*, i8** %4, align 8
  %215 = call i32 @FlOpenFile(i64 %213, i8* %214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %216 = load i64, i64* @ASL_FILE_ASM_SOURCE_OUTPUT, align 8
  %217 = call i32 @AslCompilerSignon(i64 %216)
  %218 = load i64, i64* @ASL_FILE_ASM_SOURCE_OUTPUT, align 8
  %219 = call i32 @AslCompilerFileHeader(i64 %218)
  br label %220

220:                                              ; preds = %212, %195
  %221 = load i64, i64* @AslGbl_C_OutputFlag, align 8
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %244

223:                                              ; preds = %220
  %224 = load i8*, i8** %3, align 8
  %225 = load i32, i32* @FILE_SUFFIX_C_SOURCE, align 4
  %226 = call i8* @FlGenerateFilename(i8* %224, i32 %225)
  store i8* %226, i8** %4, align 8
  %227 = load i8*, i8** %4, align 8
  %228 = icmp ne i8* %227, null
  br i1 %228, label %234, label %229

229:                                              ; preds = %223
  %230 = load i32, i32* @ASL_ERROR, align 4
  %231 = load i32, i32* @ASL_MSG_LISTING_FILENAME, align 4
  %232 = call i32 @AslCommonError(i32 %230, i32 %231, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %233 = load i32, i32* @AE_ERROR, align 4
  store i32 %233, i32* %2, align 4
  br label %365

234:                                              ; preds = %223
  %235 = load i64, i64* @ASL_FILE_C_SOURCE_OUTPUT, align 8
  %236 = load i8*, i8** %4, align 8
  %237 = call i32 @FlOpenFile(i64 %235, i8* %236, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %238 = load i64, i64* @ASL_FILE_C_SOURCE_OUTPUT, align 8
  %239 = call i32 @FlPrintFile(i64 %238, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %240 = load i64, i64* @ASL_FILE_C_SOURCE_OUTPUT, align 8
  %241 = call i32 @AslCompilerSignon(i64 %240)
  %242 = load i64, i64* @ASL_FILE_C_SOURCE_OUTPUT, align 8
  %243 = call i32 @AslCompilerFileHeader(i64 %242)
  br label %244

244:                                              ; preds = %234, %220
  %245 = load i64, i64* @AslGbl_C_OffsetTableFlag, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %268

247:                                              ; preds = %244
  %248 = load i8*, i8** %3, align 8
  %249 = load i32, i32* @FILE_SUFFIX_C_OFFSET, align 4
  %250 = call i8* @FlGenerateFilename(i8* %248, i32 %249)
  store i8* %250, i8** %4, align 8
  %251 = load i8*, i8** %4, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %258, label %253

253:                                              ; preds = %247
  %254 = load i32, i32* @ASL_ERROR, align 4
  %255 = load i32, i32* @ASL_MSG_LISTING_FILENAME, align 4
  %256 = call i32 @AslCommonError(i32 %254, i32 %255, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %257 = load i32, i32* @AE_ERROR, align 4
  store i32 %257, i32* %2, align 4
  br label %365

258:                                              ; preds = %247
  %259 = load i64, i64* @ASL_FILE_C_OFFSET_OUTPUT, align 8
  %260 = load i8*, i8** %4, align 8
  %261 = call i32 @FlOpenFile(i64 %259, i8* %260, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %262 = load i64, i64* @ASL_FILE_C_OFFSET_OUTPUT, align 8
  %263 = call i32 @FlPrintFile(i64 %262, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %264 = load i64, i64* @ASL_FILE_C_OFFSET_OUTPUT, align 8
  %265 = call i32 @AslCompilerSignon(i64 %264)
  %266 = load i64, i64* @ASL_FILE_C_OFFSET_OUTPUT, align 8
  %267 = call i32 @AslCompilerFileHeader(i64 %266)
  br label %268

268:                                              ; preds = %258, %244
  %269 = load i64, i64* @AslGbl_AsmIncludeOutputFlag, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %271, label %290

271:                                              ; preds = %268
  %272 = load i8*, i8** %3, align 8
  %273 = load i32, i32* @FILE_SUFFIX_ASM_INCLUDE, align 4
  %274 = call i8* @FlGenerateFilename(i8* %272, i32 %273)
  store i8* %274, i8** %4, align 8
  %275 = load i8*, i8** %4, align 8
  %276 = icmp ne i8* %275, null
  br i1 %276, label %282, label %277

277:                                              ; preds = %271
  %278 = load i32, i32* @ASL_ERROR, align 4
  %279 = load i32, i32* @ASL_MSG_LISTING_FILENAME, align 4
  %280 = call i32 @AslCommonError(i32 %278, i32 %279, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %281 = load i32, i32* @AE_ERROR, align 4
  store i32 %281, i32* %2, align 4
  br label %365

282:                                              ; preds = %271
  %283 = load i64, i64* @ASL_FILE_ASM_INCLUDE_OUTPUT, align 8
  %284 = load i8*, i8** %4, align 8
  %285 = call i32 @FlOpenFile(i64 %283, i8* %284, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %286 = load i64, i64* @ASL_FILE_ASM_INCLUDE_OUTPUT, align 8
  %287 = call i32 @AslCompilerSignon(i64 %286)
  %288 = load i64, i64* @ASL_FILE_ASM_INCLUDE_OUTPUT, align 8
  %289 = call i32 @AslCompilerFileHeader(i64 %288)
  br label %290

290:                                              ; preds = %282, %268
  %291 = load i64, i64* @AslGbl_C_IncludeOutputFlag, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %314

293:                                              ; preds = %290
  %294 = load i8*, i8** %3, align 8
  %295 = load i32, i32* @FILE_SUFFIX_C_INCLUDE, align 4
  %296 = call i8* @FlGenerateFilename(i8* %294, i32 %295)
  store i8* %296, i8** %4, align 8
  %297 = load i8*, i8** %4, align 8
  %298 = icmp ne i8* %297, null
  br i1 %298, label %304, label %299

299:                                              ; preds = %293
  %300 = load i32, i32* @ASL_ERROR, align 4
  %301 = load i32, i32* @ASL_MSG_LISTING_FILENAME, align 4
  %302 = call i32 @AslCommonError(i32 %300, i32 %301, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %303 = load i32, i32* @AE_ERROR, align 4
  store i32 %303, i32* %2, align 4
  br label %365

304:                                              ; preds = %293
  %305 = load i64, i64* @ASL_FILE_C_INCLUDE_OUTPUT, align 8
  %306 = load i8*, i8** %4, align 8
  %307 = call i32 @FlOpenFile(i64 %305, i8* %306, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %308 = load i64, i64* @ASL_FILE_C_INCLUDE_OUTPUT, align 8
  %309 = call i32 @FlPrintFile(i64 %308, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %310 = load i64, i64* @ASL_FILE_C_INCLUDE_OUTPUT, align 8
  %311 = call i32 @AslCompilerSignon(i64 %310)
  %312 = load i64, i64* @ASL_FILE_C_INCLUDE_OUTPUT, align 8
  %313 = call i32 @AslCompilerFileHeader(i64 %312)
  br label %314

314:                                              ; preds = %304, %290
  %315 = load i64, i64* @AslGbl_NsOutputFlag, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %336

317:                                              ; preds = %314
  %318 = load i8*, i8** %3, align 8
  %319 = load i32, i32* @FILE_SUFFIX_NAMESPACE, align 4
  %320 = call i8* @FlGenerateFilename(i8* %318, i32 %319)
  store i8* %320, i8** %4, align 8
  %321 = load i8*, i8** %4, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %328, label %323

323:                                              ; preds = %317
  %324 = load i32, i32* @ASL_ERROR, align 4
  %325 = load i32, i32* @ASL_MSG_LISTING_FILENAME, align 4
  %326 = call i32 @AslCommonError(i32 %324, i32 %325, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %327 = load i32, i32* @AE_ERROR, align 4
  store i32 %327, i32* %2, align 4
  br label %365

328:                                              ; preds = %317
  %329 = load i64, i64* @ASL_FILE_NAMESPACE_OUTPUT, align 8
  %330 = load i8*, i8** %4, align 8
  %331 = call i32 @FlOpenFile(i64 %329, i8* %330, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %332 = load i64, i64* @ASL_FILE_NAMESPACE_OUTPUT, align 8
  %333 = call i32 @AslCompilerSignon(i64 %332)
  %334 = load i64, i64* @ASL_FILE_NAMESPACE_OUTPUT, align 8
  %335 = call i32 @AslCompilerFileHeader(i64 %334)
  br label %336

336:                                              ; preds = %328, %314
  %337 = load i64, i64* @AcpiGbl_DebugAslConversion, align 8
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %363

339:                                              ; preds = %336
  %340 = load i8*, i8** %3, align 8
  %341 = load i32, i32* @FILE_SUFFIX_CONVERT_DEBUG, align 4
  %342 = call i8* @FlGenerateFilename(i8* %340, i32 %341)
  store i8* %342, i8** %4, align 8
  %343 = load i8*, i8** %4, align 8
  %344 = icmp ne i8* %343, null
  br i1 %344, label %350, label %345

345:                                              ; preds = %339
  %346 = load i32, i32* @ASL_ERROR, align 4
  %347 = load i32, i32* @ASL_MSG_LISTING_FILENAME, align 4
  %348 = call i32 @AslCommonError(i32 %346, i32 %347, i32 0, i32 0, i32 0, i32 0, i32* null, i32* null)
  %349 = load i32, i32* @AE_ERROR, align 4
  store i32 %349, i32* %2, align 4
  br label %365

350:                                              ; preds = %339
  %351 = load i64, i64* @ASL_FILE_CONV_DEBUG_OUTPUT, align 8
  %352 = load i8*, i8** %4, align 8
  %353 = call i32 @FlOpenFile(i64 %351, i8* %352, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %354 = load i64, i64* @ASL_FILE_CONV_DEBUG_OUTPUT, align 8
  %355 = call i32 @AslCompilerSignon(i64 %354)
  %356 = load i64, i64* @ASL_FILE_CONV_DEBUG_OUTPUT, align 8
  %357 = call i32 @AslCompilerFileHeader(i64 %356)
  %358 = load %struct.TYPE_2__*, %struct.TYPE_2__** @AslGbl_Files, align 8
  %359 = load i64, i64* @ASL_FILE_CONV_DEBUG_OUTPUT, align 8
  %360 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %358, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 8
  store i32 %362, i32* @AcpiGbl_ConvDebugFile, align 4
  br label %363

363:                                              ; preds = %350, %336
  %364 = load i32, i32* @AE_OK, align 4
  store i32 %364, i32* %2, align 4
  br label %365

365:                                              ; preds = %363, %345, %323, %299, %277, %253, %229, %207, %190, %182, %169, %151, %129, %107, %63, %41, %30, %13
  %366 = load i32, i32* %2, align 4
  ret i32 %366
}

declare dso_local i8* @FlGenerateFilename(i8*, i32) #1

declare dso_local i32 @AslCommonError(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @FlOpenFile(i64, i8*, i8*) #1

declare dso_local i32 @AslCompilerSignon(i64) #1

declare dso_local i32 @AslCompilerFileHeader(i64) #1

declare dso_local i32 @freopen(i8*, i8*, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i32 @CmCleanupAndExit(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @FlPrintFile(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
