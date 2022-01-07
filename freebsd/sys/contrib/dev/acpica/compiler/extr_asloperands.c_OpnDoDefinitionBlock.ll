; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloperands.c_OpnDoDefinitionBlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asloperands.c_OpnDoDefinitionBlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, %struct.TYPE_9__*, %struct.TYPE_7__, i32, %struct.TYPE_9__* }
%struct.TYPE_7__ = type { i8*, i64* }

@AslGbl_UseDefaultAmlFilename = common dso_local global i64 0, align 8
@AslGbl_DirectoryPath = common dso_local global i8* null, align 8
@AslGbl_OutputFilenamePrefix = common dso_local global i8* null, align 8
@ASL_FILE_AML_OUTPUT = common dso_local global i32 0, align 4
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_OUTPUT_FILE_OPEN = common dso_local global i32 0, align 4
@PARSEOP_DEFAULT_ARG = common dso_local global i8* null, align 8
@AslGbl_FilesList = common dso_local global %struct.TYPE_10__* null, align 8
@AslGbl_TableSignature = common dso_local global i8* null, align 8
@ACPI_NAMESEG_SIZE = common dso_local global i64 0, align 8
@ASL_MSG_TABLE_SIGNATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Length must be exactly 4 characters\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Contains non-alphanumeric characters\00", align 1
@ACPI_OEM_ID_SIZE = common dso_local global i64 0, align 8
@ASL_MSG_OEM_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Length cannot exceed 6 characters\00", align 1
@ACPI_OEM_TABLE_ID_SIZE = common dso_local global i32 0, align 4
@ASL_MSG_OEM_TABLE_ID = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Length cannot exceed 8 characters\00", align 1
@AslGbl_TableId = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*)* @OpnDoDefinitionBlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @OpnDoDefinitionBlock(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  store %struct.TYPE_9__* %11, %struct.TYPE_9__** %3, align 8
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load i64*, i64** %15, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %76

18:                                               ; preds = %1
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %76

26:                                               ; preds = %18
  %27 = load i64, i64* @AslGbl_UseDefaultAmlFilename, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @FlSwitchFileSet(i32 %33)
  %35 = load i8*, i8** @AslGbl_DirectoryPath, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = bitcast i64* %41 to i8*
  %43 = call i64 @strlen(i8* %42)
  %44 = add nsw i64 %36, %43
  %45 = add nsw i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = call i8* @UtLocalCacheCalloc(i32 %46)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i8*, i8** @AslGbl_DirectoryPath, align 8
  %50 = call i32 @strcpy(i8* %48, i8* %49)
  %51 = load i8*, i8** %6, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = load i64*, i64** %55, align 8
  %57 = bitcast i64* %56 to i8*
  %58 = call i32 @strcat(i8* %51, i8* %57)
  %59 = load i8*, i8** %6, align 8
  store i8* %59, i8** @AslGbl_OutputFilenamePrefix, align 8
  %60 = load i8*, i8** @AslGbl_OutputFilenamePrefix, align 8
  %61 = call i32 @UtConvertBackslashes(i8* %60)
  %62 = load i32, i32* @ASL_FILE_AML_OUTPUT, align 4
  %63 = call i32 @FlCloseFile(i32 %62)
  %64 = load i32, i32* @ASL_FILE_AML_OUTPUT, align 4
  %65 = call i32 @FlDeleteFile(i32 %64)
  %66 = load i8*, i8** @AslGbl_OutputFilenamePrefix, align 8
  %67 = call i32 @FlOpenAmlOutputFile(i8* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i64 @ACPI_FAILURE(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %29
  %72 = load i32, i32* @ASL_ERROR, align 4
  %73 = load i32, i32* @ASL_MSG_OUTPUT_FILE_OPEN, align 4
  %74 = call i32 @AslError(i32 %72, i32 %73, %struct.TYPE_9__* null, i8* null)
  br label %253

75:                                               ; preds = %29
  br label %76

76:                                               ; preds = %75, %26, %18, %1
  %77 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i8* %77, i8** %80, align 8
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %83, align 8
  store %struct.TYPE_9__* %84, %struct.TYPE_9__** %3, align 8
  %85 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %140

95:                                               ; preds = %76
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i8*, i8** %99, align 8
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** @AslGbl_FilesList, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i8*, i8** %106, align 8
  store i8* %107, i8** @AslGbl_TableSignature, align 8
  %108 = load i8*, i8** @AslGbl_TableSignature, align 8
  %109 = call i64 @strlen(i8* %108)
  %110 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %111 = icmp ne i64 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %95
  %113 = load i32, i32* @ASL_ERROR, align 4
  %114 = load i32, i32* @ASL_MSG_TABLE_SIGNATURE, align 4
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %116 = call i32 @AslError(i32 %113, i32 %114, %struct.TYPE_9__* %115, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %117

117:                                              ; preds = %112, %95
  store i64 0, i64* %5, align 8
  br label %118

118:                                              ; preds = %136, %117
  %119 = load i64, i64* %5, align 8
  %120 = load i64, i64* @ACPI_NAMESEG_SIZE, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %118
  %123 = load i8*, i8** @AslGbl_TableSignature, align 8
  %124 = load i64, i64* %5, align 8
  %125 = getelementptr inbounds i8, i8* %123, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = call i32 @isalnum(i32 %127) #3
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %122
  %131 = load i32, i32* @ASL_ERROR, align 4
  %132 = load i32, i32* @ASL_MSG_TABLE_SIGNATURE, align 4
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %134 = call i32 @AslError(i32 %131, i32 %132, %struct.TYPE_9__* %133, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %135

135:                                              ; preds = %130, %122
  br label %136

136:                                              ; preds = %135
  %137 = load i64, i64* %5, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %5, align 8
  br label %118

139:                                              ; preds = %118
  br label %140

140:                                              ; preds = %139, %76
  %141 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  store %struct.TYPE_9__* %144, %struct.TYPE_9__** %3, align 8
  %145 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 0
  store i8* %145, i8** %148, align 8
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %150, i32 0, i32 1
  %152 = load %struct.TYPE_9__*, %struct.TYPE_9__** %151, align 8
  store %struct.TYPE_9__* %152, %struct.TYPE_9__** %3, align 8
  %153 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %154 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  store i8* %153, i8** %156, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %177

163:                                              ; preds = %140
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i8*, i8** %167, align 8
  %169 = call i64 @strlen(i8* %168)
  %170 = load i64, i64* @ACPI_OEM_ID_SIZE, align 8
  %171 = icmp sgt i64 %169, %170
  br i1 %171, label %172, label %177

172:                                              ; preds = %163
  %173 = load i32, i32* @ASL_ERROR, align 4
  %174 = load i32, i32* @ASL_MSG_OEM_ID, align 4
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %176 = call i32 @AslError(i32 %173, i32 %174, %struct.TYPE_9__* %175, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %177

177:                                              ; preds = %172, %163, %140
  %178 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %180, align 8
  store %struct.TYPE_9__* %181, %struct.TYPE_9__** %3, align 8
  %182 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  store i8* %182, i8** %185, align 8
  %186 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %187 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = icmp ne i8* %190, null
  br i1 %191, label %192, label %244

192:                                              ; preds = %177
  %193 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 0
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 0
  %197 = load i8*, i8** %196, align 8
  %198 = call i64 @strlen(i8* %197)
  %199 = trunc i64 %198 to i32
  store i32 %199, i32* %4, align 4
  %200 = load i32, i32* %4, align 4
  %201 = load i32, i32* @ACPI_OEM_TABLE_ID_SIZE, align 4
  %202 = icmp sgt i32 %200, %201
  br i1 %202, label %203, label %208

203:                                              ; preds = %192
  %204 = load i32, i32* @ASL_ERROR, align 4
  %205 = load i32, i32* @ASL_MSG_OEM_TABLE_ID, align 4
  %206 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %207 = call i32 @AslError(i32 %204, i32 %205, %struct.TYPE_9__* %206, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %208

208:                                              ; preds = %203, %192
  %209 = load i32, i32* %4, align 4
  %210 = add nsw i32 %209, 1
  %211 = call i8* @UtLocalCacheCalloc(i32 %210)
  store i8* %211, i8** @AslGbl_TableId, align 8
  %212 = load i8*, i8** @AslGbl_TableId, align 8
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 2
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %215, i32 0, i32 0
  %217 = load i8*, i8** %216, align 8
  %218 = call i32 @strcpy(i8* %212, i8* %217)
  %219 = load i8*, i8** @AslGbl_TableId, align 8
  %220 = load %struct.TYPE_10__*, %struct.TYPE_10__** @AslGbl_FilesList, align 8
  %221 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %220, i32 0, i32 1
  store i8* %219, i8** %221, align 8
  store i64 0, i64* %5, align 8
  br label %222

222:                                              ; preds = %240, %208
  %223 = load i64, i64* %5, align 8
  %224 = load i32, i32* %4, align 4
  %225 = sext i32 %224 to i64
  %226 = icmp slt i64 %223, %225
  br i1 %226, label %227, label %243

227:                                              ; preds = %222
  %228 = load i8*, i8** @AslGbl_TableId, align 8
  %229 = load i64, i64* %5, align 8
  %230 = getelementptr inbounds i8, i8* %228, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = sext i8 %231 to i32
  %233 = call i32 @isalnum(i32 %232) #3
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %239, label %235

235:                                              ; preds = %227
  %236 = load i8*, i8** @AslGbl_TableId, align 8
  %237 = load i64, i64* %5, align 8
  %238 = getelementptr inbounds i8, i8* %236, i64 %237
  store i8 95, i8* %238, align 1
  br label %239

239:                                              ; preds = %235, %227
  br label %240

240:                                              ; preds = %239
  %241 = load i64, i64* %5, align 8
  %242 = add nsw i64 %241, 1
  store i64 %242, i64* %5, align 8
  br label %222

243:                                              ; preds = %222
  br label %244

244:                                              ; preds = %243, %177
  %245 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %246, i32 0, i32 1
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %247, align 8
  store %struct.TYPE_9__* %248, %struct.TYPE_9__** %3, align 8
  %249 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %250 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  store i8* %249, i8** %252, align 8
  br label %253

253:                                              ; preds = %244, %71
  ret void
}

declare dso_local i32 @FlSwitchFileSet(i32) #1

declare dso_local i8* @UtLocalCacheCalloc(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @UtConvertBackslashes(i8*) #1

declare dso_local i32 @FlCloseFile(i32) #1

declare dso_local i32 @FlDeleteFile(i32) #1

declare dso_local i32 @FlOpenAmlOutputFile(i8*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_9__*, i8*) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @isalnum(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
