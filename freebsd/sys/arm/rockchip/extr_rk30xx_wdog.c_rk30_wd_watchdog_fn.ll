; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_wdog.c_rk30_wd_watchdog_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_wdog.c_rk30_wd_watchdog_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk30_wd_softc = type { i32, i32, i32 }

@WD_INTERVAL = common dso_local global i32 0, align 4
@WDOG_TORR = common dso_local global i32 0, align 4
@WDOG_TORR_INTVL_SHIFT = common dso_local global i32 0, align 4
@WDOG_CTRL = common dso_local global i32 0, align 4
@WDOG_CTRL_EN = common dso_local global i32 0, align 4
@WDOG_CTRL_RSP_MODE = common dso_local global i32 0, align 4
@WDOG_CTRL_RST_PULSE = common dso_local global i32 0, align 4
@WDOG_CRR = common dso_local global i32 0, align 4
@WDOG_CRR_PWD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Can not be disabled\0A\00", align 1
@WDOG_CTRL_RST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*)* @rk30_wd_watchdog_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk30_wd_watchdog_fn(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rk30_wd_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.rk30_wd_softc*
  store %struct.rk30_wd_softc* %13, %struct.rk30_wd_softc** %7, align 8
  %14 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %7, align 8
  %15 = getelementptr inbounds %struct.rk30_wd_softc, %struct.rk30_wd_softc* %14, i32 0, i32 1
  %16 = call i32 @mtx_lock(i32* %15)
  %17 = load i32, i32* @WD_INTERVAL, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %89

22:                                               ; preds = %3
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @WD_INTERVAL, align 4
  %25 = and i32 %23, %24
  %26 = shl i32 1, %25
  %27 = sdiv i32 %26, 1000000
  store i32 %27, i32* %8, align 4
  %28 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %7, align 8
  %29 = getelementptr inbounds %struct.rk30_wd_softc, %struct.rk30_wd_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sdiv i32 65535, %30
  store i32 %31, i32* %9, align 4
  %32 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %7, align 8
  %33 = getelementptr inbounds %struct.rk30_wd_softc, %struct.rk30_wd_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 2147483647, %34
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %47, %22
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = icmp slt i32 %42, %43
  br label %45

45:                                               ; preds = %41, %37
  %46 = phi i1 [ false, %37 ], [ %44, %41 ]
  br i1 %46, label %47, label %52

47:                                               ; preds = %45
  %48 = load i32, i32* %9, align 4
  %49 = shl i32 %48, 1
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %11, align 4
  br label %37

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %76

56:                                               ; preds = %52
  %57 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %7, align 8
  %58 = load i32, i32* @WDOG_TORR, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @WDOG_TORR_INTVL_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = call i32 @RK30_WDT_WRITE(%struct.rk30_wd_softc* %57, i32 %58, i32 %61)
  %63 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %7, align 8
  %64 = load i32, i32* @WDOG_CTRL, align 4
  %65 = load i32, i32* @WDOG_CTRL_EN, align 4
  %66 = load i32, i32* @WDOG_CTRL_RSP_MODE, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @WDOG_CTRL_RST_PULSE, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @RK30_WDT_WRITE(%struct.rk30_wd_softc* %63, i32 %64, i32 %69)
  %71 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %7, align 8
  %72 = load i32, i32* @WDOG_CRR, align 4
  %73 = load i32, i32* @WDOG_CRR_PWD, align 4
  %74 = call i32 @RK30_WDT_WRITE(%struct.rk30_wd_softc* %71, i32 %72, i32 %73)
  %75 = load i32*, i32** %6, align 8
  store i32 0, i32* %75, align 4
  br label %88

76:                                               ; preds = %52
  %77 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %7, align 8
  %78 = getelementptr inbounds %struct.rk30_wd_softc, %struct.rk30_wd_softc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @device_printf(i32 %79, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %7, align 8
  %82 = getelementptr inbounds %struct.rk30_wd_softc, %struct.rk30_wd_softc* %81, i32 0, i32 1
  %83 = call i32 @mtx_unlock(i32* %82)
  %84 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %7, align 8
  %85 = load i32, i32* @WDOG_CTRL, align 4
  %86 = load i32, i32* @WDOG_CTRL_RST, align 4
  %87 = call i32 @RK30_WDT_WRITE(%struct.rk30_wd_softc* %84, i32 %85, i32 %86)
  br label %98

88:                                               ; preds = %56
  br label %94

89:                                               ; preds = %3
  %90 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %7, align 8
  %91 = load i32, i32* @WDOG_CTRL, align 4
  %92 = load i32, i32* @WDOG_CTRL_RST, align 4
  %93 = call i32 @RK30_WDT_WRITE(%struct.rk30_wd_softc* %90, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %89, %88
  %95 = load %struct.rk30_wd_softc*, %struct.rk30_wd_softc** %7, align 8
  %96 = getelementptr inbounds %struct.rk30_wd_softc, %struct.rk30_wd_softc* %95, i32 0, i32 1
  %97 = call i32 @mtx_unlock(i32* %96)
  br label %98

98:                                               ; preds = %94, %76
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @RK30_WDT_WRITE(%struct.rk30_wd_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
