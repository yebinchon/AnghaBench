; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asltransform.c_TrDoSwitch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_asltransform.c_TrDoSwitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i64, %struct.TYPE_22__*, %struct.TYPE_22__*, %struct.TYPE_22__*, i32, i32 }

@AslGbl_TempCount = common dso_local global i32 0, align 4
@ASL_PARSE_OPCODE_BASE = common dso_local global i64 0, align 8
@AslKeywordMapping = common dso_local global %struct.TYPE_20__* null, align 8
@ASL_WARNING = common dso_local global i32 0, align 4
@ASL_MSG_SWITCH_TYPE = common dso_local global i32 0, align 4
@PARSEOP_CASE = common dso_local global i64 0, align 8
@PARSEOP_ELSE = common dso_local global i32 0, align 4
@PARSEOP_PACKAGE = common dso_local global i64 0, align 8
@PARSEOP_VAR_PACKAGE = common dso_local global i64 0, align 8
@PARSEOP_MATCHTYPE_MEQ = common dso_local global i32 0, align 4
@PARSEOP_NAMESTRING = common dso_local global i32 0, align 4
@PARSEOP_MATCHTYPE_MTR = common dso_local global i32 0, align 4
@PARSEOP_ZERO = common dso_local global i32 0, align 4
@PARSEOP_MATCH = common dso_local global i32 0, align 4
@PARSEOP_ONES = common dso_local global i32 0, align 4
@PARSEOP_LEQUAL = common dso_local global i32 0, align 4
@PARSEOP_LNOT = common dso_local global i32 0, align 4
@PARSEOP_IF = common dso_local global i32 0, align 4
@PARSEOP_DEFAULT = common dso_local global i64 0, align 8
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_MULTIPLE_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Unknown parse opcode for switch statement: %s (%u)\0A\00", align 1
@ASL_MSG_NO_CASES = common dso_local global i32 0, align 4
@PARSEOP_NAME = common dso_local global i32 0, align 4
@PARSEOP_METHOD = common dso_local global i64 0, align 8
@PARSEOP_DEFINITION_BLOCK = common dso_local global i64 0, align 8
@OP_COMPILER_EMITTED = common dso_local global i32 0, align 4
@PARSEOP_SERIALIZERULE_SERIAL = common dso_local global i64 0, align 8
@ASL_REMARK = common dso_local global i32 0, align 4
@ASL_MSG_SERIALIZED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Due to use of Switch operator\00", align 1
@PARSEOP_NAMESEG = common dso_local global i32 0, align 4
@OP_IS_NAME_DECLARATION = common dso_local global i32 0, align 4
@PARSEOP_STRING_LITERAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PARSEOP_BUFFER = common dso_local global i32 0, align 4
@PARSEOP_DEFAULT_ARG = common dso_local global i32 0, align 4
@PARSEOP_WHILE = common dso_local global i32 0, align 4
@PARSEOP_ONE = common dso_local global i32 0, align 4
@PARSEOP_STORE = common dso_local global i32 0, align 4
@PARSEOP_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @TrDoSwitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TrDoSwitch(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca %struct.TYPE_22__*, align 8
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca %struct.TYPE_22__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca %struct.TYPE_22__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %5, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %8, align 8
  %20 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  store %struct.TYPE_22__* %20, %struct.TYPE_22__** %7, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %22 = call i8* @TrAmlGetNextTempName(%struct.TYPE_22__* %21, i32* @AslGbl_TempCount)
  store i8* %22, i8** %17, align 8
  %23 = load i8*, i8** %17, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %641

26:                                               ; preds = %1
  %27 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 3
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %29, align 8
  store %struct.TYPE_22__* %30, %struct.TYPE_22__** %3, align 8
  %31 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ASL_PARSE_OPCODE_BASE, align 8
  %36 = sub nsw i64 %34, %35
  store i64 %36, i64* %18, align 8
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** @AslKeywordMapping, align 8
  %38 = load i64, i64* %18, align 8
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  store i32 %41, i32* %19, align 4
  %42 = load i32, i32* %19, align 4
  %43 = icmp ne i32 %42, 129
  br i1 %43, label %44, label %55

44:                                               ; preds = %26
  %45 = load i32, i32* %19, align 4
  %46 = icmp ne i32 %45, 128
  br i1 %46, label %47, label %55

47:                                               ; preds = %44
  %48 = load i32, i32* %19, align 4
  %49 = icmp ne i32 %48, 130
  br i1 %49, label %50, label %55

50:                                               ; preds = %47
  %51 = load i32, i32* @ASL_WARNING, align 4
  %52 = load i32, i32* @ASL_MSG_SWITCH_TYPE, align 4
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %54 = call i32 @AslError(i32 %51, i32 %52, %struct.TYPE_22__* %53, i8* null)
  store i32 129, i32* %19, align 4
  br label %55

55:                                               ; preds = %50, %47, %44, %26
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 2
  %59 = load %struct.TYPE_22__*, %struct.TYPE_22__** %58, align 8
  store %struct.TYPE_22__* %59, %struct.TYPE_22__** %10, align 8
  br label %60

60:                                               ; preds = %342, %55
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %62 = icmp ne %struct.TYPE_22__* %61, null
  br i1 %62, label %63, label %343

63:                                               ; preds = %60
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %64, %struct.TYPE_22__** %3, align 8
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %66, i32 0, i32 2
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %67, align 8
  store %struct.TYPE_22__* %68, %struct.TYPE_22__** %10, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PARSEOP_CASE, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %313

75:                                               ; preds = %63
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %77 = icmp ne %struct.TYPE_22__* %76, null
  br i1 %77, label %78, label %98

78:                                               ; preds = %75
  %79 = load i32, i32* @PARSEOP_ELSE, align 4
  %80 = call %struct.TYPE_22__* @TrCreateLeafOp(i32 %79)
  store %struct.TYPE_22__* %80, %struct.TYPE_22__** %11, align 8
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %82, i32 0, i32 1
  %84 = load %struct.TYPE_22__*, %struct.TYPE_22__** %83, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 1
  store %struct.TYPE_22__* %84, %struct.TYPE_22__** %87, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %88, %struct.TYPE_22__* %92)
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %95 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %96 = call i32 @TrAmlInsertPeer(%struct.TYPE_22__* %94, %struct.TYPE_22__* %95)
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  store %struct.TYPE_22__* %97, %struct.TYPE_22__** %7, align 8
  br label %98

