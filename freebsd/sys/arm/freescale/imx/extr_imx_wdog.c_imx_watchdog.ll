; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_wdog.c_imx_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx_wdog.c_imx_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_wdog_softc = type { i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Can not be disabled.\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@WD_INTERVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64, i32*)* @imx_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_watchdog(i8* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.imx_wdog_softc*, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.imx_wdog_softc*
  store %struct.imx_wdog_softc* %10, %struct.imx_wdog_softc** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %3
  %14 = load i64, i64* @bootverbose, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %7, align 8
  %18 = getelementptr inbounds %struct.imx_wdog_softc, %struct.imx_wdog_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %16, %13
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  br label %37

24:                                               ; preds = %3
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @WD_INTERVAL, align 8
  %27 = and i64 %25, %26
  %28 = shl i64 1, %27
  %29 = udiv i64 %28, 1000000000
  store i64 %29, i64* %8, align 8
  %30 = load %struct.imx_wdog_softc*, %struct.imx_wdog_softc** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i64 @imx_wdog_enable(%struct.imx_wdog_softc* %30, i64 %31)
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %24
  %35 = load i32*, i32** %6, align 8
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %34, %24
  br label %37

37:                                               ; preds = %36, %21
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @imx_wdog_enable(%struct.imx_wdog_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
