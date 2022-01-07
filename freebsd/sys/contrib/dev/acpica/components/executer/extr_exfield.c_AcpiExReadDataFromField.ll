; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/executer/extr_exfield.c_AcpiExReadDataFromField.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/executer/extr_exfield.c_AcpiExReadDataFromField.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_22__, %struct.TYPE_21__ }
%struct.TYPE_28__ = type { i32, i32, i32, i32 }
%struct.TYPE_27__ = type { i64, i32 }
%struct.TYPE_26__ = type { i32, i64, %struct.TYPE_25__* }
%struct.TYPE_25__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_22__ = type { i32 }
%struct.TYPE_21__ = type { i8* }

@ExReadDataFromField = common dso_local global i32 0, align 4
@AE_AML_NO_OPERAND = common dso_local global i32 0, align 4
@AE_BAD_PARAMETER = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER_FIELD = common dso_local global i64 0, align 8
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@ACPI_TYPE_LOCAL_REGION_FIELD = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_SMBUS = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_GSBUS = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_IPMI = common dso_local global i64 0, align 8
@AcpiGbl_IntegerByteWidth = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_GPIO = common dso_local global i64 0, align 8
@ACPI_ADR_SPACE_PLATFORM_COMM = common dso_local global i64 0, align 8
@ACPI_DB_BFIELD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"PCC FieldRead bits %u\0A\00", align 1
@AE_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"FieldRead [TO]:   Obj %p, Type %X, Buf %p, ByteLen %X\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"FieldRead [FROM]: BitLen %X, BitOff %X, ByteOff %X\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiExReadDataFromField(i32* %0, %struct.TYPE_29__* %1, %struct.TYPE_29__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_29__*, align 8
  %7 = alloca %struct.TYPE_29__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_29__* %1, %struct.TYPE_29__** %6, align 8
  store %struct.TYPE_29__** %2, %struct.TYPE_29__*** %7, align 8
  %12 = load i32, i32* @ExReadDataFromField, align 4
  %13 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %14 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %12, %struct.TYPE_29__* %13)
  %15 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %16 = icmp ne %struct.TYPE_29__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @AE_AML_NO_OPERAND, align 4
  %19 = call i32 @return_ACPI_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %17, %3
  %21 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %22 = icmp ne %struct.TYPE_29__** %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i32, i32* @AE_BAD_PARAMETER, align 4
  %25 = call i32 @return_ACPI_STATUS(i32 %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ACPI_TYPE_BUFFER_FIELD, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %52

33:                                               ; preds = %26
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %33
  %42 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %43 = call i32 @AcpiDsGetBufferFieldArguments(%struct.TYPE_29__* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i64 @ACPI_FAILURE(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = call i32 @return_ACPI_STATUS(i32 %48)
  br label %50

50:                                               ; preds = %47, %41
  br label %51

51:                                               ; preds = %50, %33
  br label %96

52:                                               ; preds = %26
  %53 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ACPI_TYPE_LOCAL_REGION_FIELD, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %95

59:                                               ; preds = %52
  %60 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ACPI_ADR_SPACE_SMBUS, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %89, label %69

69:                                               ; preds = %59
  %70 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %71, i32 0, i32 2
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @ACPI_ADR_SPACE_GSBUS, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %89, label %79

79:                                               ; preds = %69
  %80 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %81, i32 0, i32 2
  %83 = load %struct.TYPE_25__*, %struct.TYPE_25__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @ACPI_ADR_SPACE_IPMI, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %79, %69, %59
  %90 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %91 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  %92 = call i32 @AcpiExReadSerialBus(%struct.TYPE_29__* %90, %struct.TYPE_29__** %91)
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 @return_ACPI_STATUS(i32 %93)
  br label %95

95:                                               ; preds = %89, %79, %52
  br label %96

96:                                               ; preds = %95, %51
  %97 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i64 @ACPI_ROUND_BITS_UP_TO_BYTES(i32 %100)
  store i64 %101, i64* %11, align 8
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* @AcpiGbl_IntegerByteWidth, align 8
  %104 = icmp sgt i64 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %96
  %106 = load i64, i64* %11, align 8
  %107 = call %struct.TYPE_29__* @AcpiUtCreateBufferObject(i64 %106)
  store %struct.TYPE_29__* %107, %struct.TYPE_29__** %9, align 8
  %108 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %109 = icmp ne %struct.TYPE_29__* %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %105
  %111 = load i32, i32* @AE_NO_MEMORY, align 4
  %112 = call i32 @return_ACPI_STATUS(i32 %111)
  br label %113

113:                                              ; preds = %110, %105
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %115 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %114, i32 0, i32 4
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  store i8* %117, i8** %10, align 8
  br label %131

118:                                              ; preds = %96
  %119 = call %struct.TYPE_29__* @AcpiUtCreateIntegerObject(i32 0)
  store %struct.TYPE_29__* %119, %struct.TYPE_29__** %9, align 8
  %120 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %121 = icmp ne %struct.TYPE_29__* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  %123 = load i32, i32* @AE_NO_MEMORY, align 4
  %124 = call i32 @return_ACPI_STATUS(i32 %123)
  br label %125

125:                                              ; preds = %122, %118
  %126 = load i64, i64* @AcpiGbl_IntegerByteWidth, align 8
  store i64 %126, i64* %11, align 8
  %127 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %128 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 0
  %130 = bitcast i32* %129 to i8*
  store i8* %130, i8** %10, align 8
  br label %131

131:                                              ; preds = %125, %113
  %132 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ACPI_TYPE_LOCAL_REGION_FIELD, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %152

138:                                              ; preds = %131
  %139 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @ACPI_ADR_SPACE_GPIO, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %138
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %150 = load i8*, i8** %10, align 8
  %151 = call i32 @AcpiExReadGpio(%struct.TYPE_29__* %149, i8* %150)
  store i32 %151, i32* %8, align 4
  br label %238

152:                                              ; preds = %138, %131
  %153 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i64, i64* @ACPI_TYPE_LOCAL_REGION_FIELD, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %198

159:                                              ; preds = %152
  %160 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_25__*, %struct.TYPE_25__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @ACPI_ADR_SPACE_PLATFORM_COMM, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %198

169:                                              ; preds = %159
  %170 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %171 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @ACPI_DEBUG_PRINT(i32 %174)
  %176 = load i8*, i8** %10, align 8
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %184, i32 0, i32 2
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = add nsw i64 %183, %187
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @ACPI_ROUND_BITS_UP_TO_BYTES(i32 %192)
  %194 = call i32 @memcpy(i8* %176, i64 %188, i64 %193)
  %195 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %196 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  store %struct.TYPE_29__* %195, %struct.TYPE_29__** %196, align 8
  %197 = load i32, i32* @AE_OK, align 4
  store i32 %197, i32* %4, align 4
  br label %251

198:                                              ; preds = %159, %152
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %201 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %202 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %202, i32 0, i32 1
  %204 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i8*, i8** %10, align 8
  %207 = load i64, i64* %11, align 8
  %208 = trunc i64 %207 to i32
  %209 = call i32 @ACPI_DEBUG_PRINT(i32 %208)
  %210 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %211 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @ACPI_DEBUG_PRINT(i32 %222)
  %224 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = call i32 @AcpiExAcquireGlobalLock(i32 %227)
  %229 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %230 = load i8*, i8** %10, align 8
  %231 = load i64, i64* %11, align 8
  %232 = call i32 @AcpiExExtractFromField(%struct.TYPE_29__* %229, i8* %230, i64 %231)
  store i32 %232, i32* %8, align 4
  %233 = load %struct.TYPE_29__*, %struct.TYPE_29__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %233, i32 0, i32 0
  %235 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @AcpiExReleaseGlobalLock(i32 %236)
  br label %238

238:                                              ; preds = %199, %148
  %239 = load i32, i32* %8, align 4
  %240 = call i64 @ACPI_FAILURE(i32 %239)
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %244 = call i32 @AcpiUtRemoveReference(%struct.TYPE_29__* %243)
  br label %248

245:                                              ; preds = %238
  %246 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %247 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  store %struct.TYPE_29__* %246, %struct.TYPE_29__** %247, align 8
  br label %248

248:                                              ; preds = %245, %242
  %249 = load i32, i32* %8, align 4
  %250 = call i32 @return_ACPI_STATUS(i32 %249)
  br label %251

251:                                              ; preds = %248, %169
  %252 = load i32, i32* %4, align 4
  ret i32 %252
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_29__*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiDsGetBufferFieldArguments(%struct.TYPE_29__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiExReadSerialBus(%struct.TYPE_29__*, %struct.TYPE_29__**) #1

declare dso_local i64 @ACPI_ROUND_BITS_UP_TO_BYTES(i32) #1

declare dso_local %struct.TYPE_29__* @AcpiUtCreateBufferObject(i64) #1

declare dso_local %struct.TYPE_29__* @AcpiUtCreateIntegerObject(i32) #1

declare dso_local i32 @AcpiExReadGpio(%struct.TYPE_29__*, i8*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @memcpy(i8*, i64, i64) #1

declare dso_local i32 @AcpiExAcquireGlobalLock(i32) #1

declare dso_local i32 @AcpiExExtractFromField(%struct.TYPE_29__*, i8*, i64) #1

declare dso_local i32 @AcpiExReleaseGlobalLock(i32) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_29__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
