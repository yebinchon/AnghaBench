; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dswexec.c_AcpiDsExecBeginOp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/dispatcher/extr_dswexec.c_AcpiDsExecBeginOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { i64, i32, %struct.TYPE_27__*, %struct.TYPE_22__*, %struct.TYPE_26__*, %struct.TYPE_26__* }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_22__ = type { %struct.TYPE_21__, %struct.TYPE_20__ }
%struct.TYPE_21__ = type { %struct.TYPE_26__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_26__ = type { %struct.TYPE_24__, %struct.TYPE_23__ }
%struct.TYPE_24__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_23__ = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@DsExecBeginOp = common dso_local global i32 0, align 4
@ACPI_DB_DISPATCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"(%s) Popping scope for Op %p\0A\00", align 1
@ACPI_CONTROL_CONDITIONAL_EXECUTING = common dso_local global i64 0, align 8
@ACPI_DB_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Exec predicate Op=%p State=%p\0A\00", align 1
@ACPI_CONTROL_PREDICATE_EXECUTING = common dso_local global i64 0, align 8
@AML_INT_NAMEPATH_OP = common dso_local global i64 0, align 8
@ACPI_WALK_METHOD = common dso_local global i32 0, align 4
@AML_SCOPE_OP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AcpiDsExecBeginOp(%struct.TYPE_25__* %0, %struct.TYPE_26__** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_26__**, align 8
  %6 = alloca %struct.TYPE_26__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_26__** %1, %struct.TYPE_26__*** %5, align 8
  %9 = load i32, i32* @AE_OK, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @DsExecBeginOp, align 4
  %11 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %12 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %10, %struct.TYPE_25__* %11)
  %13 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 5
  %15 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  store %struct.TYPE_26__* %15, %struct.TYPE_26__** %6, align 8
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %17 = icmp ne %struct.TYPE_26__* %16, null
  br i1 %17, label %71, label %18

18:                                               ; preds = %2
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %20 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %5, align 8
  %21 = call i32 @AcpiDsLoad2BeginOp(%struct.TYPE_25__* %19, %struct.TYPE_26__** %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i64 @ACPI_FAILURE(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %181

26:                                               ; preds = %18
  %27 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %5, align 8
  %28 = load %struct.TYPE_26__*, %struct.TYPE_26__** %27, align 8
  store %struct.TYPE_26__* %28, %struct.TYPE_26__** %6, align 8
  %29 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %30 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %30, i32 0, i32 5
  store %struct.TYPE_26__* %29, %struct.TYPE_26__** %31, align 8
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  %38 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call %struct.TYPE_27__* @AcpiPsGetOpcodeInfo(i64 %41)
  %43 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %43, i32 0, i32 2
  store %struct.TYPE_27__* %42, %struct.TYPE_27__** %44, align 8
  %45 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_27__*, %struct.TYPE_27__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @AcpiNsOpensScope(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %26
  %53 = load i32, i32* @ACPI_DB_DISPATCH, align 4
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_27__*, %struct.TYPE_27__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @AcpiUtGetTypeName(i32 %58)
  %60 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %61 = ptrtoint %struct.TYPE_26__* %60 to i32
  %62 = call i32 @ACPI_DEBUG_PRINT(i32 %61)
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %64 = call i32 @AcpiDsScopeStackPop(%struct.TYPE_25__* %63)
  store i32 %64, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i64 @ACPI_FAILURE(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %52
  br label %181

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %26
  br label %71

71:                                               ; preds = %70, %2
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %73, i32 0, i32 4
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %74, align 8
  %76 = icmp eq %struct.TYPE_26__* %72, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %5, align 8
  %79 = icmp ne %struct.TYPE_26__** %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %82 = load %struct.TYPE_26__**, %struct.TYPE_26__*** %5, align 8
  store %struct.TYPE_26__* %81, %struct.TYPE_26__** %82, align 8
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* @AE_OK, align 4
  %85 = call i32 @return_ACPI_STATUS(i32 %84)
  br label %86

86:                                               ; preds = %83, %71
  %87 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_22__*, %struct.TYPE_22__** %88, align 8
  %90 = icmp ne %struct.TYPE_22__* %89, null
  br i1 %90, label %91, label %118

91:                                               ; preds = %86
  %92 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 3
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @ACPI_CONTROL_CONDITIONAL_EXECUTING, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %118

100:                                              ; preds = %91
  %101 = load i32, i32* @ACPI_DB_EXEC, align 4
  %102 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %103 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %104 = ptrtoint %struct.TYPE_25__* %103 to i32
  %105 = call i32 @ACPI_DEBUG_PRINT(i32 %104)
  %106 = load i64, i64* @ACPI_CONTROL_PREDICATE_EXECUTING, align 8
  %107 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %108 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %107, i32 0, i32 3
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  store i64 %106, i64* %111, align 8
  %112 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %113 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %113, i32 0, i32 3
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %116, i32 0, i32 0
  store %struct.TYPE_26__* %112, %struct.TYPE_26__** %117, align 8
  br label %118

118:                                              ; preds = %100, %91, %86
  %119 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  store i32 %123, i32* %8, align 4
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @AML_INT_NAMEPATH_OP, align 8
  %129 = icmp eq i64 %127, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %118
  store i32 128, i32* %8, align 4
  br label %131

131:                                              ; preds = %130, %118
  %132 = load i32, i32* %8, align 4
  switch i32 %132, label %177 [
    i32 131, label %133
    i32 128, label %137
    i32 129, label %176
    i32 130, label %176
  ]

133:                                              ; preds = %131
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %135 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %136 = call i32 @AcpiDsExecBeginControlOp(%struct.TYPE_25__* %134, %struct.TYPE_26__* %135)
  store i32 %136, i32* %7, align 4
  br label %178

137:                                              ; preds = %131
  %138 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @ACPI_WALK_METHOD, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %175

144:                                              ; preds = %137
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @AML_SCOPE_OP, align 8
  %150 = icmp ne i64 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %153 = call i32 @AcpiDsLoad2BeginOp(%struct.TYPE_25__* %152, %struct.TYPE_26__** null)
  store i32 %153, i32* %7, align 4
  br label %174

154:                                              ; preds = %144
  %155 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %156, i32 0, i32 0
  %158 = load %struct.TYPE_28__*, %struct.TYPE_28__** %157, align 8
  %159 = load %struct.TYPE_26__*, %struct.TYPE_26__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 0
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %166 = call i32 @AcpiDsScopeStackPush(%struct.TYPE_28__* %158, i32 %164, %struct.TYPE_25__* %165)
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* %7, align 4
  %168 = call i64 @ACPI_FAILURE(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %154
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @return_ACPI_STATUS(i32 %171)
  br label %173

173:                                              ; preds = %170, %154
  br label %174

174:                                              ; preds = %173, %151
  br label %175

175:                                              ; preds = %174, %137
  br label %178

176:                                              ; preds = %131, %131
  br label %178

177:                                              ; preds = %131
  br label %178

178:                                              ; preds = %177, %176, %175, %133
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @return_ACPI_STATUS(i32 %179)
  br label %181

181:                                              ; preds = %178, %68, %25
  %182 = load i32, i32* %7, align 4
  %183 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %184 = call i32 @AcpiDsMethodError(i32 %182, %struct.TYPE_25__* %183)
  store i32 %184, i32* %7, align 4
  %185 = load i32, i32* %7, align 4
  %186 = call i32 @return_ACPI_STATUS(i32 %185)
  %187 = load i32, i32* %3, align 4
  ret i32 %187
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_25__*) #1

declare dso_local i32 @AcpiDsLoad2BeginOp(%struct.TYPE_25__*, %struct.TYPE_26__**) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local %struct.TYPE_27__* @AcpiPsGetOpcodeInfo(i64) #1

declare dso_local i64 @AcpiNsOpensScope(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local i32 @AcpiUtGetTypeName(i32) #1

declare dso_local i32 @AcpiDsScopeStackPop(%struct.TYPE_25__*) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @AcpiDsExecBeginControlOp(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @AcpiDsScopeStackPush(%struct.TYPE_28__*, i32, %struct.TYPE_25__*) #1

declare dso_local i32 @AcpiDsMethodError(i32, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
