; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfold.c_OpcAmlCheckForConstant.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslfold.c_OpcAmlCheckForConstant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { i64, i32, i64, i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_12__ = type { i64, %struct.TYPE_10__*, %struct.TYPE_13__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@AE_OK = common dso_local global i32 0, align 4
@ASL_PARSE_OUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"[%.4d] Opcode: %12.12s \00", align 1
@AML_RAW_DATA_BYTE = common dso_local global i64 0, align 8
@AML_RAW_DATA_WORD = common dso_local global i64 0, align 8
@AML_RAW_DATA_DWORD = common dso_local global i64 0, align 8
@AML_RAW_DATA_QWORD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"RAW DATA\00", align 1
@AE_TYPE = common dso_local global i32 0, align 4
@AML_NAME_OP = common dso_local global i64 0, align 8
@AML_DEFER = common dso_local global i32 0, align 4
@AML_CONSTANT = common dso_local global i32 0, align 4
@OP_IS_TARGET = common dso_local global i32 0, align 4
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_INVALID_TARGET = common dso_local global i32 0, align 4
@OP_COULD_NOT_REDUCE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [53 x i8] c"**** Could not reduce operands for NAME opcode ****\0A\00", align 1
@ASL_MSG_CONSTANT_REQUIRED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"Constant is required for Name operator\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"**** Valid Target, transform to Store or CopyObject ****\0A\00", align 1
@AE_CTRL_RETURN_VALUE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [62 x i8] c"**** Not a Type 3/4/5 opcode or cannot reduce/fold (%s) ****\0A\00", align 1
@AML_BUFFER_OP = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [55 x i8] c"\0ABuffer constant reduction is currently not supported\0A\00", align 1
@ASL_MSG_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [36 x i8] c"Buffer expression cannot be reduced\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"TYPE_345\00", align 1
@PARSEOP_ZERO = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [6 x i8] c"%-16s\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c" NULL TARGET\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c" VALID TARGET\00", align 1
@OP_IS_TERM_ARG = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [9 x i8] c" TERMARG\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i32, i8*)* @OpcAmlCheckForConstant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpcAmlCheckForConstant(%struct.TYPE_13__* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_13__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_13__*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %8, align 8
  %14 = load i32, i32* @AE_OK, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  store %struct.TYPE_13__* %15, %struct.TYPE_13__** %17, align 8
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i8* @AcpiPsGetOpcodeInfo(i64 %27)
  %29 = bitcast i8* %28 to %struct.TYPE_10__*
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %31, align 8
  %32 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (i32, i8*, ...) @DbgPrint(i32 %32, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %40)
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @AML_RAW_DATA_BYTE, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %65, label %47

47:                                               ; preds = %3
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @AML_RAW_DATA_WORD, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @AML_RAW_DATA_DWORD, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @AML_RAW_DATA_QWORD, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %59, %53, %47, %3
  %66 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %67 = call i32 (i32, i8*, ...) @DbgPrint(i32 %66, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* @AE_TYPE, align 4
  store i32 %68, i32* %9, align 4
  br label %232

69:                                               ; preds = %59
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 4
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %72, align 8
  store %struct.TYPE_13__* %73, %struct.TYPE_13__** %10, align 8
  br label %74

74:                                               ; preds = %99, %69
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %76 = icmp ne %struct.TYPE_13__* %75, null
  br i1 %76, label %77, label %104

77:                                               ; preds = %74
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @AML_NAME_OP, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  br label %104

85:                                               ; preds = %77
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i8* @AcpiPsGetOpcodeInfo(i64 %89)
  %91 = bitcast i8* %90 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %91, %struct.TYPE_14__** %11, align 8
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @AML_DEFER, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %10, align 8
  br label %104

99:                                               ; preds = %85
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 4
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %102, align 8
  store %struct.TYPE_13__* %103, %struct.TYPE_13__** %10, align 8
  br label %74

104:                                              ; preds = %98, %84, %74
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @AML_CONSTANT, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %178, label %113

113:                                              ; preds = %104
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %115 = icmp ne %struct.TYPE_13__* %114, null
  br i1 %115, label %116, label %153

116:                                              ; preds = %113
  %117 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @OP_IS_TARGET, align 4
  %122 = and i32 %120, %121
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load i32, i32* @ASL_ERROR, align 4
  %126 = load i32, i32* @ASL_MSG_INVALID_TARGET, align 4
  %127 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %128 = call i32 @AslError(i32 %125, i32 %126, %struct.TYPE_13__* %127, i8* null)
  %129 = load i32, i32* @AE_TYPE, align 4
  store i32 %129, i32* %9, align 4
  br label %130

130:                                              ; preds = %124, %116
  %131 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @OP_COULD_NOT_REDUCE, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %152, label %138

138:                                              ; preds = %130
  %139 = load i32, i32* @OP_COULD_NOT_REDUCE, align 4
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = or i32 %143, %139
  store i32 %144, i32* %142, align 8
  %145 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %146 = call i32 (i32, i8*, ...) @DbgPrint(i32 %145, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %147 = load i32, i32* @ASL_ERROR, align 4
  %148 = load i32, i32* @ASL_MSG_CONSTANT_REQUIRED, align 4
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %150 = call i32 @AslError(i32 %147, i32 %148, %struct.TYPE_13__* %149, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %151 = load i32, i32* @AE_TYPE, align 4
  store i32 %151, i32* %9, align 4
  br label %152

152:                                              ; preds = %138, %130
  br label %153

153:                                              ; preds = %152, %113
  %154 = load i32, i32* %9, align 4
  %155 = call i64 @ACPI_FAILURE(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  br label %232

158:                                              ; preds = %153
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @OP_IS_TARGET, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %158
  %167 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %168 = call i32 (i32, i8*, ...) @DbgPrint(i32 %167, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %169 = load i32, i32* @AE_CTRL_RETURN_VALUE, align 4
  store i32 %169, i32* %4, align 4
  br label %242

170:                                              ; preds = %158
  %171 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = call i32 (i32, i8*, ...) @DbgPrint(i32 %171, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.5, i64 0, i64 0), i32 %175)
  %177 = load i32, i32* @AE_TYPE, align 4
  store i32 %177, i32* %9, align 4
  br label %232

178:                                              ; preds = %104
  %179 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @AML_BUFFER_OP, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %196

184:                                              ; preds = %178
  %185 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %186 = call i32 (i32, i8*, ...) @DbgPrint(i32 %185, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %10, align 8
  %188 = icmp ne %struct.TYPE_13__* %187, null
  br i1 %188, label %189, label %194

189:                                              ; preds = %184
  %190 = load i32, i32* @ASL_ERROR, align 4
  %191 = load i32, i32* @ASL_MSG_UNSUPPORTED, align 4
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %193 = call i32 @AslError(i32 %190, i32 %191, %struct.TYPE_13__* %192, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0))
  br label %194

194:                                              ; preds = %189, %184
  %195 = load i32, i32* @AE_TYPE, align 4
  store i32 %195, i32* %9, align 4
  br label %232

196:                                              ; preds = %178
  %197 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %198 = call i32 (i32, i8*, ...) @DbgPrint(i32 %197, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @OP_IS_TARGET, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %220

206:                                              ; preds = %196
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @PARSEOP_ZERO, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %216

213:                                              ; preds = %206
  %214 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %215 = call i32 (i32, i8*, ...) @DbgPrint(i32 %214, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  br label %219

216:                                              ; preds = %206
  %217 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %218 = call i32 (i32, i8*, ...) @DbgPrint(i32 %217, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0))
  br label %219

219:                                              ; preds = %216, %213
  br label %220

220:                                              ; preds = %219, %196
  %221 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @OP_IS_TERM_ARG, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %220
  %229 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %230 = call i32 (i32, i8*, ...) @DbgPrint(i32 %229, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0))
  br label %231

231:                                              ; preds = %228, %220
  br label %232

232:                                              ; preds = %231, %194, %170, %157, %65
  %233 = load %struct.TYPE_13__*, %struct.TYPE_13__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %234, i32 0, i32 1
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %238 = call i32 @TrPrintOpFlags(i32 %236, i32 %237)
  %239 = load i32, i32* @ASL_PARSE_OUTPUT, align 4
  %240 = call i32 (i32, i8*, ...) @DbgPrint(i32 %239, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %241 = load i32, i32* %9, align 4
  store i32 %241, i32* %4, align 4
  br label %242

242:                                              ; preds = %232, %166
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

declare dso_local i8* @AcpiPsGetOpcodeInfo(i64) #1

declare dso_local i32 @DbgPrint(i32, i8*, ...) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_13__*, i8*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @TrPrintOpFlags(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
