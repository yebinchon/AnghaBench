; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_snvs.c_snvs_settime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_snvs.c_snvs_settime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.snvs_softc = type { i32 }

@SBT_LSB = common dso_local global i32 0, align 4
@SNVS_LPSRTCMR = common dso_local global i32 0, align 4
@SNVS_LPSRTCLR = common dso_local global i32 0, align 4
@CLOCK_DBG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @snvs_settime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snvs_settime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca %struct.snvs_softc*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timespec* %1, %struct.timespec** %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.snvs_softc* @device_get_softc(i32 %7)
  store %struct.snvs_softc* %8, %struct.snvs_softc** %5, align 8
  %9 = load %struct.timespec*, %struct.timespec** %4, align 8
  %10 = getelementptr inbounds %struct.timespec, %struct.timespec* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @tstosbt(i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @SBT_LSB, align 4
  %14 = shl i32 2, %13
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %6, align 4
  %17 = load %struct.snvs_softc*, %struct.snvs_softc** %5, align 8
  %18 = call i32 @snvs_rtc_enable(%struct.snvs_softc* %17, i32 0)
  %19 = load %struct.snvs_softc*, %struct.snvs_softc** %5, align 8
  %20 = load i32, i32* @SNVS_LPSRTCMR, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @SBT_LSB, align 4
  %23 = add nsw i32 %22, 32
  %24 = ashr i32 %21, %23
  %25 = call i32 @WR4(%struct.snvs_softc* %19, i32 %20, i32 %24)
  %26 = load %struct.snvs_softc*, %struct.snvs_softc** %5, align 8
  %27 = load i32, i32* @SNVS_LPSRTCLR, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @SBT_LSB, align 4
  %30 = ashr i32 %28, %29
  %31 = call i32 @WR4(%struct.snvs_softc* %26, i32 %27, i32 %30)
  %32 = load %struct.snvs_softc*, %struct.snvs_softc** %5, align 8
  %33 = call i32 @snvs_rtc_enable(%struct.snvs_softc* %32, i32 1)
  %34 = load %struct.snvs_softc*, %struct.snvs_softc** %5, align 8
  %35 = getelementptr inbounds %struct.snvs_softc, %struct.snvs_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @CLOCK_DBG_WRITE, align 4
  %38 = load %struct.timespec*, %struct.timespec** %4, align 8
  %39 = call i32 @clock_dbgprint_ts(i32 %36, i32 %37, %struct.timespec* %38)
  ret i32 0
}

declare dso_local %struct.snvs_softc* @device_get_softc(i32) #1

declare dso_local i32 @tstosbt(i32) #1

declare dso_local i32 @snvs_rtc_enable(%struct.snvs_softc*, i32) #1

declare dso_local i32 @WR4(%struct.snvs_softc*, i32, i32) #1

declare dso_local i32 @clock_dbgprint_ts(i32, i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