98:                                               ; preds = %78, %75
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_22__* %99, %struct.TYPE_22__** %4, align 8
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  store %struct.TYPE_22__* %100, %struct.TYPE_22__** %8, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 3
  %104 = load %struct.TYPE_22__*, %struct.TYPE_22__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_22__*, %struct.TYPE_22__** %106, align 8
  store %struct.TYPE_22__* %107, %struct.TYPE_22__** %5, align 8
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %109, i32 0, i32 3
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %113, align 8
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 3
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %116, align 8
  store %struct.TYPE_22__* %117, %struct.TYPE_22__** %9, align 8
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @PARSEOP_PACKAGE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %131, label %124

124:                                              ; preds = %98
  %125 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @PARSEOP_VAR_PACKAGE, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %248

131:                                              ; preds = %124, %98
  %132 = load i32, i32* @PARSEOP_MATCHTYPE_MEQ, align 4
  %133 = call %struct.TYPE_22__* @TrCreateLeafOp(i32 %132)
  store %struct.TYPE_22__* %133, %struct.TYPE_22__** %12, align 8
  %134 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %135 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %136 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %136, i32 0, i32 2
  store %struct.TYPE_22__* %134, %struct.TYPE_22__** %137, align 8
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %140 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %138, %struct.TYPE_22__* %139)
  %141 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %141, %struct.TYPE_22__** %11, align 8
  %142 = load i32, i32* @PARSEOP_NAMESTRING, align 4
  %143 = load i8*, i8** %17, align 8
  %144 = call i64 @ACPI_TO_INTEGER(i8* %143)
  %145 = trunc i64 %144 to i32
  %146 = call %struct.TYPE_22__* @TrCreateValuedLeafOp(i32 %142, i32 %145)
  store %struct.TYPE_22__* %146, %struct.TYPE_22__** %12, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %148 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %149 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 2
  store %struct.TYPE_22__* %147, %struct.TYPE_22__** %150, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %153 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %151, %struct.TYPE_22__* %152)
  %154 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %154, %struct.TYPE_22__** %11, align 8
  %155 = load i32, i32* @PARSEOP_MATCHTYPE_MTR, align 4
  %156 = call %struct.TYPE_22__* @TrCreateLeafOp(i32 %155)
  store %struct.TYPE_22__* %156, %struct.TYPE_22__** %12, align 8
  %157 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %158 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %159, i32 0, i32 2
  store %struct.TYPE_22__* %157, %struct.TYPE_22__** %160, align 8
  %161 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %162 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %163 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %161, %struct.TYPE_22__* %162)
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %164, %struct.TYPE_22__** %11, align 8
  %165 = load i32, i32* @PARSEOP_ZERO, align 4
  %166 = call %struct.TYPE_22__* @TrCreateLeafOp(i32 %165)
  store %struct.TYPE_22__* %166, %struct.TYPE_22__** %12, align 8
  %167 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %169, i32 0, i32 2
  store %struct.TYPE_22__* %167, %struct.TYPE_22__** %170, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %173 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %171, %struct.TYPE_22__* %172)
  %174 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %174, %struct.TYPE_22__** %11, align 8
  %175 = load i32, i32* @PARSEOP_ZERO, align 4
  %176 = call %struct.TYPE_22__* @TrCreateLeafOp(i32 %175)
  store %struct.TYPE_22__* %176, %struct.TYPE_22__** %12, align 8
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %179, i32 0, i32 2
  store %struct.TYPE_22__* %177, %struct.TYPE_22__** %180, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %183 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %181, %struct.TYPE_22__* %182)
  %184 = load i32, i32* @PARSEOP_MATCH, align 4
  %185 = call %struct.TYPE_22__* @TrCreateLeafOp(i32 %184)
  store %struct.TYPE_22__* %185, %struct.TYPE_22__** %12, align 8
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 3
  store %struct.TYPE_22__* %186, %struct.TYPE_22__** %189, align 8
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %192 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %190, %struct.TYPE_22__* %191)
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %195 = call i32 @TrAmlSetSubtreeParent(%struct.TYPE_22__* %193, %struct.TYPE_22__* %194)
  %196 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %196, %struct.TYPE_22__** %11, align 8
  %197 = load i32, i32* @PARSEOP_ONES, align 4
  %198 = call %struct.TYPE_22__* @TrCreateLeafOp(i32 %197)
  store %struct.TYPE_22__* %198, %struct.TYPE_22__** %12, align 8
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %201, i32 0, i32 2
  store %struct.TYPE_22__* %199, %struct.TYPE_22__** %202, align 8
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %204 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %205 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %203, %struct.TYPE_22__* %204)
  %206 = load i32, i32* @PARSEOP_LEQUAL, align 4
  %207 = call %struct.TYPE_22__* @TrCreateLeafOp(i32 %206)
  store %struct.TYPE_22__* %207, %struct.TYPE_22__** %12, align 8
  %208 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %209 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %210 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %210, i32 0, i32 3
  store %struct.TYPE_22__* %208, %struct.TYPE_22__** %211, align 8
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %213 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %214, i32 0, i32 1
  store %struct.TYPE_22__* %212, %struct.TYPE_22__** %215, align 8
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %217 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %218 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %216, %struct.TYPE_22__* %217)
  %219 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %221 = call i32 @TrAmlSetSubtreeParent(%struct.TYPE_22__* %219, %struct.TYPE_22__* %220)
  %222 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %222, %struct.TYPE_22__** %11, align 8
  %223 = load i32, i32* @PARSEOP_LNOT, align 4
  %224 = call %struct.TYPE_22__* @TrCreateLeafOp(i32 %223)
  store %struct.TYPE_22__* %224, %struct.TYPE_22__** %12, align 8
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %227 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %227, i32 0, i32 3
  store %struct.TYPE_22__* %225, %struct.TYPE_22__** %228, align 8
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %231, i32 0, i32 1
  store %struct.TYPE_22__* %229, %struct.TYPE_22__** %232, align 8
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %235, i32 0, i32 1
  store %struct.TYPE_22__* %233, %struct.TYPE_22__** %236, align 8
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %239 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %237, %struct.TYPE_22__* %238)
  %240 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %242, i32 0, i32 3
  store %struct.TYPE_22__* %240, %struct.TYPE_22__** %243, align 8
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %245 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %246 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %246, i32 0, i32 2
  store %struct.TYPE_22__* %244, %struct.TYPE_22__** %247, align 8
  br label %289

