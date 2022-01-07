; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ralink/extr_if_fv.c_fv_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fv_softc = type { i32 }

@miibus_mtx = common dso_local global i32 0, align 4
@MII_PREAMBLE = common dso_local global i32 0, align 4
@MII_WRCMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @fv_miibus_writereg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fv_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fv_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.fv_softc* @device_get_softc(i32 %10)
  store %struct.fv_softc* %11, %struct.fv_softc** %9, align 8
  %12 = call i32 @mtx_lock(i32* @miibus_mtx)
  %13 = load %struct.fv_softc*, %struct.fv_softc** %9, align 8
  %14 = load i32, i32* @MII_PREAMBLE, align 4
  %15 = call i32 @fv_miibus_writebits(%struct.fv_softc* %13, i32 %14, i32 32)
  %16 = load %struct.fv_softc*, %struct.fv_softc** %9, align 8
  %17 = load i32, i32* @MII_WRCMD, align 4
  %18 = call i32 @fv_miibus_writebits(%struct.fv_softc* %16, i32 %17, i32 4)
  %19 = load %struct.fv_softc*, %struct.fv_softc** %9, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @fv_miibus_writebits(%struct.fv_softc* %19, i32 %20, i32 5)
  %22 = load %struct.fv_softc*, %struct.fv_softc** %9, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @fv_miibus_writebits(%struct.fv_softc* %22, i32 %23, i32 5)
  %25 = load %struct.fv_softc*, %struct.fv_softc** %9, align 8
  %26 = load i32, i32* @MII_WRCMD, align 4
  %27 = call i32 @fv_miibus_turnaround(%struct.fv_softc* %25, i32 %26)
  %28 = load %struct.fv_softc*, %struct.fv_softc** %9, align 8
  %29 = load i32, i32* %8, align 4
  %30 = call i32 @fv_miibus_writebits(%struct.fv_softc* %28, i32 %29, i32 16)
  %31 = call i32 @mtx_unlock(i32* @miibus_mtx)
  ret i32 0
}

declare dso_local %struct.fv_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @fv_miibus_writebits(%struct.fv_softc*, i32, i32) #1

declare dso_local i32 @fv_miibus_turnaround(%struct.fv_softc*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
