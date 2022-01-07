; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_wdog.c_bcmwd_watchdog_fn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/broadcom/bcm2835/extr_bcm2835_wdog.c_bcmwd_watchdog_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmwd_softc = type { i32, i32 }

@WD_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Can't arm, timeout must be between 1-15 seconds\0A\00", align 1
@BCM2835_RSTC_REG = common dso_local global i32 0, align 4
@BCM2835_PASSWORD = common dso_local global i32 0, align 4
@BCM2835_PASSWORD_SHIFT = common dso_local global i32 0, align 4
@BCM2835_RSTC_RESET = common dso_local global i32 0, align 4
@BCM2835_WDOG_TIME_MASK = common dso_local global i32 0, align 4
@BCM2835_WDOG_REG = common dso_local global i32 0, align 4
@BCM2835_RSTC_WRCFG_CLR = common dso_local global i32 0, align 4
@BCM2835_RSTC_WRCFG_FULL_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*)* @bcmwd_watchdog_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmwd_watchdog_fn(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.bcmwd_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.bcmwd_softc*
  store %struct.bcmwd_softc* %12, %struct.bcmwd_softc** %7, align 8
  %13 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %7, align 8
  %14 = getelementptr inbounds %struct.bcmwd_softc, %struct.bcmwd_softc* %13, i32 0, i32 0
  %15 = call i32 @mtx_lock(i32* %14)
  %16 = load i32, i32* @WD_INTERVAL, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %81

21:                                               ; preds = %3
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @WD_INTERVAL, align 4
  %24 = and i32 %22, %23
  %25 = shl i32 1, %24
  %26 = sdiv i32 %25, 1000000000
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %8, align 4
  %31 = icmp sgt i32 %30, 15
  br i1 %31, label %32, label %48

32:                                               ; preds = %29, %21
  %33 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %7, align 8
  %34 = getelementptr inbounds %struct.bcmwd_softc, %struct.bcmwd_softc* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %7, align 8
  %38 = load i32, i32* @BCM2835_RSTC_REG, align 4
  %39 = load i32, i32* @BCM2835_PASSWORD, align 4
  %40 = load i32, i32* @BCM2835_PASSWORD_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @BCM2835_RSTC_RESET, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @WRITE(%struct.bcmwd_softc* %37, i32 %38, i32 %43)
  %45 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %7, align 8
  %46 = getelementptr inbounds %struct.bcmwd_softc, %struct.bcmwd_softc* %45, i32 0, i32 0
  %47 = call i32 @mtx_unlock(i32* %46)
  br label %94

48:                                               ; preds = %29
  %49 = load i32, i32* %8, align 4
  %50 = shl i32 %49, 16
  %51 = load i32, i32* @BCM2835_WDOG_TIME_MASK, align 4
  %52 = and i32 %50, %51
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* @BCM2835_PASSWORD, align 4
  %54 = load i32, i32* @BCM2835_PASSWORD_SHIFT, align 4
  %55 = shl i32 %53, %54
  %56 = load i32, i32* %9, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %10, align 4
  %58 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %7, align 8
  %59 = load i32, i32* @BCM2835_WDOG_REG, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i32 @WRITE(%struct.bcmwd_softc* %58, i32 %59, i32 %60)
  %62 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %7, align 8
  %63 = load i32, i32* @BCM2835_RSTC_REG, align 4
  %64 = call i32 @READ(%struct.bcmwd_softc* %62, i32 %63)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* @BCM2835_RSTC_WRCFG_CLR, align 4
  %66 = load i32, i32* %10, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* @BCM2835_RSTC_WRCFG_FULL_RESET, align 4
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* @BCM2835_PASSWORD, align 4
  %72 = load i32, i32* @BCM2835_PASSWORD_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %7, align 8
  %77 = load i32, i32* @BCM2835_RSTC_REG, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @WRITE(%struct.bcmwd_softc* %76, i32 %77, i32 %78)
  %80 = load i32*, i32** %6, align 8
  store i32 0, i32* %80, align 4
  br label %90

81:                                               ; preds = %3
  %82 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %7, align 8
  %83 = load i32, i32* @BCM2835_RSTC_REG, align 4
  %84 = load i32, i32* @BCM2835_PASSWORD, align 4
  %85 = load i32, i32* @BCM2835_PASSWORD_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* @BCM2835_RSTC_RESET, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @WRITE(%struct.bcmwd_softc* %82, i32 %83, i32 %88)
  br label %90

90:                                               ; preds = %81, %48
  %91 = load %struct.bcmwd_softc*, %struct.bcmwd_softc** %7, align 8
  %92 = getelementptr inbounds %struct.bcmwd_softc, %struct.bcmwd_softc* %91, i32 0, i32 0
  %93 = call i32 @mtx_unlock(i32* %92)
  br label %94

94:                                               ; preds = %90, %32
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @WRITE(%struct.bcmwd_softc*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @READ(%struct.bcmwd_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
