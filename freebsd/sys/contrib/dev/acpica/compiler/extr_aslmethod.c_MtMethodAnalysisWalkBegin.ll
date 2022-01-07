; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslmethod.c_MtMethodAnalysisWalkBegin.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslmethod.c_MtMethodAnalysisWalkBegin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i8*, i8*, i32, i32, %struct.TYPE_25__*, %struct.TYPE_25__*, %struct.TYPE_21__, %struct.TYPE_25__*, i32 }
%struct.TYPE_21__ = type { i32, i32 }
%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32, i32, i8**, i8**, %struct.TYPE_25__*, i32, i32*, i32, %struct.TYPE_23__* }

@__const.MtMethodAnalysisWalkBegin.LocalName = private unnamed_addr constant [7 x i8] c"Local0\00", align 1
@__const.MtMethodAnalysisWalkBegin.ArgName = private unnamed_addr constant [5 x i8] c"Arg0\00", align 1
@AslGbl_CrossReferenceOutput = common dso_local global i64 0, align 8
@AslGbl_TotalMethods = common dso_local global i32 0, align 4
@METHOD_NAME__PS0 = common dso_local global i32 0, align 4
@METHOD_NAME__PS1 = common dso_local global i32 0, align 4
@METHOD_NAME__PS2 = common dso_local global i32 0, align 4
@METHOD_NAME__PS3 = common dso_local global i32 0, align 4
@ASL_WARNING = common dso_local global i32 0, align 4
@ASL_MSG_MISSING_DEPENDENCY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"_PS0 requires one of _PS1/_PS2/_PS3 in same scope\00", align 1
@AslGbl_MsgBuffer = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"%4.4s requires _PS0 in same scope\00", align 1
@PARSEOP_DEFAULT_ARG = common dso_local global i8* null, align 8
@TRUE = common dso_local global i8* null, align 8
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_ILLEGAL_RECURSION = common dso_local global i32 0, align 4
@ASL_MSG_FOUND_HERE = common dso_local global i32 0, align 4
@ASL_REMARK = common dso_local global i32 0, align 4
@ASL_MSG_RECURSION = common dso_local global i32 0, align 4
@ASL_MSG_LOCAL_OUTSIDE_METHOD = common dso_local global i32 0, align 4
@AE_ERROR = common dso_local global i32 0, align 4
@OP_IS_TARGET = common dso_local global i32 0, align 4
@PARSEOP_OBJECTTYPE = common dso_local global i8* null, align 8
@ASL_MSG_LOCAL_INIT = common dso_local global i32 0, align 4
@ASL_MSG_ARG_INIT = common dso_local global i32 0, align 4
@ASL_MSG_NOT_PARAMETER = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"%p, No parent method\00", align 1
@OP_IS_NULL_RETURN = common dso_local global i32 0, align 4
@PARSEOP_WHILE = common dso_local global i8* null, align 8
@ASL_MSG_NO_WHILE = common dso_local global i32 0, align 4
@PARSEOP_INTEGER = common dso_local global i8* null, align 8
@ACPI_UINT8_MAX = common dso_local global i32 0, align 4
@ASL_MSG_INVALID_TIME = common dso_local global i32 0, align 4
@METHOD_NAME__HID = common dso_local global i32 0, align 4
@METHOD_NAME__ADR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Device object requires a _HID or _ADR in same scope\00", align 1
@ASL_MSG_MULTIPLE_TYPES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [59 x i8] c"Device object requires either a _HID or _ADR, but not both\00", align 1
@ACPI_VALID_RESERVED_NAME_MAX = common dso_local global i64 0, align 8
@ASL_MSG_RESERVED_USE = common dso_local global i32 0, align 4
@ASL_TYPE_HID = common dso_local global i32 0, align 4
@METHOD_NAME__CID = common dso_local global i32 0, align 4
@PARSEOP_PACKAGE = common dso_local global i8* null, align 8
@PARSEOP_VAR_PACKAGE = common dso_local global i8* null, align 8
@ASL_TYPE_CID = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MtMethodAnalysisWalkBegin(%struct.TYPE_25__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca %struct.TYPE_23__*, align 8
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [7 x i8], align 1
  %14 = alloca [5 x i8], align 1
  %15 = alloca %struct.TYPE_25__*, align 8
  %16 = alloca %struct.TYPE_25__*, align 8
  %17 = alloca %struct.TYPE_25__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %22, %struct.TYPE_24__** %8, align 8
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  store %struct.TYPE_23__* %25, %struct.TYPE_23__** %9, align 8
  %26 = bitcast [7 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %26, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.MtMethodAnalysisWalkBegin.LocalName, i32 0, i32 0), i64 7, i1 false)
  %27 = bitcast [5 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %27, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.MtMethodAnalysisWalkBegin.ArgName, i32 0, i32 0), i64 5, i1 false)
  store i32 0, i32* %18, align 4
  %28 = load i64, i64* @AslGbl_CrossReferenceOutput, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %3
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %34 = call i32 @OtXrefWalkPart1(%struct.TYPE_25__* %31, i64 %32, %struct.TYPE_23__* %33)
  br label %35

