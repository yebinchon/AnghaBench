; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmdeferred.c_AcpiDmDeferredParse.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/dev/acpica/components/disassembler/extr_dmdeferred.c_AcpiDmDeferredParse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_18__, %struct.TYPE_16__ }
%struct.TYPE_18__ = type { i32, %struct.TYPE_20__*, %struct.TYPE_17__, %struct.TYPE_20__*, i32 }
%struct.TYPE_17__ = type { %struct.TYPE_20__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_19__ = type { i32 }

@DmDeferredParse = common dso_local global i32 0, align 4
@AE_OK = common dso_local global i32 0, align 4
@ACPI_DB_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Parsing deferred opcode %s [%4.4s]\0A\00", align 1
@AE_NO_MEMORY = common dso_local global i32 0, align 4
@ACPI_IMODE_LOAD_PASS1 = common dso_local global i32 0, align 4
@ACPI_PARSE_DELETE_TREE = common dso_local global i32 0, align 4
@ACPI_PARSE_DISASSEMBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_20__*, i32*, i32)* @AcpiDmDeferredParse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AcpiDmDeferredParse(%struct.TYPE_20__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* @DmDeferredParse, align 4
  %15 = call i32 @ACPI_FUNCTION_TRACE(i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %18, %3
  %22 = load i32, i32* @AE_OK, align 4
  %23 = call i32 @return_ACPI_STATUS(i32 %22)
  br label %24

24:                                               ; preds = %21, %18
  %25 = load i32, i32* @ACPI_DB_INFO, align 4
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = bitcast i32* %32 to i8*
  %34 = ptrtoint i8* %33 to i32
  %35 = call i32 @ACPI_DEBUG_PRINT(i32 %34)
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %37 = call %struct.TYPE_19__* @AcpiDsCreateWalkState(i32 0, %struct.TYPE_20__* %36, i32* null, i32* null)
  store %struct.TYPE_19__* %37, %struct.TYPE_19__** %8, align 8
  %38 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %39 = icmp ne %struct.TYPE_19__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %24
  %41 = load i32, i32* @AE_NO_MEMORY, align 4
  %42 = call i32 @return_ACPI_STATUS(i32 %41)
  br label %43

43:                                               ; preds = %40, %24
  %44 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %45 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @ACPI_IMODE_LOAD_PASS1, align 4
  %49 = call i32 @AcpiDsInitAmlWalk(%struct.TYPE_19__* %44, %struct.TYPE_20__* %45, i32* null, i32* %46, i32 %47, i32* null, i32 %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @ACPI_FAILURE(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @return_ACPI_STATUS(i32 %54)
  br label %56

56:                                               ; preds = %53, %43
  %57 = load i32, i32* @ACPI_PARSE_DELETE_TREE, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %60 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @ACPI_PARSE_DISASSEMBLE, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %69 = call i32 @AcpiPsParseAml(%struct.TYPE_19__* %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  %71 = call i64 @ACPI_FAILURE(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %56
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @return_ACPI_STATUS(i32 %74)
  br label %76

76:                                               ; preds = %73, %56
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %83, align 8
  store %struct.TYPE_20__* %84, %struct.TYPE_20__** %11, align 8
  %85 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  store %struct.TYPE_20__* %85, %struct.TYPE_20__** %10, align 8
  br label %86

86:                                               ; preds = %89, %76
  %87 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %88 = icmp ne %struct.TYPE_20__* %87, null
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %91 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %92 = call %struct.TYPE_20__* @AcpiPsGetDepthNext(%struct.TYPE_20__* %90, %struct.TYPE_20__* %91)
  store %struct.TYPE_20__* %92, %struct.TYPE_20__** %10, align 8
  br label %86

93:                                               ; preds = %86
  %94 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  switch i32 %97, label %156 [
    i32 130, label %98
    i32 129, label %98
    i32 128, label %98
  ]

98:                                               ; preds = %93, %93, %93
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  switch i32 %102, label %116 [
    i32 129, label %103
    i32 128, label %115
    i32 130, label %115
  ]

103:                                              ; preds = %98
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %107, align 8
  store %struct.TYPE_20__* %108, %struct.TYPE_20__** %13, align 8
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 3
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %111, align 8
  store %struct.TYPE_20__* %112, %struct.TYPE_20__** %12, align 8
  %113 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %114 = call i32 @ACPI_FREE(%struct.TYPE_20__* %113)
  br label %122

115:                                              ; preds = %98, %98
  br label %116

116:                                              ; preds = %98, %115
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %120, align 8
  store %struct.TYPE_20__* %121, %struct.TYPE_20__** %12, align 8
  br label %122

122:                                              ; preds = %116, %103
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_20__*, %struct.TYPE_20__** %126, align 8
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  store %struct.TYPE_20__* %127, %struct.TYPE_20__** %131, align 8
  %132 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %132, %struct.TYPE_20__** %11, align 8
  %133 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  store %struct.TYPE_20__* %133, %struct.TYPE_20__** %10, align 8
  br label %134

134:                                              ; preds = %149, %122
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %136 = icmp ne %struct.TYPE_20__* %135, null
  br i1 %136, label %137, label %153

137:                                              ; preds = %134
  %138 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_20__*, %struct.TYPE_20__** %140, align 8
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %143 = icmp eq %struct.TYPE_20__* %141, %142
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %146 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %147 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 1
  store %struct.TYPE_20__* %145, %struct.TYPE_20__** %148, align 8
  br label %149

149:                                              ; preds = %144, %137
  %150 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %151 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %152 = call %struct.TYPE_20__* @AcpiPsGetDepthNext(%struct.TYPE_20__* %150, %struct.TYPE_20__* %151)
  store %struct.TYPE_20__* %152, %struct.TYPE_20__** %10, align 8
  br label %134

153:                                              ; preds = %134
  %154 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %155 = call i32 @ACPI_FREE(%struct.TYPE_20__* %154)
  br label %157

156:                                              ; preds = %93
  br label %157

157:                                              ; preds = %156, %153
  %158 = load i32, i32* @AE_OK, align 4
  %159 = call i32 @return_ACPI_STATUS(i32 %158)
  %160 = load i32, i32* %4, align 4
  ret i32 %160
}

declare dso_local i32 @ACPI_FUNCTION_TRACE(i32) #1

declare dso_local i32 @return_ACPI_STATUS(i32) #1

declare dso_local i32 @ACPI_DEBUG_PRINT(i32) #1

declare dso_local %struct.TYPE_19__* @AcpiDsCreateWalkState(i32, %struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i32 @AcpiDsInitAmlWalk(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiPsParseAml(%struct.TYPE_19__*) #1

declare dso_local %struct.TYPE_20__* @AcpiPsGetDepthNext(%struct.TYPE_20__*, %struct.TYPE_20__*) #1

declare dso_local i32 @ACPI_FREE(%struct.TYPE_20__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
