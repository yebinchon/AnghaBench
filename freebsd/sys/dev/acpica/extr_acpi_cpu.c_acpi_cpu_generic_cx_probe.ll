; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_generic_cx_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_generic_cx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.acpi_cpu_softc = type { i32, i32, i64, i32, i64, i64, i64, %struct.acpi_cx* }
%struct.acpi_cx = type { i32, i32, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }

@ACPI_STATE_C1 = common dso_local global i32 0, align 4
@ACPI_ADR_SPACE_SYSTEM_IO = common dso_local global i32 0, align 4
@AcpiGbl_FADT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@RF_SHAREABLE = common dso_local global i32 0, align 4
@ACPI_STATE_C2 = common dso_local global i32 0, align 4
@cpu_quirks = common dso_local global i32 0, align 4
@CPU_QUIRK_NO_C3 = common dso_local global i32 0, align 4
@ACPI_STATE_C3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_cpu_softc*)* @acpi_cpu_generic_cx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_cpu_generic_cx_probe(%struct.acpi_cpu_softc* %0) #0 {
  %2 = alloca %struct.acpi_cpu_softc*, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = alloca %struct.acpi_cx*, align 8
  store %struct.acpi_cpu_softc* %0, %struct.acpi_cpu_softc** %2, align 8
  %5 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %6 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %8 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %7, i32 0, i32 7
  %9 = load %struct.acpi_cx*, %struct.acpi_cx** %8, align 8
  store %struct.acpi_cx* %9, %struct.acpi_cx** %4, align 8
  %10 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %11 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %10, i32 0, i32 0
  store i32 1000000, i32* %11, align 8
  %12 = load i32, i32* @ACPI_STATE_C1, align 4
  %13 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %14 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %16 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %18 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %17, i32 1
  store %struct.acpi_cx* %18, %struct.acpi_cx** %4, align 8
  %19 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %20 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %23 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %22, i32 0, i32 6
  store i64 %21, i64* %23, align 8
  %24 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %25 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %28 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %27, i32 0, i32 5
  store i64 %26, i64* %28, align 8
  %29 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %30 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %34 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %35, 5
  br i1 %36, label %37, label %38

37:                                               ; preds = %1
  br label %137

38:                                               ; preds = %1
  %39 = load i32, i32* @ACPI_ADR_SPACE_SYSTEM_IO, align 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 2
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i32 8, i32* %41, align 8
  %42 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @AcpiGbl_FADT, i32 0, i32 0), align 4
  %43 = icmp sle i32 %42, 100
  br i1 %43, label %44, label %86

44:                                               ; preds = %38
  %45 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %46 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %45, i32 0, i32 4
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i64 %48, i64* %49, align 8
  %50 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %51 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %50, i32 0, i32 1
  store i32 0, i32* %51, align 4
  %52 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %53 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %56 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %55, i32 0, i32 4
  %57 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %58 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %57, i32 0, i32 1
  %59 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %60 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %59, i32 0, i32 3
  %61 = load i32, i32* @RF_SHAREABLE, align 4
  %62 = call i32 @acpi_bus_alloc_gas(i32 %54, i32* %56, i32* %58, %struct.TYPE_4__* %3, i32** %60, i32 %61)
  %63 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %64 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %85

67:                                               ; preds = %44
  %68 = load i32, i32* @ACPI_STATE_C2, align 4
  %69 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %70 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @AcpiGbl_FADT, i32 0, i32 0), align 4
  %72 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %73 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %75 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %74, i32 1
  store %struct.acpi_cx* %75, %struct.acpi_cx** %4, align 8
  %76 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %77 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %80 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %79, i32 0, i32 5
  store i64 %78, i64* %80, align 8
  %81 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %82 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %82, align 8
  br label %85

85:                                               ; preds = %67, %44
  br label %86

86:                                               ; preds = %85, %38
  %87 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %88 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %89, 6
  br i1 %90, label %91, label %92

91:                                               ; preds = %86
  br label %137

92:                                               ; preds = %86
  %93 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @AcpiGbl_FADT, i32 0, i32 1), align 4
  %94 = icmp sle i32 %93, 1000
  br i1 %94, label %95, label %137

95:                                               ; preds = %92
  %96 = load i32, i32* @cpu_quirks, align 4
  %97 = load i32, i32* @CPU_QUIRK_NO_C3, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %137, label %100

100:                                              ; preds = %95
  %101 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %102 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, 5
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 1
  store i64 %104, i64* %105, align 8
  %106 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %107 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %106, i32 0, i32 1
  store i32 1, i32* %107, align 4
  %108 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %109 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %112 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %111, i32 0, i32 4
  %113 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %114 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %113, i32 0, i32 1
  %115 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %116 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %115, i32 0, i32 3
  %117 = load i32, i32* @RF_SHAREABLE, align 4
  %118 = call i32 @acpi_bus_alloc_gas(i32 %110, i32* %112, i32* %114, %struct.TYPE_4__* %3, i32** %116, i32 %117)
  %119 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %120 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %136

123:                                              ; preds = %100
  %124 = load i32, i32* @ACPI_STATE_C3, align 4
  %125 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %126 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @AcpiGbl_FADT, i32 0, i32 1), align 4
  %128 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %129 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %128, i32 0, i32 0
  store i32 %127, i32* %129, align 8
  %130 = load %struct.acpi_cx*, %struct.acpi_cx** %4, align 8
  %131 = getelementptr inbounds %struct.acpi_cx, %struct.acpi_cx* %130, i32 1
  store %struct.acpi_cx* %131, %struct.acpi_cx** %4, align 8
  %132 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %133 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %133, align 8
  br label %136

136:                                              ; preds = %123, %100
  br label %137

137:                                              ; preds = %37, %91, %136, %95, %92
  ret void
}

declare dso_local i32 @acpi_bus_alloc_gas(i32, i32*, i32*, %struct.TYPE_4__*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