248:                                              ; preds = %124
  %249 = load i32, i32* @PARSEOP_NAMESTRING, align 4
  %250 = load i8*, i8** %17, align 8
  %251 = call i64 @ACPI_TO_INTEGER(i8* %250)
  %252 = trunc i64 %251 to i32
  %253 = call %struct.TYPE_22__* @TrCreateValuedLeafOp(i32 %249, i32 %252)
  store %struct.TYPE_22__* %253, %struct.TYPE_22__** %11, align 8
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %255 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %256, i32 0, i32 2
  store %struct.TYPE_22__* %254, %struct.TYPE_22__** %257, align 8
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %260 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %258, %struct.TYPE_22__* %259)
  %261 = load i32, i32* @PARSEOP_LEQUAL, align 4
  %262 = call %struct.TYPE_22__* @TrCreateLeafOp(i32 %261)
  store %struct.TYPE_22__* %262, %struct.TYPE_22__** %12, align 8
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %264 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %265, i32 0, i32 1
  store %struct.TYPE_22__* %263, %struct.TYPE_22__** %266, align 8
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %268 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %269, i32 0, i32 3
  store %struct.TYPE_22__* %267, %struct.TYPE_22__** %270, align 8
  %271 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %273 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %271, %struct.TYPE_22__* %272)
  %274 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %275 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %276 = call i32 @TrAmlSetSubtreeParent(%struct.TYPE_22__* %274, %struct.TYPE_22__* %275)
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  store %struct.TYPE_22__* %277, %struct.TYPE_22__** %9, align 8
  %278 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %279 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %280 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 2
  store %struct.TYPE_22__* %278, %struct.TYPE_22__** %281, align 8
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %283 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %284 = call i32 @TrAmlSetSubtreeParent(%struct.TYPE_22__* %282, %struct.TYPE_22__* %283)
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 0
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 3
  store %struct.TYPE_22__* %285, %struct.TYPE_22__** %288, align 8
  br label %289

