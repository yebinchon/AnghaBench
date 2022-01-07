; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_cx_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_cpu.c_acpi_cpu_cx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_cpu_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sbuf = type { i32 }

@SBUF_FIXEDLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"C%d/%d/%d \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_cpu_softc*)* @acpi_cpu_cx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_cpu_cx_list(%struct.acpi_cpu_softc* %0) #0 {
  %2 = alloca %struct.acpi_cpu_softc*, align 8
  %3 = alloca %struct.sbuf, align 4
  %4 = alloca i32, align 4
  store %struct.acpi_cpu_softc* %0, %struct.acpi_cpu_softc** %2, align 8
  %5 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %6 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @SBUF_FIXEDLEN, align 4
  %9 = call i32 @sbuf_new(%struct.sbuf* %3, i32 %7, i32 4, i32 %8)
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %36, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %13 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %39

16:                                               ; preds = %10
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %17, 1
  %19 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %20 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.acpi_cpu_softc*, %struct.acpi_cpu_softc** %2, align 8
  %28 = getelementptr inbounds %struct.acpi_cpu_softc, %struct.acpi_cpu_softc* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sbuf_printf(%struct.sbuf* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %26, i32 %34)
  br label %36

36:                                               ; preds = %16
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %10

39:                                               ; preds = %10
  %40 = call i32 @sbuf_trim(%struct.sbuf* %3)
  %41 = call i32 @sbuf_finish(%struct.sbuf* %3)
  ret void
}

declare dso_local i32 @sbuf_new(%struct.sbuf*, i32, i32, i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, i32, i32) #1

declare dso_local i32 @sbuf_trim(%struct.sbuf*) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
