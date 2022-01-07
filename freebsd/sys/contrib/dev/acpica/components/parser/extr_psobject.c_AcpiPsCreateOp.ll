; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/parser/extr_psobject.c_AcpiPsCreateOp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/parser/extr_psobject.c_AcpiPsCreateOp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i64, i64 (%struct.TYPE_28__*, %struct.TYPE_29__**)*, %struct.TYPE_29__*, %struct.TYPE_24__, %struct.TYPE_25__*, i64 }
%struct.TYPE_29__ = type { %struct.TYPE_27__, %struct.TYPE_26__ }
%struct.TYPE_27__ = type { i64, i64, i32 }
%struct.TYPE_26__ = type { i64*, i64 }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_30__ = type { i32, i32 }

@AE_OK = common dso_local global i64 0, align 8
@PsCreateOp = common dso_local global i32 0, align 4
@AE_CTRL_PARSE_CONTINUE = common dso_local global i64 0, align 8
@AE_NO_MEMORY = common dso_local global i64 0, align 8
@AML_NAMED = common dso_local global i32 0, align 4
@AML_CREATE = common dso_local global i32 0, align 4
@AML_BANK_FIELD_OP = common dso_local global i64 0, align 8
@AML_HAS_TARGET = common dso_local global i32 0, align 4
@ACPI_PARSEOP_TARGET = common dso_local global i32 0, align 4
@AML_INCREMENT_OP = common dso_local global i64 0, align 8
@AML_DECREMENT_OP = common dso_local global i64 0, align 8
@AE_CTRL_PENDING = common dso_local global i64 0, align 8
@AE_CTRL_PARSE_PENDING = common dso_local global i64 0, align 8
@AE_NOT_FOUND = common dso_local global i64 0, align 8
@AML_EXTERNAL_OP = common dso_local global i64 0, align 8
@AcpiGbl_DisasmFlag = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AcpiPsCreateOp(%struct.TYPE_28__* %0, i64* %1, %struct.TYPE_29__** %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.TYPE_29__**, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_29__*, align 8
  %10 = alloca %struct.TYPE_29__*, align 8
  %11 = alloca %struct.TYPE_29__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_30__*, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.TYPE_29__** %2, %struct.TYPE_29__*** %7, align 8
  %14 = load i64, i64* @AE_OK, align 8
  store i64 %14, i64* %8, align 8
  store %struct.TYPE_29__* null, %struct.TYPE_29__** %10, align 8
  %15 = load i32, i32* @PsCreateOp, align 4
  %16 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %17 = call i32 @ACPI_FUNCTION_TRACE_PTR(i32 %15, %struct.TYPE_28__* %16)
  %18 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %19 = call i64 @AcpiPsGetAmlOpcode(%struct.TYPE_28__* %18)
  store i64 %19, i64* %8, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* @AE_CTRL_PARSE_CONTINUE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i64, i64* @AE_CTRL_PARSE_CONTINUE, align 8
  %25 = call i32 @return_ACPI_STATUS(i64 %24)
  br label %26

26:                                               ; preds = %23, %3
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @ACPI_FAILURE(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @return_ACPI_STATUS(i64 %31)
  br label %33

33:                                               ; preds = %30, %26
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = call i8* @AcpiPsGetOpcodeInfo(i64 %36)
  %38 = bitcast i8* %37 to %struct.TYPE_25__*
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %39, i32 0, i32 4
  store %struct.TYPE_25__* %38, %struct.TYPE_25__** %40, align 8
  %41 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %6, align 8
  %45 = call %struct.TYPE_29__* @AcpiPsAllocOp(i64 %43, i64* %44)
  store %struct.TYPE_29__* %45, %struct.TYPE_29__** %9, align 8
  %46 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %47 = icmp ne %struct.TYPE_29__* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %33
  %49 = load i64, i64* @AE_NO_MEMORY, align 8
  %50 = call i32 @return_ACPI_STATUS(i64 %49)
  br label %51

51:                                               ; preds = %48, %33
  %52 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_25__*, %struct.TYPE_25__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @AML_NAMED, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %78

60:                                               ; preds = %51
  %61 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %62 = load i64*, i64** %6, align 8
  %63 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %64 = call i64 @AcpiPsBuildNamedOp(%struct.TYPE_28__* %61, i64* %62, %struct.TYPE_29__* %63, %struct.TYPE_29__** %10)
  store i64 %64, i64* %8, align 8
  %65 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %66 = call i32 @AcpiPsFreeOp(%struct.TYPE_29__* %65)
  %67 = load i64, i64* %8, align 8
  %68 = call i64 @ACPI_FAILURE(i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %60
  %71 = load i64, i64* %8, align 8
  %72 = call i32 @return_ACPI_STATUS(i64 %71)
  br label %73

73:                                               ; preds = %70, %60
  %74 = load %struct.TYPE_29__*, %struct.TYPE_29__** %10, align 8
  %75 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  store %struct.TYPE_29__* %74, %struct.TYPE_29__** %75, align 8
  %76 = load i64, i64* @AE_OK, align 8
  %77 = call i32 @return_ACPI_STATUS(i64 %76)
  br label %78

78:                                               ; preds = %73, %51
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 4
  %81 = load %struct.TYPE_25__*, %struct.TYPE_25__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @AML_CREATE, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %78
  %88 = load i64*, i64** %6, align 8
  %89 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %90 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %90, i32 0, i32 0
  store i64* %88, i64** %91, align 8
  %92 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 1
  store i64 0, i64* %94, align 8
  br label %95

95:                                               ; preds = %87, %78
  %96 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @AML_BANK_FIELD_OP, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %95
  %102 = load i64*, i64** %6, align 8
  %103 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %104 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %104, i32 0, i32 0
  store i64* %102, i64** %105, align 8
  %106 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %107 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %107, i32 0, i32 1
  store i64 0, i64* %108, align 8
  br label %109

109:                                              ; preds = %101, %95
  %110 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %110, i32 0, i32 3
  %112 = call %struct.TYPE_29__* @AcpiPsGetParentScope(%struct.TYPE_24__* %111)
  store %struct.TYPE_29__* %112, %struct.TYPE_29__** %11, align 8
  %113 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %114 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %115 = call i32 @AcpiPsAppendArg(%struct.TYPE_29__* %113, %struct.TYPE_29__* %114)
  %116 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %117 = icmp ne %struct.TYPE_29__* %116, null
  br i1 %117, label %118, label %173

118:                                              ; preds = %109
  %119 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %120 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i8* @AcpiPsGetOpcodeInfo(i64 %122)
  %124 = bitcast i8* %123 to %struct.TYPE_30__*
  store %struct.TYPE_30__* %124, %struct.TYPE_30__** %13, align 8
  %125 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %126 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @AML_HAS_TARGET, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %150

131:                                              ; preds = %118
  %132 = load %struct.TYPE_30__*, %struct.TYPE_30__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @AcpiPsGetArgumentCount(i32 %134)
  store i64 %135, i64* %12, align 8
  %136 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %137 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %12, align 8
  %141 = icmp sgt i64 %139, %140
  br i1 %141, label %142, label %149

142:                                              ; preds = %131
  %143 = load i32, i32* @ACPI_PARSEOP_TARGET, align 4
  %144 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %145 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %145, i32 0, i32 2
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %143
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %142, %131
  br label %172

150:                                              ; preds = %118
  %151 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @AML_INCREMENT_OP, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %164, label %157

157:                                              ; preds = %150
  %158 = load %struct.TYPE_29__*, %struct.TYPE_29__** %11, align 8
  %159 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @AML_DECREMENT_OP, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %171

164:                                              ; preds = %157, %150
  %165 = load i32, i32* @ACPI_PARSEOP_TARGET, align 4
  %166 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %167 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %165
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %164, %157
  br label %172

172:                                              ; preds = %171, %149
  br label %173

173:                                              ; preds = %172, %109
  %174 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %174, i32 0, i32 1
  %176 = load i64 (%struct.TYPE_28__*, %struct.TYPE_29__**)*, i64 (%struct.TYPE_28__*, %struct.TYPE_29__**)** %175, align 8
  %177 = icmp ne i64 (%struct.TYPE_28__*, %struct.TYPE_29__**)* %176, null
  br i1 %177, label %178, label %198

178:                                              ; preds = %173
  %179 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %180 = load %struct.TYPE_29__**, %struct.TYPE_29__*** %7, align 8
  store %struct.TYPE_29__* %179, %struct.TYPE_29__** %180, align 8
  %181 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %181, i32 0, i32 2
  store %struct.TYPE_29__* %179, %struct.TYPE_29__** %182, align 8
  %183 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %183, i32 0, i32 1
  %185 = load i64 (%struct.TYPE_28__*, %struct.TYPE_29__**)*, i64 (%struct.TYPE_28__*, %struct.TYPE_29__**)** %184, align 8
  %186 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %187 = call i64 %185(%struct.TYPE_28__* %186, %struct.TYPE_29__** %9)
  store i64 %187, i64* %8, align 8
  %188 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %189 = load %struct.TYPE_29__*, %struct.TYPE_29__** %9, align 8
  %190 = load i64, i64* %8, align 8
  %191 = call i64 @AcpiPsNextParseState(%struct.TYPE_28__* %188, %struct.TYPE_29__* %189, i64 %190)
  store i64 %191, i64* %8, align 8
  %192 = load i64, i64* %8, align 8
  %193 = load i64, i64* @AE_CTRL_PENDING, align 8
  %194 = icmp eq i64 %192, %193
  br i1 %194, label %195, label %197

195:                                              ; preds = %178
  %196 = load i64, i64* @AE_CTRL_PARSE_PENDING, align 8
  store i64 %196, i64* %8, align 8
  br label %197

197:                                              ; preds = %195, %178
  br label %198

198:                                              ; preds = %197, %173
  %199 = load i64, i64* %8, align 8
  %200 = call i32 @return_ACPI_STATUS(i64 %199)
  %201 = load i64, i64* %4, align 8
  ret i64 %201
}

declare dso_local i32 @ACPI_FUNCTION_TRACE_PTR(i32, %struct.TYPE_28__*) #1

declare dso_local i64 @AcpiPsGetAmlOpcode(%struct.TYPE_28__*) #1

declare dso_local i32 @return_ACPI_STATUS(i64) #1

declare dso_local i64 @ACPI_FAILURE(i64) #1

declare dso_local i8* @AcpiPsGetOpcodeInfo(i64) #1

declare dso_local %struct.TYPE_29__* @AcpiPsAllocOp(i64, i64*) #1

declare dso_local i64 @AcpiPsBuildNamedOp(%struct.TYPE_28__*, i64*, %struct.TYPE_29__*, %struct.TYPE_29__**) #1

declare dso_local i32 @AcpiPsFreeOp(%struct.TYPE_29__*) #1

declare dso_local %struct.TYPE_29__* @AcpiPsGetParentScope(%struct.TYPE_24__*) #1

declare dso_local i32 @AcpiPsAppendArg(%struct.TYPE_29__*, %struct.TYPE_29__*) #1

declare dso_local i64 @AcpiPsGetArgumentCount(i32) #1

declare dso_local i64 @AcpiPsNextParseState(%struct.TYPE_28__*, %struct.TYPE_29__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