289:                                              ; preds = %248, %131
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %291 = load i32, i32* @PARSEOP_IF, align 4
  %292 = call i32 @TrAmlInitNode(%struct.TYPE_22__* %290, i32 %291)
  %293 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %294 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %295 = icmp eq %struct.TYPE_22__* %293, %294
  br i1 %295, label %296, label %300

296:                                              ; preds = %289
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %298, i32 0, i32 2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %299, align 8
  br label %312

300:                                              ; preds = %289
  %301 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %302, i32 0, i32 0
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 3
  store %struct.TYPE_22__* %301, %struct.TYPE_22__** %304, align 8
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %306 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %307, i32 0, i32 1
  store %struct.TYPE_22__* %305, %struct.TYPE_22__** %308, align 8
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 0
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 2
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %311, align 8
  br label %312

312:                                              ; preds = %300, %296
  br label %342

313:                                              ; preds = %63
  %314 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = load i64, i64* @PARSEOP_DEFAULT, align 8
  %319 = icmp eq i64 %317, %318
  br i1 %319, label %320, label %331

320:                                              ; preds = %313
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %322 = icmp ne %struct.TYPE_22__* %321, null
  br i1 %322, label %323, label %328

323:                                              ; preds = %320
  %324 = load i32, i32* @ASL_ERROR, align 4
  %325 = load i32, i32* @ASL_MSG_MULTIPLE_DEFAULT, align 4
  %326 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %327 = call i32 @AslError(i32 %324, i32 %325, %struct.TYPE_22__* %326, i8* null)
  br label %330

328:                                              ; preds = %320
  %329 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_22__* %329, %struct.TYPE_22__** %6, align 8
  br label %330

330:                                              ; preds = %328, %323
  br label %341

331:                                              ; preds = %313
  %332 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %333, i32 0, i32 5
  %335 = load i32, i32* %334, align 4
  %336 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %337 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %336, i32 0, i32 0
  %338 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = call i32 @AcpiOsPrintf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %335, i64 %339)
  br label %341

341:                                              ; preds = %331, %330
  br label %342

342:                                              ; preds = %341, %312
  br label %60

343:                                              ; preds = %60
  %344 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %345 = icmp ne %struct.TYPE_22__* %344, null
  br i1 %345, label %346, label %364

346:                                              ; preds = %343
  %347 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %348 = icmp ne %struct.TYPE_22__* %347, null
  br i1 %348, label %349, label %363

349:                                              ; preds = %346
  %350 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %351 = load i32, i32* @PARSEOP_ELSE, align 4
  %352 = call i32 @TrAmlInitNode(%struct.TYPE_22__* %350, i32 %351)
  %353 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %354 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %353, i32 0, i32 0
  %355 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %354, i32 0, i32 1
  %356 = load %struct.TYPE_22__*, %struct.TYPE_22__** %355, align 8
  %357 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %358, i32 0, i32 1
  store %struct.TYPE_22__* %356, %struct.TYPE_22__** %359, align 8
  %360 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %361 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %362 = call i32 @TrAmlInsertPeer(%struct.TYPE_22__* %360, %struct.TYPE_22__* %361)
  br label %363

