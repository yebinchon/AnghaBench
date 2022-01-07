; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_set_cx_lowest.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_set_cx_lowest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cpu_softc = type { i32, i32, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i64 }

@cpu = common dso_local global i32 0, align 4
@ACPI_STATE_C3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_cpu_softc*)* @acpi_cpu_set_cx_lowest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_cpu_set_cx_lowest(%struct.acpi_cpu_softc* %0) #0 {
  %2 = alloca %struct.acpi_cpu_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.acpi_cpu_softc* %0, %struct.acpi_cpu_softc** %2, align 8
  %4 = load i32, i32* @cpu, align 4
  %5 = call i32 @ACPI_SERIAL_ASSERT(i32 %4)
  %6 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %7 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %10 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call i32 @min(i32 %8, i64 %12)
  %14 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %15 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %17 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %16, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %19 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %40, %1
  %22 = load i32, i32* %3, align 4
  %23 = icmp sge i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %26 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @ACPI_STATE_C3, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %24
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %38 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  br label %43

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %3, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %3, align 4
  br label %21

43:                                               ; preds = %35, %21
  %44 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %45 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @bzero(i32 %46, i32 4)
  ret i32 0
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @bzero(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
