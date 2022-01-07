; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/executer/extr_exprep.c_AcpiExPrepFieldValue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/executer/extr_exprep.c_AcpiExPrepFieldValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_26__*, i32, i32, i32, i32 }
%struct.TYPE_26__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.TYPE_22__, %struct.TYPE_31__, %struct.TYPE_34__, %struct.TYPE_33__, %struct.TYPE_32__, %struct.TYPE_30__, %struct.TYPE_28__ }
%struct.TYPE_22__ = type { %struct.TYPE_25__*, %struct.TYPE_25__*, i64, i32, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_31__ = type { i32, %struct.TYPE_25__*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_34__ = type { i32, i32 }
%struct.TYPE_33__ = type { i32, %struct.TYPE_23__* }
%struct.TYPE_32__ = type { %struct.TYPE_25__*, %struct.TYPE_25__*, i32, i32, i32 }
%struct.TYPE_30__ = type { i32, i32, i32 }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_27__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32, i32 }

@ExPrepFieldValue = common dso_local global i32 0, align 4
@AE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Null RegionNode\00", align 1
@AE_AML_NO_OPERAND = common dso_local global i32 0, align 4
@ACPI_TYPE_REGION = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Needed Region, found type 0x%X (%s)\00", align 1
@AE_AML_OPERAND_TYPE = common dso_local global i32 0, align 4
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@AOPOBJ_DATA_VALID = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_EC = common dso_local global i32 0, align 4
@ACPI_DB_BFIELD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"RegionField: BitOff %X, Off %X, Gran %X, Region %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Bank Field: BitOff %X, Off %X, Gran %X, Region %p, BankReg %p\0A\00", align 1
@ACPI_PARSE_OBJECT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Null Index Object during field prep\00", align 1
@AE_AML_INTERNAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [69 x i8] c"IndexField: BitOff %X, Off %X, Value %X, Gran %X, Index %p, Data %p\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Set NamedObj %p [%4.4s], ObjDesc %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiExPrepFieldValue(%struct.TYPE_24__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_24__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %3, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %5, align 8
  %9 = load i32, i32* @ExPrepFieldValue, align 4
  %10 = call i32 @ACPI_FUNCTION_TRACE(i32 %9)
  %11 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 129
  br i1 %14, label %15, label %42

15:                                               ; preds = %1
  %16 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @AE_INFO, align 4
  %22 = call i32 @ACPI_ERROR(i32 ptrtoint ([16 x i8]* @.str to i32))
  %23 = load i32, i32* @AE_AML_NO_OPERAND, align 4
  %24 = call i32 @return_ACPI_STATUS(i32 %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @AcpiNsGetType(i32 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @ACPI_TYPE_REGION, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %25
  %34 = load i32, i32* @AE_INFO, align 4
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @AcpiUtGetTypeName(i64 %36)
  %38 = call i32 @ACPI_ERROR(i32 %37)
  %39 = load i32, i32* @AE_AML_OPERAND_TYPE, align 4
  %40 = call i32 @return_ACPI_STATUS(i32 %39)
  br label %41

41:                                               ; preds = %33, %25
  br label %42

42:                                               ; preds = %41, %1
  %43 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.TYPE_23__* @AcpiUtCreateInternalObject(i32 %45)
  store %struct.TYPE_23__* %46, %struct.TYPE_23__** %4, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %48 = icmp ne %struct.TYPE_23__* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @AE_NO_MEMORY, align 4
  %51 = call i32 @return_ACPI_STATUS(i32 %50)
  br label %52

52:                                               ; preds = %49, %42
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %57, i32 0, i32 2
  store i32 %55, i32* %58, align 8
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 14
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %63, i32 0, i32 13
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 12
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @AcpiExPrepCommonFieldObject(%struct.TYPE_23__* %59, i32 %62, i32 %65, i32 %68, i32 %71)
  store i32 %72, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = call i64 @ACPI_FAILURE(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %52
  %77 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %78 = call i32 @AcpiUtDeleteObjectDesc(%struct.TYPE_23__* %77)
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @return_ACPI_STATUS(i32 %79)
  br label %81

81:                                               ; preds = %76, %52
  %82 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  switch i32 %84, label %393 [
    i32 128, label %85
    i32 130, label %225
    i32 129, label %307
  ]

85:                                               ; preds = %81
  %86 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @AcpiNsGetAttachedObject(i32 %88)
  %90 = bitcast i8* %89 to %struct.TYPE_25__*
  %91 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %92 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %92, i32 0, i32 1
  store %struct.TYPE_25__* %90, %struct.TYPE_25__** %93, align 8
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 11
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %98, i32 0, i32 7
  store i32 %96, i32* %99, align 4
  %100 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %100, i32 0, i32 10
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %101, align 8
  %103 = icmp ne %struct.TYPE_26__* %102, null
  br i1 %103, label %104, label %144

104:                                              ; preds = %85
  %105 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %105, i32 0, i32 10
  %107 = load %struct.TYPE_26__*, %struct.TYPE_26__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 0
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %108, align 8
  store %struct.TYPE_23__* %109, %struct.TYPE_23__** %5, align 8
  %110 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @AOPOBJ_DATA_VALID, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %129, label %117

117:                                              ; preds = %104
  %118 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %119 = call i32 @AcpiDsGetBufferArguments(%struct.TYPE_23__* %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i64 @ACPI_FAILURE(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %125 = call i32 @AcpiUtDeleteObjectDesc(%struct.TYPE_23__* %124)
  %126 = load i32, i32* %6, align 4
  %127 = call i32 @return_ACPI_STATUS(i32 %126)
  br label %128

128:                                              ; preds = %123, %117
  br label %129

129:                                              ; preds = %128, %104
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %130, i32 0, i32 6
  %132 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %135, i32 0, i32 6
  store i32 %133, i32* %136, align 8
  %137 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %142, i32 0, i32 5
  store i32 %140, i32* %143, align 4
  br label %163

144:                                              ; preds = %85
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 9
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %162

149:                                              ; preds = %144
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %151 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %150, i32 0, i32 9
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %154, i32 0, i32 6
  store i32 %152, i32* %155, align 8
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 8
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %160, i32 0, i32 5
  store i32 %158, i32* %161, align 4
  br label %162

162:                                              ; preds = %149, %144
  br label %163

163:                                              ; preds = %162, %129
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 7
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %168 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %168, i32 0, i32 4
  store i32 %166, i32* %169, align 8
  %170 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_25__*, %struct.TYPE_25__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @ACPI_ADR_SPACE_EC, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %200

179:                                              ; preds = %163
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 5
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = icmp sgt i32 %183, 8
  br i1 %184, label %185, label %200

185:                                              ; preds = %179
  %186 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 5
  %188 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i64 @ACPI_ROUND_BITS_UP_TO_BYTES(i32 %189)
  store i64 %190, i64* %7, align 8
  %191 = load i64, i64* %7, align 8
  %192 = icmp slt i64 %191, 256
  br i1 %192, label %193, label %199

193:                                              ; preds = %185
  %194 = load i64, i64* %7, align 8
  %195 = trunc i64 %194 to i32
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %197, i32 0, i32 1
  store i32 %195, i32* %198, align 4
  br label %199

199:                                              ; preds = %193, %185
  br label %200

200:                                              ; preds = %199, %179, %163
  %201 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %202 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %201, i32 0, i32 1
  %203 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %203, align 8
  %205 = call i32 @AcpiUtAddReference(%struct.TYPE_25__* %204)
  %206 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %220, i32 0, i32 1
  %222 = load %struct.TYPE_25__*, %struct.TYPE_25__** %221, align 8
  %223 = ptrtoint %struct.TYPE_25__* %222 to i32
  %224 = call i32 @ACPI_DEBUG_PRINT(i32 %223)
  br label %394

225:                                              ; preds = %81
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 6
  %228 = load i32, i32* %227, align 8
  %229 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %230, i32 0, i32 4
  store i32 %228, i32* %231, align 8
  %232 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %232, i32 0, i32 5
  %234 = load i32, i32* %233, align 4
  %235 = call i8* @AcpiNsGetAttachedObject(i32 %234)
  %236 = bitcast i8* %235 to %struct.TYPE_25__*
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 4
  %239 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %238, i32 0, i32 1
  store %struct.TYPE_25__* %236, %struct.TYPE_25__** %239, align 8
  %240 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %241 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = call i8* @AcpiNsGetAttachedObject(i32 %242)
  %244 = bitcast i8* %243 to %struct.TYPE_25__*
  %245 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %245, i32 0, i32 4
  %247 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %246, i32 0, i32 0
  store %struct.TYPE_25__* %244, %struct.TYPE_25__** %247, align 8
  %248 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %249 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %248, i32 0, i32 4
  %250 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %249, i32 0, i32 1
  %251 = load %struct.TYPE_25__*, %struct.TYPE_25__** %250, align 8
  %252 = call i32 @AcpiUtAddReference(%struct.TYPE_25__* %251)
  %253 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %254 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %253, i32 0, i32 4
  %255 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_25__*, %struct.TYPE_25__** %255, align 8
  %257 = call i32 @AcpiUtAddReference(%struct.TYPE_25__* %256)
  %258 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %259 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %260 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %259, i32 0, i32 4
  %261 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %263, i32 0, i32 4
  %265 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %268 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %267, i32 0, i32 1
  %269 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 4
  %273 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %272, i32 0, i32 1
  %274 = load %struct.TYPE_25__*, %struct.TYPE_25__** %273, align 8
  %275 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %276 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %275, i32 0, i32 4
  %277 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %276, i32 0, i32 0
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %277, align 8
  %279 = ptrtoint %struct.TYPE_25__* %278 to i32
  %280 = call i32 @ACPI_DEBUG_PRINT(i32 %279)
  %281 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %281, i32 0, i32 3
  %283 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %282, i32 0, i32 1
  %284 = load %struct.TYPE_23__*, %struct.TYPE_23__** %283, align 8
  store %struct.TYPE_23__* %284, %struct.TYPE_23__** %5, align 8
  %285 = load i32, i32* @ACPI_PARSE_OBJECT, align 4
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 3
  %288 = load i32, i32* %287, align 4
  %289 = call %struct.TYPE_27__* @ACPI_CAST_PTR(i32 %285, i32 %288)
  %290 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %289, i32 0, i32 0
  %291 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 4
  %293 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %294 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %293, i32 0, i32 2
  %295 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %294, i32 0, i32 1
  store i32 %292, i32* %295, align 4
  %296 = load i32, i32* @ACPI_PARSE_OBJECT, align 4
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = call %struct.TYPE_27__* @ACPI_CAST_PTR(i32 %296, i32 %299)
  %301 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %305, i32 0, i32 0
  store i32 %303, i32* %306, align 8
  br label %394

307:                                              ; preds = %81
  %308 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %309 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %308, i32 0, i32 4
  %310 = load i32, i32* %309, align 8
  %311 = call i8* @AcpiNsGetAttachedObject(i32 %310)
  %312 = bitcast i8* %311 to %struct.TYPE_25__*
  %313 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %314, i32 0, i32 1
  store %struct.TYPE_25__* %312, %struct.TYPE_25__** %315, align 8
  %316 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %316, i32 0, i32 3
  %318 = load i32, i32* %317, align 4
  %319 = call i8* @AcpiNsGetAttachedObject(i32 %318)
  %320 = bitcast i8* %319 to %struct.TYPE_25__*
  %321 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %322 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %321, i32 0, i32 0
  %323 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %322, i32 0, i32 0
  store %struct.TYPE_25__* %320, %struct.TYPE_25__** %323, align 8
  %324 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %325 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %324, i32 0, i32 0
  %326 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %325, i32 0, i32 0
  %327 = load %struct.TYPE_25__*, %struct.TYPE_25__** %326, align 8
  %328 = icmp ne %struct.TYPE_25__* %327, null
  br i1 %328, label %329, label %335

329:                                              ; preds = %307
  %330 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_25__*, %struct.TYPE_25__** %332, align 8
  %334 = icmp ne %struct.TYPE_25__* %333, null
  br i1 %334, label %342, label %335

335:                                              ; preds = %329, %307
  %336 = load i32, i32* @AE_INFO, align 4
  %337 = call i32 @ACPI_ERROR(i32 ptrtoint ([36 x i8]* @.str.4 to i32))
  %338 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %339 = call i32 @AcpiUtDeleteObjectDesc(%struct.TYPE_23__* %338)
  %340 = load i32, i32* @AE_AML_INTERNAL, align 4
  %341 = call i32 @return_ACPI_STATUS(i32 %340)
  br label %342

342:                                              ; preds = %335, %329
  %343 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %344 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %344, i32 0, i32 0
  %346 = load %struct.TYPE_25__*, %struct.TYPE_25__** %345, align 8
  %347 = call i32 @AcpiUtAddReference(%struct.TYPE_25__* %346)
  %348 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %349 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %348, i32 0, i32 0
  %350 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %349, i32 0, i32 1
  %351 = load %struct.TYPE_25__*, %struct.TYPE_25__** %350, align 8
  %352 = call i32 @AcpiUtAddReference(%struct.TYPE_25__* %351)
  %353 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %354 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %353, i32 0, i32 2
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @ACPI_DIV_8(i32 %355)
  %357 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %358 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %357, i32 0, i32 0
  %359 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %358, i32 0, i32 5
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @ACPI_ROUND_DOWN(i32 %356, i32 %360)
  %362 = sext i32 %361 to i64
  %363 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %363, i32 0, i32 0
  %365 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %364, i32 0, i32 2
  store i64 %362, i64* %365, align 8
  %366 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %367 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 4
  %371 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %371, i32 0, i32 0
  %373 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %372, i32 0, i32 3
  %374 = load i32, i32* %373, align 8
  %375 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %376, i32 0, i32 2
  %378 = load i64, i64* %377, align 8
  %379 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %380 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %379, i32 0, i32 1
  %381 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %384 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %383, i32 0, i32 0
  %385 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %384, i32 0, i32 1
  %386 = load %struct.TYPE_25__*, %struct.TYPE_25__** %385, align 8
  %387 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %388, i32 0, i32 0
  %390 = load %struct.TYPE_25__*, %struct.TYPE_25__** %389, align 8
  %391 = ptrtoint %struct.TYPE_25__* %390 to i32
  %392 = call i32 @ACPI_DEBUG_PRINT(i32 %391)
  br label %394

393:                                              ; preds = %81
  br label %394

394:                                              ; preds = %393, %342, %225, %200
  %395 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %396 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %399 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %400 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = call i64 @AcpiNsGetType(i32 %401)
  %403 = call i32 @AcpiNsAttachObject(i32 %397, %struct.TYPE_23__* %398, i64 %402)
  store i32 %403, i32* %6, align 4
  %404 = load i32, i32* @ACPI_DB_BFIELD, align 4
  %405 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %406 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 4
  %408 = load %struct.TYPE_24__*, %struct.TYPE_24__** %3, align 8
  %409 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = call i32 @AcpiUtGetNodeName(i32 %410)
  %412 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %413 = ptrtoint %struct.TYPE_23__* %412 to i32
  %414 = call i32 @ACPI_DEBUG_PRINT(i32 %413)
  %415 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %416 = call i32 @AcpiUtRemoveReference(%struct.TYPE_23__* %415)
  %417 = load i32, i32* %6, align 4
  %418 = call i32 @return_ACPI_STATUS(i32 %417)
  %419 = load i32, i32* %2, align 4
  ret i32 %419
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @ACPI_ERROR(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i64 @AcpiNsGetType(i32) #1

declare dso_local i32 @AcpiUtGetTypeName(i64) #1

declare dso_local %struct.TYPE_23__* @AcpiUtCreateInternalObject(i32) #1

declare dso_local i32 @AcpiExPrepCommonFieldObject(%struct.TYPE_23__*, i32, i32, i32, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiUtDeleteObjectDesc(%struct.TYPE_23__*) #1

declare dso_local i8* @AcpiNsGetAttachedObject(i32) #1

declare dso_local i32 @AcpiDsGetBufferArguments(%struct.TYPE_23__*) #1

declare dso_local i64 @ACPI_ROUND_BITS_UP_TO_BYTES(i32) #1

declare dso_local i32 @AcpiUtAddReference(%struct.TYPE_25__*) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local %struct.TYPE_27__* @ACPI_CAST_PTR(i32, i32) #1

declare dso_local i32 @ACPI_ROUND_DOWN(i32, i32) #1

declare dso_local i32 @ACPI_DIV_8(i32) #1

declare dso_local i32 @AcpiNsAttachObject(i32, %struct.TYPE_23__*, i64) #1

declare dso_local i32 @AcpiUtGetNodeName(i32) #1

declare dso_local i32 @AcpiUtRemoveReference(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
