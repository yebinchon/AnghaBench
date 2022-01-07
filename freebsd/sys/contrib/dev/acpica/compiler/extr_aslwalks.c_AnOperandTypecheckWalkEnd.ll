; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslwalks.c_AnOperandTypecheckWalkEnd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/compiler/extr_aslwalks.c_AnOperandTypecheckWalkEnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_19__*, i32, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_20__ = type { i64, i64, i32, i8* }

@AE_OK = common dso_local global i32 0, align 4
@PARSEOP_METHODCALL = common dso_local global i32 0, align 4
@ACPI_UINT32_MAX = common dso_local global i64 0, align 8
@ARGI_INVALID_OPCODE = common dso_local global i64 0, align 8
@PARSEOP_INTEGER = common dso_local global i32 0, align 4
@PARSEOP_RAW_DATA = common dso_local global i32 0, align 4
@AML_DEBUG_OP = common dso_local global i32 0, align 4
@ARG_TYPE_WIDTH = common dso_local global i64 0, align 8
@ASL_ERROR = common dso_local global i32 0, align 4
@ASL_MSG_COMPILER_INTERNAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Null ArgOp in argument loop\00", align 1
@PARSEOP_ZERO = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_RESOURCE_FIELD = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_RESOURCE = common dso_local global i32 0, align 4
@ASL_MSG_RESOURCE_FIELD = common dso_local global i32 0, align 4
@ASL_MSG_INVALID_TYPE = common dso_local global i32 0, align 4
@AslGbl_StringBuffer = common dso_local global i8* null, align 8
@AslGbl_StringBuffer2 = common dso_local global i8* null, align 8
@AslGbl_MsgBuffer = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"[%s] found, %s operator requires [%s]\00", align 1
@AML_CLASS_NAMED_OBJECT = common dso_local global i64 0, align 8
@AML_NSNODE = common dso_local global i32 0, align 4
@AML_SCOPE_OP = common dso_local global i32 0, align 4
@ASL_MSG_NAMED_OBJECT_IN_WHILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AnOperandTypecheckWalkEnd(%struct.TYPE_19__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_19__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %17 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %23 [
    i32 163, label %21
    i32 159, label %21
    i32 161, label %21
    i32 160, label %21
    i32 164, label %21
    i32 162, label %21
    i32 166, label %21
    i32 155, label %21
    i32 169, label %21
  ]

21:                                               ; preds = %3, %3, %3, %3, %3, %3, %3, %3, %3
  %22 = load i32, i32* @AE_OK, align 4
  store i32 %22, i32* %4, align 4
  br label %303

23:                                               ; preds = %3
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call %struct.TYPE_20__* @AcpiPsGetOpcodeInfo(i32 %28)
  store %struct.TYPE_20__* %29, %struct.TYPE_20__** %8, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %31 = icmp ne %struct.TYPE_20__* %30, null
  br i1 %31, label %34, label %32

32:                                               ; preds = %24
  %33 = load i32, i32* @AE_OK, align 4
  store i32 %33, i32* %4, align 4
  br label %303

34:                                               ; preds = %24
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 5
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %37, align 8
  store %struct.TYPE_19__* %38, %struct.TYPE_19__** %15, align 8
  %39 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %14, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  switch i32 %48, label %89 [
    i32 167, label %49
    i32 153, label %49
    i32 157, label %49
    i32 168, label %87
  ]

49:                                               ; preds = %34, %34, %34
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PARSEOP_METHODCALL, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %85

56:                                               ; preds = %49
  %57 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %58 = call i32 @AnIsInternalMethod(%struct.TYPE_19__* %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = load i32, i32* @AE_OK, align 4
  store i32 %61, i32* %4, align 4
  br label %303

62:                                               ; preds = %56
  %63 = call i64 @AnMapArgTypeToBtype(i64 151)
  store i64 %63, i64* %11, align 8
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp eq i32 %67, 157
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i64 4294967295, i64* %11, align 8
  br label %70

70:                                               ; preds = %69, %62
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %72 = call i64 @AnGetBtype(%struct.TYPE_19__* %71)
  store i64 %72, i64* %12, align 8
  %73 = load i64, i64* %12, align 8
  %74 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* @AE_OK, align 4
  store i32 %77, i32* %4, align 4
  br label %303

78:                                               ; preds = %70
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %81 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i64, i64* %12, align 8
  %84 = call i32 @AnCheckMethodReturnValue(%struct.TYPE_19__* %79, %struct.TYPE_20__* %80, %struct.TYPE_19__* %81, i64 %82, i64 %83)
  br label %85

85:                                               ; preds = %78, %49
  %86 = load i32, i32* @AE_OK, align 4
  store i32 %86, i32* %4, align 4
  br label %303

87:                                               ; preds = %34
  %88 = load i32, i32* @AE_OK, align 4
  store i32 %88, i32* %4, align 4
  br label %303

89:                                               ; preds = %34
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @ARGI_INVALID_OPCODE, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %90
  %95 = load i32, i32* @AE_OK, align 4
  store i32 %95, i32* %4, align 4
  br label %303

96:                                               ; preds = %90
  %97 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  switch i32 %100, label %154 [
    i32 176, label %101
    i32 158, label %110
    i32 170, label %119
    i32 175, label %124
    i32 165, label %124
    i32 154, label %124
    i32 156, label %141
  ]

101:                                              ; preds = %96
  store i64 172, i64* %14, align 8
  %102 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %103 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_19__*, %struct.TYPE_19__** %104, align 8
  store %struct.TYPE_19__* %105, %struct.TYPE_19__** %15, align 8
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_19__*, %struct.TYPE_19__** %108, align 8
  store %struct.TYPE_19__* %109, %struct.TYPE_19__** %15, align 8
  br label %155

110:                                              ; preds = %96
  store i64 172, i64* %14, align 8
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %113, align 8
  store %struct.TYPE_19__* %114, %struct.TYPE_19__** %15, align 8
  %115 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  store %struct.TYPE_19__* %118, %struct.TYPE_19__** %15, align 8
  br label %155

119:                                              ; preds = %96
  store i64 172, i64* %14, align 8
  %120 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_19__*, %struct.TYPE_19__** %122, align 8
  store %struct.TYPE_19__* %123, %struct.TYPE_19__** %15, align 8
  br label %155

124:                                              ; preds = %96, %96, %96
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @PARSEOP_INTEGER, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %138, label %131

131:                                              ; preds = %124
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @PARSEOP_RAW_DATA, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %131, %124
  %139 = load i32, i32* @AE_OK, align 4
  store i32 %139, i32* %4, align 4
  br label %303

140:                                              ; preds = %131
  br label %155

141:                                              ; preds = %96
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %143 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_19__*, %struct.TYPE_19__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @AML_DEBUG_OP, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %141
  %152 = load i32, i32* @AE_OK, align 4
  store i32 %152, i32* %4, align 4
  br label %303

153:                                              ; preds = %141
  br label %155

154:                                              ; preds = %96
  br label %155

155:                                              ; preds = %154, %153, %140, %119, %110, %101
  %156 = load i64, i64* %14, align 8
  switch i64 %156, label %300 [
    i64 172, label %157
    i64 173, label %157
    i64 174, label %157
    i64 171, label %157
  ]

157:                                              ; preds = %155, %155, %155, %155
  store i64 0, i64* %10, align 8
  br label %158

158:                                              ; preds = %162, %157
  %159 = load i64, i64* %9, align 8
  %160 = call i64 @GET_CURRENT_ARG_TYPE(i64 %159)
  store i64 %160, i64* %16, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %158
  %163 = load i64, i64* @ARG_TYPE_WIDTH, align 8
  %164 = load i64, i64* %10, align 8
  %165 = shl i64 %164, %163
  store i64 %165, i64* %10, align 8
  %166 = load i64, i64* %16, align 8
  %167 = load i64, i64* %10, align 8
  %168 = or i64 %167, %166
  store i64 %168, i64* %10, align 8
  %169 = load i64, i64* %9, align 8
  %170 = call i32 @INCREMENT_ARG_LIST(i64 %169)
  br label %158

171:                                              ; preds = %158
  br label %172

172:                                              ; preds = %292, %171
  %173 = load i64, i64* %10, align 8
  %174 = call i64 @GET_CURRENT_ARG_TYPE(i64 %173)
  store i64 %174, i64* %16, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %299

176:                                              ; preds = %172
  %177 = load i64, i64* %16, align 8
  %178 = call i64 @AnMapArgTypeToBtype(i64 %177)
  store i64 %178, i64* %11, align 8
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %180 = icmp ne %struct.TYPE_19__* %179, null
  br i1 %180, label %187, label %181

181:                                              ; preds = %176
  %182 = load i32, i32* @ASL_ERROR, align 4
  %183 = load i32, i32* @ASL_MSG_COMPILER_INTERNAL, align 4
  %184 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %185 = call i32 @AslError(i32 %182, i32 %183, %struct.TYPE_19__* %184, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %186 = call i32 (...) @AslAbort()
  br label %187

187:                                              ; preds = %181, %176
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %189 = call i64 @AnGetBtype(%struct.TYPE_19__* %188)
  store i64 %189, i64* %12, align 8
  %190 = load i64, i64* %12, align 8
  %191 = load i64, i64* @ACPI_UINT32_MAX, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  br label %292

194:                                              ; preds = %187
  %195 = load i64, i64* %16, align 8
  switch i64 %195, label %244 [
    i64 146, label %196
    i64 147, label %206
    i64 151, label %243
  ]

196:                                              ; preds = %194
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @PARSEOP_ZERO, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %205

203:                                              ; preds = %196
  %204 = load i64, i64* %11, align 8
  store i64 %204, i64* %12, align 8
  br label %245

205:                                              ; preds = %196
  br label %206

206:                                              ; preds = %194, %205
  %207 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %208 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @PARSEOP_INTEGER, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %242

213:                                              ; preds = %206
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %215 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %214, i32 0, i32 0
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 3
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @ACPI_TYPE_LOCAL_RESOURCE_FIELD, align 4
  %221 = icmp eq i32 %219, %220
  br i1 %221, label %231, label %222

222:                                              ; preds = %213
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %224 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 3
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* @ACPI_TYPE_LOCAL_RESOURCE, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %236

231:                                              ; preds = %222, %213
  %232 = load i32, i32* @ASL_ERROR, align 4
  %233 = load i32, i32* @ASL_MSG_RESOURCE_FIELD, align 4
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %235 = call i32 @AslError(i32 %232, i32 %233, %struct.TYPE_19__* %234, i8* null)
  br label %241

236:                                              ; preds = %222
  %237 = load i32, i32* @ASL_ERROR, align 4
  %238 = load i32, i32* @ASL_MSG_INVALID_TYPE, align 4
  %239 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %240 = call i32 @AslError(i32 %237, i32 %238, %struct.TYPE_19__* %239, i8* null)
  br label %241

241:                                              ; preds = %236, %231
  br label %242

242:                                              ; preds = %241, %206
  br label %245

243:                                              ; preds = %194
  br label %244

244:                                              ; preds = %194, %243
  br label %245

245:                                              ; preds = %244, %242, %203
  %246 = load i64, i64* %12, align 8
  %247 = load i64, i64* %11, align 8
  %248 = and i64 %246, %247
  store i64 %248, i64* %13, align 8
  %249 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %250 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @PARSEOP_METHODCALL, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %268

255:                                              ; preds = %245
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %257 = call i32 @AnIsInternalMethod(%struct.TYPE_19__* %256)
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %255
  %260 = load i32, i32* @AE_OK, align 4
  store i32 %260, i32* %4, align 4
  br label %303

261:                                              ; preds = %255
  %262 = load %struct.TYPE_19__*, %struct.TYPE_19__** %5, align 8
  %263 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %265 = load i64, i64* %11, align 8
  %266 = load i64, i64* %12, align 8
  %267 = call i32 @AnCheckMethodReturnValue(%struct.TYPE_19__* %262, %struct.TYPE_20__* %263, %struct.TYPE_19__* %264, i64 %265, i64 %266)
  br label %291

268:                                              ; preds = %245
  %269 = load i64, i64* %13, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %290, label %271

271:                                              ; preds = %268
  %272 = load i8*, i8** @AslGbl_StringBuffer, align 8
  %273 = load i64, i64* %12, align 8
  %274 = call i32 @AnFormatBtype(i8* %272, i64 %273)
  %275 = load i8*, i8** @AslGbl_StringBuffer2, align 8
  %276 = load i64, i64* %11, align 8
  %277 = call i32 @AnFormatBtype(i8* %275, i64 %276)
  %278 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %279 = load i8*, i8** @AslGbl_StringBuffer, align 8
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 3
  %282 = load i8*, i8** %281, align 8
  %283 = load i8*, i8** @AslGbl_StringBuffer2, align 8
  %284 = call i32 @sprintf(i8* %278, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %279, i8* %282, i8* %283)
  %285 = load i32, i32* @ASL_ERROR, align 4
  %286 = load i32, i32* @ASL_MSG_INVALID_TYPE, align 4
  %287 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %288 = load i8*, i8** @AslGbl_MsgBuffer, align 8
  %289 = call i32 @AslError(i32 %285, i32 %286, %struct.TYPE_19__* %287, i8* %288)
  br label %290

290:                                              ; preds = %271, %268
  br label %291

291:                                              ; preds = %290, %261
  br label %292

292:                                              ; preds = %291, %193
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 0
  %295 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %294, i32 0, i32 1
  %296 = load %struct.TYPE_19__*, %struct.TYPE_19__** %295, align 8
  store %struct.TYPE_19__* %296, %struct.TYPE_19__** %15, align 8
  %297 = load i64, i64* %10, align 8
  %298 = call i32 @INCREMENT_ARG_LIST(i64 %297)
  br label %172

299:                                              ; preds = %172
  br label %301

300:                                              ; preds = %155
  br label %301

301:                                              ; preds = %300, %299
  %302 = load i32, i32* @AE_OK, align 4
  store i32 %302, i32* %4, align 4
  br label %303

303:                                              ; preds = %301, %259, %151, %138, %94, %87, %85, %76, %60, %32, %21
  %304 = load i32, i32* %4, align 4
  ret i32 %304
}

declare dso_local %struct.TYPE_20__* @AcpiPsGetOpcodeInfo(i32) #1

declare dso_local i32 @AnIsInternalMethod(%struct.TYPE_19__*) #1

declare dso_local i64 @AnMapArgTypeToBtype(i64) #1

declare dso_local i64 @AnGetBtype(%struct.TYPE_19__*) #1

declare dso_local i32 @AnCheckMethodReturnValue(%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_19__*, i64, i64) #1

declare dso_local i64 @GET_CURRENT_ARG_TYPE(i64) #1

declare dso_local i32 @INCREMENT_ARG_LIST(i64) #1

declare dso_local i32 @AslError(i32, i32, %struct.TYPE_19__*, i8*) #1

declare dso_local i32 @AslAbort(...) #1

declare dso_local i32 @AnFormatBtype(i8*, i64) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