363:                                              ; preds = %349, %346
  br label %364

364:                                              ; preds = %363, %343
  %365 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %366 = icmp ne %struct.TYPE_22__* %365, null
  br i1 %366, label %372, label %367

367:                                              ; preds = %364
  %368 = load i32, i32* @ASL_ERROR, align 4
  %369 = load i32, i32* @ASL_MSG_NO_CASES, align 4
  %370 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %371 = call i32 @AslError(i32 %368, i32 %369, %struct.TYPE_22__* %370, i8* null)
  br label %372

372:                                              ; preds = %367, %364
  %373 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %374 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %373, i32 0, i32 0
  %375 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %374, i32 0, i32 3
  %376 = load %struct.TYPE_22__*, %struct.TYPE_22__** %375, align 8
  store %struct.TYPE_22__* %376, %struct.TYPE_22__** %9, align 8
  %377 = load i32, i32* @PARSEOP_NAME, align 4
  %378 = call %struct.TYPE_22__* @TrCreateLeafOp(i32 %377)
  store %struct.TYPE_22__* %378, %struct.TYPE_22__** %11, align 8
  %379 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %380 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %381 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %379, %struct.TYPE_22__* %380)
  %382 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  store %struct.TYPE_22__* %382, %struct.TYPE_22__** %3, align 8
  br label %383

383:                                              ; preds = %399, %372
  %384 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %385 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %384, i32 0, i32 0
  %386 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load i64, i64* @PARSEOP_METHOD, align 8
  %389 = icmp ne i64 %387, %388
  br i1 %389, label %390, label %397

390:                                              ; preds = %383
  %391 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %392 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %391, i32 0, i32 0
  %393 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %392, i32 0, i32 0
  %394 = load i64, i64* %393, align 8
  %395 = load i64, i64* @PARSEOP_DEFINITION_BLOCK, align 8
  %396 = icmp ne i64 %394, %395
  br label %397

397:                                              ; preds = %390, %383
  %398 = phi i1 [ false, %383 ], [ %396, %390 ]
  br i1 %398, label %399, label %404

399:                                              ; preds = %397
  %400 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %401 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %400, i32 0, i32 0
  %402 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %401, i32 0, i32 1
  %403 = load %struct.TYPE_22__*, %struct.TYPE_22__** %402, align 8
  store %struct.TYPE_22__* %403, %struct.TYPE_22__** %3, align 8
  br label %383

404:                                              ; preds = %397
  %405 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_22__* %405, %struct.TYPE_22__** %13, align 8
  %406 = load i32, i32* @OP_COMPILER_EMITTED, align 4
  %407 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %408 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %408, i32 0, i32 4
  %410 = load i32, i32* %409, align 8
  %411 = or i32 %410, %406
  store i32 %411, i32* %409, align 8
  %412 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %413 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %414 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %413, i32 0, i32 0
  %415 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %414, i32 0, i32 1
  store %struct.TYPE_22__* %412, %struct.TYPE_22__** %415, align 8
  %416 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %417 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %417, i32 0, i32 3
  %419 = load %struct.TYPE_22__*, %struct.TYPE_22__** %418, align 8
  store %struct.TYPE_22__* %419, %struct.TYPE_22__** %3, align 8
  %420 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %421 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %420, i32 0, i32 0
  %422 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %421, i32 0, i32 2
  %423 = load %struct.TYPE_22__*, %struct.TYPE_22__** %422, align 8
  store %struct.TYPE_22__* %423, %struct.TYPE_22__** %3, align 8
  %424 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %425 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %424, i32 0, i32 0
  %426 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %425, i32 0, i32 2
  %427 = load %struct.TYPE_22__*, %struct.TYPE_22__** %426, align 8
  store %struct.TYPE_22__* %427, %struct.TYPE_22__** %3, align 8
  %428 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %429 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %428, i32 0, i32 0
  %430 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %429, i32 0, i32 0
  %431 = load i64, i64* %430, align 8
  %432 = load i64, i64* @PARSEOP_SERIALIZERULE_SERIAL, align 8
  %433 = icmp ne i64 %431, %432
  br i1 %433, label %434, label %443

