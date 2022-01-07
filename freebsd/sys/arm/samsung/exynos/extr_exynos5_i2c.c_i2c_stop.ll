; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_i2c.c_i2c_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_i2c.c_i2c_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_softc = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"i2c stop\0A\00", align 1
@I2CSTAT = common dso_local global i32 0, align 4
@I2CMODE_S = common dso_local global i32 0, align 4
@I2CMODE_M = common dso_local global i32 0, align 4
@RXTX_EN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"cant i2c stop: nibb error\0A\00", align 1
@IIC_NOERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @i2c_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.i2c_softc* @device_get_softc(i32 %8)
  store %struct.i2c_softc* %9, %struct.i2c_softc** %4, align 8
  %10 = call i32 @DPRINTF(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %11, i32 0, i32 0
  %13 = call i32 @mtx_lock(i32* %12)
  %14 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %15 = load i32, i32* @I2CSTAT, align 4
  %16 = call i32 @READ1(%struct.i2c_softc* %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @I2CMODE_S, align 4
  %19 = ashr i32 %17, %18
  %20 = load i32, i32* @I2CMODE_M, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @RXTX_EN, align 4
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @I2CMODE_S, align 4
  %25 = shl i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %29 = load i32, i32* @I2CSTAT, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @WRITE1(%struct.i2c_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %33 = call i32 @clear_ipend(%struct.i2c_softc* %32)
  %34 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %35 = call i32 @wait_for_nibb(%struct.i2c_softc* %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %1
  %39 = call i32 @DPRINTF(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %6, align 4
  store i32 %40, i32* %2, align 4
  br label %46

41:                                               ; preds = %1
  %42 = load %struct.i2c_softc*, %struct.i2c_softc** %4, align 8
  %43 = getelementptr inbounds %struct.i2c_softc, %struct.i2c_softc* %42, i32 0, i32 0
  %44 = call i32 @mtx_unlock(i32* %43)
  %45 = load i32, i32* @IIC_NOERR, align 4
  store i32 %45, i32* %2, align 4
  br label %46

46:                                               ; preds = %41, %38
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.i2c_softc* @device_get_softc(i32) #1

declare dso_local i32 @DPRINTF(i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @READ1(%struct.i2c_softc*, i32) #1

declare dso_local i32 @WRITE1(%struct.i2c_softc*, i32, i32) #1

declare dso_local i32 @clear_ipend(%struct.i2c_softc*) #1

declare dso_local i32 @wait_for_nibb(%struct.i2c_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
