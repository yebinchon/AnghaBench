; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_resync_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi.c_acpi_resync_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*)* }
%struct.acpi_softc = type { i64 }

@timecounter = common dso_local global %struct.TYPE_4__* null, align 8
@time_second = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.acpi_softc*)* @acpi_resync_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_resync_clock(%struct.acpi_softc* %0) #0 {
  %2 = alloca %struct.acpi_softc*, align 8
  store %struct.acpi_softc* %0, %struct.acpi_softc** %2, align 8
  %3 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timecounter, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %5 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %4, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timecounter, align 8
  %7 = call i32 %5(%struct.TYPE_4__* %6)
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timecounter, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %9, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @timecounter, align 8
  %12 = call i32 %10(%struct.TYPE_4__* %11)
  %13 = load i64, i64* @time_second, align 8
  %14 = load %struct.acpi_softc*, %struct.acpi_softc** %2, align 8
  %15 = getelementptr inbounds %struct.acpi_softc, %struct.acpi_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = call i32 @inittodr(i64 %17)
  ret void
}

declare dso_local i32 @inittodr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