434:                                              ; preds = %404
  %435 = load i32, i32* @ASL_REMARK, align 4
  %436 = load i32, i32* @ASL_MSG_SERIALIZED, align 4
  %437 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %438 = call i32 @AslError(i32 %435, i32 %436, %struct.TYPE_22__* %437, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %439 = load i64, i64* @PARSEOP_SERIALIZERULE_SERIAL, align 8
  %440 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %440, i32 0, i32 0
  %442 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %441, i32 0, i32 0
  store i64 %439, i64* %442, align 8
  br label %443

443:                                              ; preds = %434, %404
  %444 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %445 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %444, i32 0, i32 0
  %446 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %445, i32 0, i32 2
  %447 = load %struct.TYPE_22__*, %struct.TYPE_22__** %446, align 8
  store %struct.TYPE_22__* %447, %struct.TYPE_22__** %3, align 8
  %448 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %449 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %448, i32 0, i32 0
  %450 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %449, i32 0, i32 2
  %451 = load %struct.TYPE_22__*, %struct.TYPE_22__** %450, align 8
  store %struct.TYPE_22__* %451, %struct.TYPE_22__** %3, align 8
  %452 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %452, i32 0, i32 0
  %454 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %453, i32 0, i32 2
  %455 = load %struct.TYPE_22__*, %struct.TYPE_22__** %454, align 8
  store %struct.TYPE_22__* %455, %struct.TYPE_22__** %3, align 8
  %456 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %457 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %458 = call i32 @TrAmlInsertPeer(%struct.TYPE_22__* %456, %struct.TYPE_22__* %457)
  %459 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %460 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %461 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %459, %struct.TYPE_22__* %460)
  %462 = load i32, i32* @PARSEOP_NAMESEG, align 4
  %463 = load i8*, i8** %17, align 8
  %464 = call i64 @ACPI_TO_INTEGER(i8* %463)
  %465 = trunc i64 %464 to i32
  %466 = call %struct.TYPE_22__* @TrCreateValuedLeafOp(i32 %462, i32 %465)
  store %struct.TYPE_22__* %466, %struct.TYPE_22__** %12, align 8
  %467 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %468 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %469 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %467, %struct.TYPE_22__* %468)
  %470 = load i32, i32* @OP_IS_NAME_DECLARATION, align 4
  %471 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %472 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %471, i32 0, i32 0
  %473 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %472, i32 0, i32 4
  %474 = load i32, i32* %473, align 8
  %475 = or i32 %474, %470
  store i32 %475, i32* %473, align 8
  %476 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %477 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %478 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %477, i32 0, i32 0
  %479 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %478, i32 0, i32 3
  store %struct.TYPE_22__* %476, %struct.TYPE_22__** %479, align 8
  %480 = load i32, i32* %19, align 4
  switch i32 %480, label %549 [
    i32 129, label %481
    i32 128, label %493
    i32 130, label %507
  ]

481:                                              ; preds = %443
  %482 = load i32, i32* @PARSEOP_ZERO, align 4
  %483 = call %struct.TYPE_22__* @TrCreateValuedLeafOp(i32 %482, i32 0)
  %484 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %485 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %484, i32 0, i32 0
  %486 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %485, i32 0, i32 2
  store %struct.TYPE_22__* %483, %struct.TYPE_22__** %486, align 8
  %487 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %488 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %487, i32 0, i32 0
  %489 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %488, i32 0, i32 2
  %490 = load %struct.TYPE_22__*, %struct.TYPE_22__** %489, align 8
  %491 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %492 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %490, %struct.TYPE_22__* %491)
  br label %550

493:                                              ; preds = %443
  %494 = load i32, i32* @PARSEOP_STRING_LITERAL, align 4
  %495 = call i64 @ACPI_TO_INTEGER(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %496 = trunc i64 %495 to i32
  %497 = call %struct.TYPE_22__* @TrCreateValuedLeafOp(i32 %494, i32 %496)
  %498 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %499 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %498, i32 0, i32 0
  %500 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %499, i32 0, i32 2
  store %struct.TYPE_22__* %497, %struct.TYPE_22__** %500, align 8
  %501 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %502 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %501, i32 0, i32 0
  %503 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %502, i32 0, i32 2
  %504 = load %struct.TYPE_22__*, %struct.TYPE_22__** %503, align 8
  %505 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %506 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %504, %struct.TYPE_22__* %505)
  br label %550

