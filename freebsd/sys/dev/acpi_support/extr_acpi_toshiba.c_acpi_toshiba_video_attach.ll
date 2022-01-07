; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_toshiba.c_acpi_toshiba_video_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpi_support/extr_acpi_toshiba.c_acpi_toshiba_video_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_toshiba_softc = type { i32 }

@acpi_toshiba_devclass = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_toshiba_video_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_toshiba_video_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_toshiba_softc*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @acpi_toshiba_devclass, align 4
  %6 = call %struct.acpi_toshiba_softc* @devclass_get_softc(i32 %5, i32 0)
  store %struct.acpi_toshiba_softc* %6, %struct.acpi_toshiba_softc** %4, align 8
  %7 = load %struct.acpi_toshiba_softc*, %struct.acpi_toshiba_softc** %4, align 8
  %8 = icmp eq %struct.acpi_toshiba_softc* %7, null
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* @ENXIO, align 4
  store i32 %10, i32* %2, align 4
  br label %16

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @acpi_get_handle(i32 %12)
  %14 = load %struct.acpi_toshiba_softc*, %struct.acpi_toshiba_softc** %4, align 8
  %15 = getelementptr inbounds %struct.acpi_toshiba_softc, %struct.acpi_toshiba_softc* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %11, %9
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local %struct.acpi_toshiba_softc* @devclass_get_softc(i32, i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