35:                                               ; preds = %30, %3
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  switch i32 %39, label %754 [
    i32 137, label %40
    i32 136, label %307
    i32 145, label %358
    i32 144, label %358
    i32 143, label %358
    i32 142, label %358
    i32 141, label %358
    i32 140, label %358
    i32 139, label %358
    i32 138, label %358
    i32 156, label %428
    i32 155, label %428
    i32 154, label %428
    i32 153, label %428
    i32 152, label %428
    i32 151, label %428
    i32 150, label %428
    i32 130, label %512
    i32 149, label %561
    i32 148, label %561
    i32 129, label %593
    i32 147, label %622
    i32 146, label %652
    i32 135, label %652
    i32 133, label %652
    i32 132, label %652
    i32 131, label %652
    i32 128, label %652
    i32 134, label %672
  ]

40:                                               ; preds = %35
  %41 = load i32, i32* @AslGbl_TotalMethods, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* @AslGbl_TotalMethods, align 4
  %43 = call %struct.TYPE_23__* @UtLocalCalloc(i32 72)
  store %struct.TYPE_23__* %43, %struct.TYPE_23__** %9, align 8
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_23__*, %struct.TYPE_23__** %45, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 10
  store %struct.TYPE_23__* %46, %struct.TYPE_23__** %48, align 8
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 6
  store %struct.TYPE_25__* %49, %struct.TYPE_25__** %51, align 8
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 0
  store %struct.TYPE_23__* %52, %struct.TYPE_23__** %54, align 8
  %55 = load i32, i32* @METHOD_NAME__PS0, align 4
  %56 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 @ACPI_COMPARE_NAMESEG(i32 %55, i8* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %83

62:                                               ; preds = %40
  %63 = load i32, i32* @METHOD_NAME__PS1, align 4
  %64 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %65 = call i32 @ApFindNameInScope(i32 %63, %struct.TYPE_25__* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %82, label %67

67:                                               ; preds = %62
  %68 = load i32, i32* @METHOD_NAME__PS2, align 4
  %69 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %70 = call i32 @ApFindNameInScope(i32 %68, %struct.TYPE_25__* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @METHOD_NAME__PS3, align 4
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %75 = call i32 @ApFindNameInScope(i32 %73, %struct.TYPE_25__* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %82, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @ASL_WARNING, align 4
  %79 = load i32, i32* @ASL_MSG_MISSING_DEPENDENCY, align 4
  %80 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %81 = call i32 @AslError(i32 %78, i32 %79, %struct.TYPE_25__* %80, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %82

82:                                               ; preds = %77, %72, %67, %62
  br label %126

83:                                               ; preds = %40
  %84 = load i32, i32* @METHOD_NAME__PS1, align 4
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @ACPI_COMPARE_NAMESEG(i32 %84, i8* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %107, label %91

91:                                               ; preds = %83
  %92 = load i32, i32* @METHOD_NAME__PS2, align 4
  %93 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 @ACPI_COMPARE_NAMESEG(i32 %92, i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %91
  %100 = load i32, i32* @METHOD_NAME__PS3, align 4
  %101 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @ACPI_COMPARE_NAMESEG(i32 %100, i8* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %125

107:                                              ; preds = %99, %91, %83
  %108 = load i32, i32* @METHOD_NAME__PS0, align 4
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %110 = call i32 @ApFindNameInScope(i32 %108, %struct.TYPE_25__* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %107
  %113 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 1
  %117 = load i8*, i8** %116, align 8
  %118 = call i32 @sprintf(i8* %113, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i8* %117)
  %119 = load i32, i32* @ASL_WARNING, align 4
  %120 = load i32, i32* @ASL_MSG_MISSING_DEPENDENCY, align 4
  %121 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %122 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %123 = call i32 @AslError(i32 %119, i32 %120, %struct.TYPE_25__* %121, i8* %122)
  br label %124

124:                                              ; preds = %112, %107
  br label %125

125:                                              ; preds = %124, %99
  br label %126

126:                                              ; preds = %125, %82
  %127 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %128 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 6
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %129, align 8
  store %struct.TYPE_25__* %130, %struct.TYPE_25__** %10, align 8
  %131 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %133, align 8
  store %struct.TYPE_25__* %134, %struct.TYPE_25__** %10, align 8
  %135 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 7
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = and i32 %139, 7
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 5
  %146 = load %struct.TYPE_25__*, %struct.TYPE_25__** %145, align 8
  store %struct.TYPE_25__* %146, %struct.TYPE_25__** %10, align 8
  %147 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 7
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 1
  store i32 %151, i32* %153, align 4
  %154 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %155 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 5
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %156, align 8
  store %struct.TYPE_25__* %157, %struct.TYPE_25__** %10, align 8
  %158 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  store %struct.TYPE_25__* %158, %struct.TYPE_25__** %15, align 8
  %159 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %160 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 5
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %161, align 8
  store %struct.TYPE_25__* %162, %struct.TYPE_25__** %10, align 8
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 6
  %166 = load %struct.TYPE_25__*, %struct.TYPE_25__** %165, align 8
  store %struct.TYPE_25__* %166, %struct.TYPE_25__** %16, align 8
  br label %167

167:                                              ; preds = %170, %126
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %169 = icmp ne %struct.TYPE_25__* %168, null
  br i1 %169, label %170, label %186

170:                                              ; preds = %167
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %172 = call i32 @AnMapObjTypeToBtype(%struct.TYPE_25__* %171)
  %173 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %174 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %173, i32 0, i32 9
  %175 = load i32, i32* %174, align 8
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 8
  %177 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %178 = ptrtoint i8* %177 to i32
  %179 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %180 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 0
  store i32 %178, i32* %181, align 8
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %183, i32 0, i32 5
  %185 = load %struct.TYPE_25__*, %struct.TYPE_25__** %184, align 8
  store %struct.TYPE_25__* %185, %struct.TYPE_25__** %16, align 8
  br label %167

186:                                              ; preds = %167
  %187 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %188 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %188, i32 0, i32 5
  %190 = load %struct.TYPE_25__*, %struct.TYPE_25__** %189, align 8
  store %struct.TYPE_25__* %190, %struct.TYPE_25__** %10, align 8
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 6
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %193, align 8
  store %struct.TYPE_25__* %194, %struct.TYPE_25__** %16, align 8
  br label %195

195:                                              ; preds = %252, %186
  %196 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %197 = icmp ne %struct.TYPE_25__* %196, null
  br i1 %197, label %198, label %257

198:                                              ; preds = %195
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = sext i32 %202 to i64
  %204 = inttoptr i64 %203 to i8*
  %205 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %206 = icmp eq i8* %204, %205
  br i1 %206, label %207, label %236

207:                                              ; preds = %198
  %208 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 6
  %211 = load %struct.TYPE_25__*, %struct.TYPE_25__** %210, align 8
  store %struct.TYPE_25__* %211, %struct.TYPE_25__** %17, align 8
  br label %212

212:                                              ; preds = %215, %207
  %213 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %214 = icmp ne %struct.TYPE_25__* %213, null
  br i1 %214, label %215, label %235

215:                                              ; preds = %212
  %216 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %217 = call i32 @AnMapObjTypeToBtype(%struct.TYPE_25__* %216)
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %219 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %218, i32 0, i32 8
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %18, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds i32, i32* %220, i64 %222
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %217
  store i32 %225, i32* %223, align 4
  %226 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %227 = ptrtoint i8* %226 to i32
  %228 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %229 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 0
  store i32 %227, i32* %230, align 8
  %231 = load %struct.TYPE_25__*, %struct.TYPE_25__** %17, align 8
  %232 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 5
  %234 = load %struct.TYPE_25__*, %struct.TYPE_25__** %233, align 8
  store %struct.TYPE_25__* %234, %struct.TYPE_25__** %17, align 8
  br label %212

235:                                              ; preds = %212
  br label %252

236:                                              ; preds = %198
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %238 = call i32 @AnMapObjTypeToBtype(%struct.TYPE_25__* %237)
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 8
  %241 = load i32*, i32** %240, align 8
  %242 = load i32, i32* %18, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  store i32 %238, i32* %244, align 4
  %245 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %246 = ptrtoint i8* %245 to i32
  %247 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %248 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %247, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 0
  store i32 %246, i32* %249, align 8
  %250 = load i32, i32* %18, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %18, align 4
  br label %252

252:                                              ; preds = %236, %235
  %253 = load %struct.TYPE_25__*, %struct.TYPE_25__** %16, align 8
  %254 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %253, i32 0, i32 0
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 5
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %255, align 8
  store %struct.TYPE_25__* %256, %struct.TYPE_25__** %16, align 8
  br label %195

257:                                              ; preds = %195
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %257
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %18, align 4
  %267 = icmp ne i32 %265, %266
  br i1 %267, label %268, label %269

268:                                              ; preds = %262
  br label %269

269:                                              ; preds = %268, %262, %257
  %270 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %288, label %274

274:                                              ; preds = %269
  %275 = load i32, i32* %18, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %288

277:                                              ; preds = %274
  %278 = load i32, i32* %18, align 4
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 0
  store i32 %278, i32* %280, align 8
  %281 = load i32, i32* %18, align 4
  %282 = load %struct.TYPE_25__*, %struct.TYPE_25__** %15, align 8
  %283 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %283, i32 0, i32 7
  %285 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %284, i32 0, i32 0
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %281
  store i32 %287, i32* %285, align 8
  br label %288

288:                                              ; preds = %277, %274, %269
  store i64 0, i64* %12, align 8
  br label %289

289:                                              ; preds = %303, %288
  %290 = load i64, i64* %12, align 8
  %291 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %292 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = sext i32 %293 to i64
  %295 = icmp ult i64 %290, %294
  br i1 %295, label %296, label %306

296:                                              ; preds = %289
  %297 = load i8*, i8** @TRUE, align 8
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %299 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %298, i32 0, i32 4
  %300 = load i8**, i8*** %299, align 8
  %301 = load i64, i64* %12, align 8
  %302 = getelementptr inbounds i8*, i8** %300, i64 %301
  store i8* %297, i8** %302, align 8
  br label %303

303:                                              ; preds = %296
  %304 = load i64, i64* %12, align 8
  %305 = add i64 %304, 1
  store i64 %305, i64* %12, align 8
  br label %289

306:                                              ; preds = %289
  br label %755

307:                                              ; preds = %35
  %308 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %309 = icmp ne %struct.TYPE_23__* %308, null
  br i1 %309, label %310, label %357

310:                                              ; preds = %307
  %311 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %312, i32 0, i32 9
  %314 = load i32, i32* %313, align 8
  %315 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %316 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %315, i32 0, i32 6
  %317 = load %struct.TYPE_25__*, %struct.TYPE_25__** %316, align 8
  %318 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %318, i32 0, i32 9
  %320 = load i32, i32* %319, align 8
  %321 = icmp eq i32 %314, %320
  br i1 %321, label %322, label %357

322:                                              ; preds = %310
  %323 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %324 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %323, i32 0, i32 7
  %325 = load i32, i32* %324, align 8
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %347

327:                                              ; preds = %322
  %328 = load i32, i32* @ASL_ERROR, align 4
  %329 = load i32, i32* @ASL_MSG_ILLEGAL_RECURSION, align 4
  %330 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %331 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %332 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %331, i32 0, i32 0
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 7
  %334 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = load i32, i32* @ASL_MSG_FOUND_HERE, align 4
  %337 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %338 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %337, i32 0, i32 6
  %339 = load %struct.TYPE_25__*, %struct.TYPE_25__** %338, align 8
  %340 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %341 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %340, i32 0, i32 6
  %342 = load %struct.TYPE_25__*, %struct.TYPE_25__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %342, i32 0, i32 0
  %344 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %343, i32 0, i32 2
  %345 = load i8*, i8** %344, align 8
  %346 = call i32 @AslDualParseOpError(i32 %328, i32 %329, %struct.TYPE_25__* %330, i32 %335, i32 %336, %struct.TYPE_25__* %339, i8* %345)
  br label %356

347:                                              ; preds = %322
  %348 = load i32, i32* @ASL_REMARK, align 4
  %349 = load i32, i32* @ASL_MSG_RECURSION, align 4
  %350 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %351 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %351, i32 0, i32 0
  %353 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %352, i32 0, i32 2
  %354 = load i8*, i8** %353, align 8
  %355 = call i32 @AslError(i32 %348, i32 %349, %struct.TYPE_25__* %350, i8* %354)
  br label %356

356:                                              ; preds = %347, %327
  br label %357

357:                                              ; preds = %356, %310, %307
  br label %755

358:                                              ; preds = %35, %35, %35, %35, %35, %35, %35, %35
  %359 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %360 = icmp ne %struct.TYPE_23__* %359, null
  br i1 %360, label %371, label %361

361:                                              ; preds = %358
  %362 = load i32, i32* @ASL_REMARK, align 4
  %363 = load i32, i32* @ASL_MSG_LOCAL_OUTSIDE_METHOD, align 4
  %364 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %365 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %366 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %365, i32 0, i32 0
  %367 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %366, i32 0, i32 2
  %368 = load i8*, i8** %367, align 8
  %369 = call i32 @AslError(i32 %362, i32 %363, %struct.TYPE_25__* %364, i8* %368)
  %370 = load i32, i32* @AE_ERROR, align 4
  store i32 %370, i32* %4, align 4
  br label %760

371:                                              ; preds = %358
  %372 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %373 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %372, i32 0, i32 0
  %374 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i32 0, i32 3
  %375 = load i32, i32* %374, align 8
  %376 = and i32 %375, 7
  %377 = sext i32 %376 to i64
  store i64 %377, i64* %11, align 8
  %378 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %379 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %378, i32 0, i32 0
  %380 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 4
  %382 = load i32, i32* @OP_IS_TARGET, align 4
  %383 = and i32 %381, %382
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %385, label %392

385:                                              ; preds = %371
  %386 = load i8*, i8** @TRUE, align 8
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 5
  %389 = load i8**, i8*** %388, align 8
  %390 = load i64, i64* %11, align 8
  %391 = getelementptr inbounds i8*, i8** %389, i64 %390
  store i8* %386, i8** %391, align 8
  br label %427

392:                                              ; preds = %371
  %393 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %394 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %393, i32 0, i32 5
  %395 = load i8**, i8*** %394, align 8
  %396 = load i64, i64* %11, align 8
  %397 = getelementptr inbounds i8*, i8** %395, i64 %396
  %398 = load i8*, i8** %397, align 8
  %399 = icmp ne i8* %398, null
  br i1 %399, label %426, label %400

400:                                              ; preds = %392
  %401 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %402 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %401, i32 0, i32 0
  %403 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %402, i32 0, i32 8
  %404 = load %struct.TYPE_25__*, %struct.TYPE_25__** %403, align 8
  %405 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = sext i32 %407 to i64
  %409 = inttoptr i64 %408 to i8*
  %410 = load i8*, i8** @PARSEOP_OBJECTTYPE, align 8
  %411 = icmp ne i8* %409, %410
  br i1 %411, label %412, label %426

412:                                              ; preds = %400
  %413 = load i64, i64* %11, align 8
  %414 = add i64 %413, 48
  %415 = trunc i64 %414 to i8
  %416 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 0
  %417 = call i32 @strlen(i8* %416)
  %418 = sub nsw i32 %417, 1
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 %419
  store i8 %415, i8* %420, align 1
  %421 = load i32, i32* @ASL_ERROR, align 4
  %422 = load i32, i32* @ASL_MSG_LOCAL_INIT, align 4
  %423 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %424 = getelementptr inbounds [7 x i8], [7 x i8]* %13, i64 0, i64 0
  %425 = call i32 @AslError(i32 %421, i32 %422, %struct.TYPE_25__* %423, i8* %424)
  br label %426

426:                                              ; preds = %412, %400, %392
  br label %427

427:                                              ; preds = %426, %385
  br label %755

428:                                              ; preds = %35, %35, %35, %35, %35, %35, %35
  %429 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %430 = icmp ne %struct.TYPE_23__* %429, null
  br i1 %430, label %441, label %431

431:                                              ; preds = %428
  %432 = load i32, i32* @ASL_REMARK, align 4
  %433 = load i32, i32* @ASL_MSG_LOCAL_OUTSIDE_METHOD, align 4
  %434 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %435 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %436 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %435, i32 0, i32 0
  %437 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %436, i32 0, i32 2
  %438 = load i8*, i8** %437, align 8
  %439 = call i32 @AslError(i32 %432, i32 %433, %struct.TYPE_25__* %434, i8* %438)
  %440 = load i32, i32* @AE_ERROR, align 4
  store i32 %440, i32* %4, align 4
  br label %760

441:                                              ; preds = %428
  %442 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %443 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %442, i32 0, i32 0
  %444 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %443, i32 0, i32 3
  %445 = load i32, i32* %444, align 8
  %446 = and i32 %445, 15
  %447 = sub nsw i32 %446, 8
  %448 = sext i32 %447 to i64
  store i64 %448, i64* %11, align 8
  %449 = load i64, i64* %11, align 8
  %450 = add i64 %449, 48
  %451 = trunc i64 %450 to i8
  %452 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  %453 = call i32 @strlen(i8* %452)
  %454 = sub nsw i32 %453, 1
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 %455
  store i8 %451, i8* %456, align 1
  %457 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %458 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %457, i32 0, i32 0
  %459 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %458, i32 0, i32 4
  %460 = load i32, i32* %459, align 4
  %461 = load i32, i32* @OP_IS_TARGET, align 4
  %462 = and i32 %460, %461
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %464, label %471

464:                                              ; preds = %441
  %465 = load i8*, i8** @TRUE, align 8
  %466 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %467 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %466, i32 0, i32 4
  %468 = load i8**, i8*** %467, align 8
  %469 = load i64, i64* %11, align 8
  %470 = getelementptr inbounds i8*, i8** %468, i64 %469
  store i8* %465, i8** %470, align 8
  br label %498

471:                                              ; preds = %441
  %472 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %473 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %472, i32 0, i32 4
  %474 = load i8**, i8*** %473, align 8
  %475 = load i64, i64* %11, align 8
  %476 = getelementptr inbounds i8*, i8** %474, i64 %475
  %477 = load i8*, i8** %476, align 8
  %478 = icmp ne i8* %477, null
  br i1 %478, label %497, label %479

479:                                              ; preds = %471
  %480 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %481 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %480, i32 0, i32 0
  %482 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %481, i32 0, i32 8
  %483 = load %struct.TYPE_25__*, %struct.TYPE_25__** %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %483, i32 0, i32 0
  %485 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %484, i32 0, i32 0
  %486 = load i32, i32* %485, align 8
  %487 = sext i32 %486 to i64
  %488 = inttoptr i64 %487 to i8*
  %489 = load i8*, i8** @PARSEOP_OBJECTTYPE, align 8
  %490 = icmp ne i8* %488, %489
  br i1 %490, label %491, label %497

491:                                              ; preds = %479
  %492 = load i32, i32* @ASL_ERROR, align 4
  %493 = load i32, i32* @ASL_MSG_ARG_INIT, align 4
  %494 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %495 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  %496 = call i32 @AslError(i32 %492, i32 %493, %struct.TYPE_25__* %494, i8* %495)
  br label %497

497:                                              ; preds = %491, %479, %471
  br label %498

498:                                              ; preds = %497, %464
  %499 = load i64, i64* %11, align 8
  %500 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %501 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %500, i32 0, i32 0
  %502 = load i32, i32* %501, align 8
  %503 = sext i32 %502 to i64
  %504 = icmp uge i64 %499, %503
  br i1 %504, label %505, label %511

505:                                              ; preds = %498
  %506 = load i32, i32* @ASL_REMARK, align 4
  %507 = load i32, i32* @ASL_MSG_NOT_PARAMETER, align 4
  %508 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %509 = getelementptr inbounds [5 x i8], [5 x i8]* %14, i64 0, i64 0
  %510 = call i32 @AslError(i32 %506, i32 %507, %struct.TYPE_25__* %508, i8* %509)
  br label %511

511:                                              ; preds = %505, %498
  br label %755

512:                                              ; preds = %35
  %513 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %514 = icmp ne %struct.TYPE_23__* %513, null
  br i1 %514, label %521, label %515

515:                                              ; preds = %512
  %516 = load i32, i32* @AE_INFO, align 4
  %517 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %518 = ptrtoint %struct.TYPE_25__* %517 to i32
  %519 = call i32 @ACPI_WARNING(i32 %518)
  %520 = load i32, i32* @AE_ERROR, align 4
  store i32 %520, i32* %4, align 4
  br label %760

521:                                              ; preds = %512
  %522 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %523 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %522, i32 0, i32 0
  %524 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %523, i32 0, i32 6
  %525 = load %struct.TYPE_25__*, %struct.TYPE_25__** %524, align 8
  %526 = icmp ne %struct.TYPE_25__* %525, null
  br i1 %526, label %527, label %555

527:                                              ; preds = %521
  %528 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %529 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %528, i32 0, i32 0
  %530 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %529, i32 0, i32 6
  %531 = load %struct.TYPE_25__*, %struct.TYPE_25__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %531, i32 0, i32 0
  %533 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %532, i32 0, i32 0
  %534 = load i32, i32* %533, align 8
  %535 = sext i32 %534 to i64
  %536 = inttoptr i64 %535 to i8*
  %537 = load i8*, i8** @PARSEOP_DEFAULT_ARG, align 8
  %538 = icmp ne i8* %536, %537
  br i1 %538, label %539, label %555

539:                                              ; preds = %527
  %540 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %541 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %540, i32 0, i32 0
  %542 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %541, i32 0, i32 6
  %543 = load %struct.TYPE_25__*, %struct.TYPE_25__** %542, align 8
  %544 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %543, i32 0, i32 0
  %545 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %544, i32 0, i32 4
  %546 = load i32, i32* %545, align 4
  %547 = load i32, i32* @OP_IS_NULL_RETURN, align 4
  %548 = and i32 %546, %547
  %549 = icmp ne i32 %548, 0
  br i1 %549, label %555, label %550

550:                                              ; preds = %539
  %551 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %552 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %551, i32 0, i32 3
  %553 = load i32, i32* %552, align 4
  %554 = add nsw i32 %553, 1
  store i32 %554, i32* %552, align 4
  br label %560

555:                                              ; preds = %539, %527, %521
  %556 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %557 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %556, i32 0, i32 2
  %558 = load i32, i32* %557, align 8
  %559 = add nsw i32 %558, 1
  store i32 %559, i32* %557, align 8
  br label %560

560:                                              ; preds = %555, %550
  br label %755

561:                                              ; preds = %35, %35
  %562 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %563 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %562, i32 0, i32 0
  %564 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %563, i32 0, i32 8
  %565 = load %struct.TYPE_25__*, %struct.TYPE_25__** %564, align 8
  store %struct.TYPE_25__* %565, %struct.TYPE_25__** %10, align 8
  br label %566

566:                                              ; preds = %579, %561
  %567 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %568 = icmp ne %struct.TYPE_25__* %567, null
  br i1 %568, label %569, label %584

569:                                              ; preds = %566
  %570 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %571 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %570, i32 0, i32 0
  %572 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %571, i32 0, i32 0
  %573 = load i32, i32* %572, align 8
  %574 = sext i32 %573 to i64
  %575 = inttoptr i64 %574 to i8*
  %576 = load i8*, i8** @PARSEOP_WHILE, align 8
  %577 = icmp eq i8* %575, %576
  br i1 %577, label %578, label %579

578:                                              ; preds = %569
  br label %584

579:                                              ; preds = %569
  %580 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %581 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %580, i32 0, i32 0
  %582 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %581, i32 0, i32 8
  %583 = load %struct.TYPE_25__*, %struct.TYPE_25__** %582, align 8
  store %struct.TYPE_25__* %583, %struct.TYPE_25__** %10, align 8
  br label %566

584:                                              ; preds = %578, %566
  %585 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %586 = icmp ne %struct.TYPE_25__* %585, null
  br i1 %586, label %592, label %587

587:                                              ; preds = %584
  %588 = load i32, i32* @ASL_ERROR, align 4
  %589 = load i32, i32* @ASL_MSG_NO_WHILE, align 4
  %590 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %591 = call i32 @AslError(i32 %588, i32 %589, %struct.TYPE_25__* %590, i8* null)
  br label %592

592:                                              ; preds = %587, %584
  br label %755

593:                                              ; preds = %35
  %594 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %595 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %595, i32 0, i32 6
  %597 = load %struct.TYPE_25__*, %struct.TYPE_25__** %596, align 8
  %598 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %597, i32 0, i32 0
  %599 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %598, i32 0, i32 0
  %600 = load i32, i32* %599, align 8
  %601 = sext i32 %600 to i64
  %602 = inttoptr i64 %601 to i8*
  %603 = load i8*, i8** @PARSEOP_INTEGER, align 8
  %604 = icmp eq i8* %602, %603
  br i1 %604, label %605, label %621

605:                                              ; preds = %593
  %606 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %607 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %606, i32 0, i32 0
  %608 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %607, i32 0, i32 6
  %609 = load %struct.TYPE_25__*, %struct.TYPE_25__** %608, align 8
  %610 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %609, i32 0, i32 0
  %611 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %610, i32 0, i32 7
  %612 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %611, i32 0, i32 0
  %613 = load i32, i32* %612, align 8
  %614 = load i32, i32* @ACPI_UINT8_MAX, align 4
  %615 = icmp sgt i32 %613, %614
  br i1 %615, label %616, label %621

616:                                              ; preds = %605
  %617 = load i32, i32* @ASL_ERROR, align 4
  %618 = load i32, i32* @ASL_MSG_INVALID_TIME, align 4
  %619 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %620 = call i32 @AslError(i32 %617, i32 %618, %struct.TYPE_25__* %619, i8* null)
  br label %621

621:                                              ; preds = %616, %605, %593
  br label %755

622:                                              ; preds = %35
  %623 = load i32, i32* @METHOD_NAME__HID, align 4
  %624 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %625 = call i32 @ApFindNameInDeviceTree(i32 %623, %struct.TYPE_25__* %624)
  store i32 %625, i32* %19, align 4
  %626 = load i32, i32* @METHOD_NAME__ADR, align 4
  %627 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %628 = call i32 @ApFindNameInDeviceTree(i32 %626, %struct.TYPE_25__* %627)
  store i32 %628, i32* %20, align 4
  %629 = load i32, i32* %19, align 4
  %630 = icmp ne i32 %629, 0
  br i1 %630, label %639, label %631

631:                                              ; preds = %622
  %632 = load i32, i32* %20, align 4
  %633 = icmp ne i32 %632, 0
  br i1 %633, label %639, label %634

634:                                              ; preds = %631
  %635 = load i32, i32* @ASL_WARNING, align 4
  %636 = load i32, i32* @ASL_MSG_MISSING_DEPENDENCY, align 4
  %637 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %638 = call i32 @AslError(i32 %635, i32 %636, %struct.TYPE_25__* %637, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  br label %651

639:                                              ; preds = %631, %622
  %640 = load i32, i32* %19, align 4
  %641 = icmp ne i32 %640, 0
  br i1 %641, label %642, label %650

642:                                              ; preds = %639
  %643 = load i32, i32* %20, align 4
  %644 = icmp ne i32 %643, 0
  br i1 %644, label %645, label %650

645:                                              ; preds = %642
  %646 = load i32, i32* @ASL_WARNING, align 4
  %647 = load i32, i32* @ASL_MSG_MULTIPLE_TYPES, align 4
  %648 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %649 = call i32 @AslError(i32 %646, i32 %647, %struct.TYPE_25__* %648, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.4, i64 0, i64 0))
  br label %650

650:                                              ; preds = %645, %642, %639
  br label %651

651:                                              ; preds = %650, %634
  br label %755

652:                                              ; preds = %35, %35, %35, %35, %35, %35
  %653 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %654 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %655 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %654, i32 0, i32 0
  %656 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %655, i32 0, i32 1
  %657 = load i8*, i8** %656, align 8
  %658 = call i64 @ApCheckForPredefinedName(%struct.TYPE_25__* %653, i8* %657)
  store i64 %658, i64* %12, align 8
  %659 = load i64, i64* %12, align 8
  %660 = load i64, i64* @ACPI_VALID_RESERVED_NAME_MAX, align 8
  %661 = icmp ult i64 %659, %660
  br i1 %661, label %662, label %671

662:                                              ; preds = %652
  %663 = load i32, i32* @ASL_ERROR, align 4
  %664 = load i32, i32* @ASL_MSG_RESERVED_USE, align 4
  %665 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %666 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %667 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %666, i32 0, i32 0
  %668 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %667, i32 0, i32 2
  %669 = load i8*, i8** %668, align 8
  %670 = call i32 @AslError(i32 %663, i32 %664, %struct.TYPE_25__* %665, i8* %669)
  br label %671

671:                                              ; preds = %662, %652
  br label %755

672:                                              ; preds = %35
  %673 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %674 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %675 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %674, i32 0, i32 0
  %676 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %675, i32 0, i32 1
  %677 = load i8*, i8** %676, align 8
  %678 = call i32 @ApCheckForPredefinedObject(%struct.TYPE_25__* %673, i8* %677)
  %679 = load i32, i32* @METHOD_NAME__HID, align 4
  %680 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %681 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %680, i32 0, i32 0
  %682 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %681, i32 0, i32 1
  %683 = load i8*, i8** %682, align 8
  %684 = call i32 @strcmp(i32 %679, i8* %683)
  %685 = icmp ne i32 %684, 0
  br i1 %685, label %697, label %686

686:                                              ; preds = %672
  %687 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %688 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %687, i32 0, i32 0
  %689 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %688, i32 0, i32 6
  %690 = load %struct.TYPE_25__*, %struct.TYPE_25__** %689, align 8
  %691 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %690, i32 0, i32 0
  %692 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %691, i32 0, i32 5
  %693 = load %struct.TYPE_25__*, %struct.TYPE_25__** %692, align 8
  store %struct.TYPE_25__* %693, %struct.TYPE_25__** %10, align 8
  %694 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %695 = load i32, i32* @ASL_TYPE_HID, align 4
  %696 = call i32 @AnCheckId(%struct.TYPE_25__* %694, i32 %695)
  br label %753

697:                                              ; preds = %672
  %698 = load i32, i32* @METHOD_NAME__CID, align 4
  %699 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %700 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %699, i32 0, i32 0
  %701 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %700, i32 0, i32 1
  %702 = load i8*, i8** %701, align 8
  %703 = call i32 @strcmp(i32 %698, i8* %702)
  %704 = icmp ne i32 %703, 0
  br i1 %704, label %752, label %705

705:                                              ; preds = %697
  %706 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %707 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %706, i32 0, i32 0
  %708 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %707, i32 0, i32 6
  %709 = load %struct.TYPE_25__*, %struct.TYPE_25__** %708, align 8
  %710 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %709, i32 0, i32 0
  %711 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %710, i32 0, i32 5
  %712 = load %struct.TYPE_25__*, %struct.TYPE_25__** %711, align 8
  store %struct.TYPE_25__* %712, %struct.TYPE_25__** %10, align 8
  %713 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %714 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %713, i32 0, i32 0
  %715 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %714, i32 0, i32 0
  %716 = load i32, i32* %715, align 8
  %717 = sext i32 %716 to i64
  %718 = inttoptr i64 %717 to i8*
  %719 = load i8*, i8** @PARSEOP_PACKAGE, align 8
  %720 = icmp eq i8* %718, %719
  br i1 %720, label %730, label %721

721:                                              ; preds = %705
  %722 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %723 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %722, i32 0, i32 0
  %724 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %723, i32 0, i32 0
  %725 = load i32, i32* %724, align 8
  %726 = sext i32 %725 to i64
  %727 = inttoptr i64 %726 to i8*
  %728 = load i8*, i8** @PARSEOP_VAR_PACKAGE, align 8
  %729 = icmp eq i8* %727, %728
  br i1 %729, label %730, label %747

730:                                              ; preds = %721, %705
  %731 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %732 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %731, i32 0, i32 0
  %733 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %732, i32 0, i32 6
  %734 = load %struct.TYPE_25__*, %struct.TYPE_25__** %733, align 8
  store %struct.TYPE_25__* %734, %struct.TYPE_25__** %10, align 8
  br label %735

735:                                              ; preds = %738, %730
  %736 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %737 = icmp ne %struct.TYPE_25__* %736, null
  br i1 %737, label %738, label %746

738:                                              ; preds = %735
  %739 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %740 = load i32, i32* @ASL_TYPE_CID, align 4
  %741 = call i32 @AnCheckId(%struct.TYPE_25__* %739, i32 %740)
  %742 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %743 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %742, i32 0, i32 0
  %744 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %743, i32 0, i32 5
  %745 = load %struct.TYPE_25__*, %struct.TYPE_25__** %744, align 8
  store %struct.TYPE_25__* %745, %struct.TYPE_25__** %10, align 8
  br label %735

746:                                              ; preds = %735
  br label %751

747:                                              ; preds = %721
  %748 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %749 = load i32, i32* @ASL_TYPE_CID, align 4
  %750 = call i32 @AnCheckId(%struct.TYPE_25__* %748, i32 %749)
  br label %751

751:                                              ; preds = %747, %746
  br label %752

752:                                              ; preds = %751, %697
  br label %753

753:                                              ; preds = %752, %686
  br label %755

754:                                              ; preds = %35
  br label %755

755:                                              ; preds = %754, %753, %671, %651, %621, %592, %560, %511, %427, %357, %306
  %756 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %757 = load %struct.TYPE_23__*, %struct.TYPE_23__** %9, align 8
  %758 = call i32 @MtCheckNamedObjectInMethod(%struct.TYPE_25__* %756, %struct.TYPE_23__* %757)
  %759 = load i32, i32* @AE_OK, align 4
  store i32 %759, i32* %4, align 4
  br label %760

760:                                              ; preds = %755, %515, %431, %361
  %761 = load i32, i32* %4, align 4
  ret i32 %761
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OtXrefWalkPart1(%struct.TYPE_25__*, i64, %struct.TYPE_23__*) #2

declare dso_local %struct.TYPE_23__* @UtLocalCalloc(i32) #2

declare dso_local i32 @ACPI_COMPARE_NAMESEG(i32, i8*) #2

declare dso_local i32 @ApFindNameInScope(i32, %struct.TYPE_25__*) #2

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_25__*, i8*) #2

declare dso_local i32 @sprintf(i8*, i8*, i8*) #2

declare dso_local i32 @AnMapObjTypeToBtype(%struct.TYPE_25__*) #2

declare dso_local i32 @AslDualParseOpError(i32, i32, %struct.TYPE_25__*, i32, i32, %struct.TYPE_25__*, i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @ACPI_WARNING(i32) #2

declare dso_local i32 @ApFindNameInDeviceTree(i32, %struct.TYPE_25__*) #2

declare dso_local i64 @ApCheckForPredefinedName(%struct.TYPE_25__*, i8*) #2

declare dso_local i32 @ApCheckForPredefinedObject(%struct.TYPE_25__*, i8*) #2

declare dso_local i32 @strcmp(i32, i8*) #2

declare dso_local i32 @AnCheckId(%struct.TYPE_25__*, i32) #2

declare dso_local i32 @MtCheckNamedObjectInMethod(%struct.TYPE_25__*, %struct.TYPE_23__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
