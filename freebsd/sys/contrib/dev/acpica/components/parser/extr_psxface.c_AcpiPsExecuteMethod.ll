; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/parser/extr_psxface.c_AcpiPsExecuteMethod.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/parser/extr_psxface.c_AcpiPsExecuteMethod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, %struct.TYPE_20__*, i32, i32, %struct.TYPE_19__* }
%struct.TYPE_20__ = type { %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__, i32, i32, i32 }
%struct.TYPE_22__ = type { i32 (%struct.TYPE_24__*)* }
%struct.TYPE_24__ = type { i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@PsExecuteMethod = common dso_local global i32 0, align 4
@AE_NULL_ENTRY = common dso_local global i32 0, align 4
@REF_INCREMENT = common dso_local global i32 0, align 4
@ACPI_DB_PARSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"**** Begin Method Parse/Execute [%4.4s] **** Node=%p Obj=%p\0A\00", align 1
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_IMODE_EXECUTE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@ACPI_METHOD_MODULE_LEVEL = common dso_local global i32 0, align 4
@ACPI_PARSE_MODULE_LEVEL = common dso_local global i32 0, align 4
@ACPI_METHOD_INTERNAL_ONLY = common dso_local global i32 0, align 4
@AcpiGbl_EnableInterpreterSlack = common dso_local global i64 0, align 8
@REF_DECREMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Method returned ObjDesc=%p\0A\00", align 1
@AE_CTRL_RETURN_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiPsExecuteMethod(%struct.TYPE_25__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_25__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %3, align 8
  %7 = load i32, i32* @PsExecuteMethod, align 4
  %8 = call i32 @ACPI_FUNCTION_TRACE(i32 %7)
  %9 = call i32 (...) @AcpiTbCheckDsdtHeader()
  %10 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %11 = icmp ne %struct.TYPE_25__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %16 = icmp ne %struct.TYPE_19__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %12, %1
  %18 = load i32, i32* @AE_NULL_ENTRY, align 4
  %19 = call i32 @return_ACPI_STATUS(i32 %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %21, i32 0, i32 4
  %23 = load %struct.TYPE_19__*, %struct.TYPE_19__** %22, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %25, align 8
  %27 = call i32 @AcpiDsBeginMethodExecution(%struct.TYPE_19__* %23, %struct.TYPE_20__* %26, i32* null)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i64 @ACPI_FAILURE(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @return_ACPI_STATUS(i32 %32)
  br label %34

34:                                               ; preds = %31, %20
  %35 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %36 = load i32, i32* @REF_INCREMENT, align 4
  %37 = call i32 @AcpiPsUpdateParameterList(%struct.TYPE_25__* %35, i32 %36)
  %38 = load i32, i32* @ACPI_DB_PARSE, align 4
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %39, i32 0, i32 4
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 4
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %46, align 8
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = ptrtoint %struct.TYPE_20__* %50 to i32
  %52 = call i32 @ACPI_DEBUG_PRINT(i32 %51)
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32* @AcpiPsCreateScopeOp(i32 %58)
  store i32* %59, i32** %5, align 8
  %60 = load i32*, i32** %5, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %64, label %62

62:                                               ; preds = %34
  %63 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %63, i32* %4, align 4
  br label %188

64:                                               ; preds = %34
  %65 = load i32, i32* @ACPI_IMODE_EXECUTE, align 4
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.TYPE_24__* @AcpiDsCreateWalkState(i32 %73, i32* null, i32* null, i32* null)
  store %struct.TYPE_24__* %74, %struct.TYPE_24__** %6, align 8
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %76 = icmp ne %struct.TYPE_24__* %75, null
  br i1 %76, label %79, label %77

77:                                               ; preds = %64
  %78 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %78, i32* %4, align 4
  br label %188

79:                                               ; preds = %64
  %80 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %83, align 8
  %85 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_20__*, %struct.TYPE_20__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @AcpiDsInitAmlWalk(%struct.TYPE_24__* %80, i32* %81, %struct.TYPE_19__* %84, i32 %90, i32 %96, %struct.TYPE_25__* %97, i32 %100)
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i64 @ACPI_FAILURE(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %79
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %107 = call i32 @AcpiDsDeleteWalkState(%struct.TYPE_24__* %106)
  br label %188

108:                                              ; preds = %79
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %112, i32 0, i32 6
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @FALSE, align 4
  %115 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 4
  %117 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @ACPI_METHOD_MODULE_LEVEL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %108
  %127 = load i32, i32* @ACPI_PARSE_MODULE_LEVEL, align 4
  %128 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %128, i32 0, i32 4
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %126, %108
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 1
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = load i32, i32* @ACPI_METHOD_INTERNAL_ONLY, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %169

142:                                              ; preds = %132
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 1
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 0
  %149 = load i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)** %148, align 8
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %151 = call i32 %149(%struct.TYPE_24__* %150)
  store i32 %151, i32* %4, align 4
  %152 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 0
  store i64 %154, i64* %156, align 8
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %158 = call i32 @AcpiDsScopeStackClear(%struct.TYPE_24__* %157)
  %159 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %159, i32 0, i32 2
  %161 = call i32 @AcpiPsCleanupScope(i32* %160)
  %162 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %166 = call i32 @AcpiDsTerminateControlMethod(i32 %164, %struct.TYPE_24__* %165)
  %167 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %168 = call i32 @AcpiDsDeleteWalkState(%struct.TYPE_24__* %167)
  br label %188

169:                                              ; preds = %132
  %170 = load i64, i64* @AcpiGbl_EnableInterpreterSlack, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %185

172:                                              ; preds = %169
  %173 = call i32 @AcpiUtCreateIntegerObject(i32 0)
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  store i32 %173, i32* %175, align 8
  %176 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %177 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %184, label %180

180:                                              ; preds = %172
  %181 = load i32, i32* @AE_NO_MEMORY, align 4
  store i32 %181, i32* %4, align 4
  %182 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %183 = call i32 @AcpiDsDeleteWalkState(%struct.TYPE_24__* %182)
  br label %188

184:                                              ; preds = %172
  br label %185

185:                                              ; preds = %184, %169
  %186 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %187 = call i32 @AcpiPsParseAml(%struct.TYPE_24__* %186)
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %185, %180, %142, %105, %77, %62
  %189 = load i32*, i32** %5, align 8
  %190 = call i32 @AcpiPsDeleteParseTree(i32* %189)
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %192 = load i32, i32* @REF_DECREMENT, align 4
  %193 = call i32 @AcpiPsUpdateParameterList(%struct.TYPE_25__* %191, i32 %192)
  %194 = load i32, i32* %4, align 4
  %195 = call i64 @ACPI_FAILURE(i32 %194)
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %188
  %198 = load i32, i32* %4, align 4
  %199 = call i32 @return_ACPI_STATUS(i32 %198)
  br label %200

200:                                              ; preds = %197, %188
  %201 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %217

205:                                              ; preds = %200
  %206 = load i32, i32* @ACPI_DB_PARSE, align 4
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = trunc i64 %209 to i32
  %211 = call i32 @ACPI_DEBUG_PRINT(i32 %210)
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %3, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 0
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @ACPI_DUMP_STACK_ENTRY(i64 %214)
  %216 = load i32, i32* @AE_CTRL_RETURN_VALUE, align 4
  store i32 %216, i32* %4, align 4
  br label %217

217:                                              ; preds = %205, %200
  %218 = load i32, i32* %4, align 4
  %219 = call i32 @return_ACPI_STATUS(i32 %218)
  %220 = load i32, i32* %2, align 4
  ret i32 %220
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @AcpiTbCheckDsdtHeader(...) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiDsBeginMethodExecution(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiPsUpdateParameterList(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32* @AcpiPsCreateScopeOp(i32) #1

declare dso_local %struct.TYPE_24__* @AcpiDsCreateWalkState(i32, i32*, i32*, i32*) #1

declare dso_local i32 @AcpiDsInitAmlWalk(%struct.TYPE_24__*, i32*, %struct.TYPE_19__*, i32, i32, %struct.TYPE_25__*, i32) #1

declare dso_local i32 @AcpiDsDeleteWalkState(%struct.TYPE_24__*) #1

declare dso_local i32 @AcpiDsScopeStackClear(%struct.TYPE_24__*) #1

declare dso_local i32 @AcpiPsCleanupScope(i32*) #1

declare dso_local i32 @AcpiDsTerminateControlMethod(i32, %struct.TYPE_24__*) #1

declare dso_local i32 @AcpiUtCreateIntegerObject(i32) #1

declare dso_local i32 @AcpiPsParseAml(%struct.TYPE_24__*) #1

declare dso_local i32 @AcpiPsDeleteParseTree(i32*) #1

declare dso_local i32 @ACPI_DUMP_STACK_ENTRY(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