507:                                              ; preds = %443
  %508 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %509 = load i32, i32* @PARSEOP_BUFFER, align 4
  %510 = call %struct.TYPE_22__* @TrCreateValuedLeafOp(i32 %509, i32 0)
  %511 = call i32 @TrLinkPeerOp(%struct.TYPE_22__* %508, %struct.TYPE_22__* %510)
  %512 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %513 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %512, i32 0, i32 0
  %514 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %513, i32 0, i32 2
  %515 = load %struct.TYPE_22__*, %struct.TYPE_22__** %514, align 8
  store %struct.TYPE_22__* %515, %struct.TYPE_22__** %3, align 8
  %516 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %517 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %518 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %516, %struct.TYPE_22__* %517)
  %519 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %520 = load i32, i32* @PARSEOP_ZERO, align 4
  %521 = call %struct.TYPE_22__* @TrCreateValuedLeafOp(i32 %520, i32 1)
  %522 = call i32 @TrLinkOpChildren(%struct.TYPE_22__* %519, i32 1, %struct.TYPE_22__* %521)
  %523 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %524 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %524, i32 0, i32 3
  %526 = load %struct.TYPE_22__*, %struct.TYPE_22__** %525, align 8
  %527 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %528 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %526, %struct.TYPE_22__* %527)
  %529 = load i32, i32* @PARSEOP_DEFAULT_ARG, align 4
  %530 = call %struct.TYPE_22__* @TrCreateValuedLeafOp(i32 %529, i32 0)
  store %struct.TYPE_22__* %530, %struct.TYPE_22__** %16, align 8
  %531 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %532 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %533 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %532, i32 0, i32 0
  %534 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %533, i32 0, i32 3
  %535 = load %struct.TYPE_22__*, %struct.TYPE_22__** %534, align 8
  %536 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %531, %struct.TYPE_22__* %535)
  %537 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %538 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %537, i32 0, i32 0
  %539 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %538, i32 0, i32 3
  %540 = load %struct.TYPE_22__*, %struct.TYPE_22__** %539, align 8
  %541 = load %struct.TYPE_22__*, %struct.TYPE_22__** %16, align 8
  %542 = call i32 @TrLinkPeerOp(%struct.TYPE_22__* %540, %struct.TYPE_22__* %541)
  %543 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %544 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %543, i32 0, i32 0
  %545 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %544, i32 0, i32 3
  %546 = load %struct.TYPE_22__*, %struct.TYPE_22__** %545, align 8
  %547 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %548 = call i32 @TrAmlSetSubtreeParent(%struct.TYPE_22__* %546, %struct.TYPE_22__* %547)
  br label %550

549:                                              ; preds = %443
  br label %550

550:                                              ; preds = %549, %507, %493, %481
  %551 = load %struct.TYPE_22__*, %struct.TYPE_22__** %12, align 8
  %552 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %553 = call i32 @TrAmlSetSubtreeParent(%struct.TYPE_22__* %551, %struct.TYPE_22__* %552)
  %554 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %555 = load i32, i32* @PARSEOP_WHILE, align 4
  %556 = call i32 @TrAmlInitNode(%struct.TYPE_22__* %554, i32 %555)
  %557 = load i32, i32* @PARSEOP_ONE, align 4
  %558 = call %struct.TYPE_22__* @TrCreateLeafOp(i32 %557)
  store %struct.TYPE_22__* %558, %struct.TYPE_22__** %11, align 8
  %559 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %560 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %561 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %559, %struct.TYPE_22__* %560)
  %562 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %563 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %562, i32 0, i32 0
  %564 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %563, i32 0, i32 2
  %565 = load %struct.TYPE_22__*, %struct.TYPE_22__** %564, align 8
  %566 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %567 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %566, i32 0, i32 0
  %568 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %567, i32 0, i32 2
  store %struct.TYPE_22__* %565, %struct.TYPE_22__** %568, align 8
  %569 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %570 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %571 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %570, i32 0, i32 0
  %572 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %571, i32 0, i32 1
  store %struct.TYPE_22__* %569, %struct.TYPE_22__** %572, align 8
  %573 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %574 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %575 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %574, i32 0, i32 0
  %576 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %575, i32 0, i32 3
  store %struct.TYPE_22__* %573, %struct.TYPE_22__** %576, align 8
  %577 = load i32, i32* @PARSEOP_STORE, align 4
  %578 = call %struct.TYPE_22__* @TrCreateLeafOp(i32 %577)
  store %struct.TYPE_22__* %578, %struct.TYPE_22__** %14, align 8
  %579 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %580 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %581 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %579, %struct.TYPE_22__* %580)
  %582 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %583 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %584 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %583, i32 0, i32 0
  %585 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %584, i32 0, i32 1
  store %struct.TYPE_22__* %582, %struct.TYPE_22__** %585, align 8
  %586 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %587 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %588 = call i32 @TrAmlInsertPeer(%struct.TYPE_22__* %586, %struct.TYPE_22__* %587)
  %589 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %590 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %591 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %590, i32 0, i32 0
  %592 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %591, i32 0, i32 3
  store %struct.TYPE_22__* %589, %struct.TYPE_22__** %592, align 8
  %593 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %594 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %595 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %594, i32 0, i32 0
  %596 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %595, i32 0, i32 1
  store %struct.TYPE_22__* %593, %struct.TYPE_22__** %596, align 8
  %597 = load i32, i32* @PARSEOP_NAMESEG, align 4
  %598 = load i8*, i8** %17, align 8
  %599 = call i64 @ACPI_TO_INTEGER(i8* %598)
  %600 = trunc i64 %599 to i32
  %601 = call %struct.TYPE_22__* @TrCreateValuedLeafOp(i32 %597, i32 %600)
  store %struct.TYPE_22__* %601, %struct.TYPE_22__** %11, align 8
  %602 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %603 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %604 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %602, %struct.TYPE_22__* %603)
  %605 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %606 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %607 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %606, i32 0, i32 0
  %608 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %607, i32 0, i32 1
  store %struct.TYPE_22__* %605, %struct.TYPE_22__** %608, align 8
  %609 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %610 = load %struct.TYPE_22__*, %struct.TYPE_22__** %9, align 8
  %611 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %610, i32 0, i32 0
  %612 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %611, i32 0, i32 2
  store %struct.TYPE_22__* %609, %struct.TYPE_22__** %612, align 8
  %613 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %614 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %613, i32 0, i32 0
  %615 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %614, i32 0, i32 3
  %616 = load %struct.TYPE_22__*, %struct.TYPE_22__** %615, align 8
  store %struct.TYPE_22__* %616, %struct.TYPE_22__** %8, align 8
  br label %617

617:                                              ; preds = %623, %550
  %618 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %619 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %618, i32 0, i32 0
  %620 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %619, i32 0, i32 2
  %621 = load %struct.TYPE_22__*, %struct.TYPE_22__** %620, align 8
  %622 = icmp ne %struct.TYPE_22__* %621, null
  br i1 %622, label %623, label %628

623:                                              ; preds = %617
  %624 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %625 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %624, i32 0, i32 0
  %626 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %625, i32 0, i32 2
  %627 = load %struct.TYPE_22__*, %struct.TYPE_22__** %626, align 8
  store %struct.TYPE_22__* %627, %struct.TYPE_22__** %8, align 8
  br label %617

628:                                              ; preds = %617
  %629 = load i32, i32* @PARSEOP_BREAK, align 4
  %630 = call %struct.TYPE_22__* @TrCreateLeafOp(i32 %629)
  store %struct.TYPE_22__* %630, %struct.TYPE_22__** %15, align 8
  %631 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %632 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  %633 = call i32 @TrAmlInitLineNumbers(%struct.TYPE_22__* %631, %struct.TYPE_22__* %632)
  %634 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %635 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %636 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %635, i32 0, i32 0
  %637 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %636, i32 0, i32 1
  store %struct.TYPE_22__* %634, %struct.TYPE_22__** %637, align 8
  %638 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %639 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %640 = call i32 @TrAmlInsertPeer(%struct.TYPE_22__* %638, %struct.TYPE_22__* %639)
  br label %641

641:                                              ; preds = %628, %25
  ret void
}

declare dso_local i8* @TrAmlGetNextTempName(%struct.TYPE_22__*, i32*) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_22__*, i8*) #1

declare dso_local %struct.TYPE_22__* @TrCreateLeafOp(i32) #1

declare dso_local i32 @TrAmlInitLineNumbers(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @TrAmlInsertPeer(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @TrCreateValuedLeafOp(i32, i32) #1

declare dso_local i64 @ACPI_TO_INTEGER(i8*) #1

declare dso_local i32 @TrAmlSetSubtreeParent(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @TrAmlInitNode(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @AcpiOsPrintf(i8*, i32, i64) #1

declare dso_local i32 @TrLinkPeerOp(%struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @TrLinkOpChildren(%struct.TYPE_22__*, i32, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
