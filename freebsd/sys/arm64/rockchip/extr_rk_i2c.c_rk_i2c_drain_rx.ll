; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_i2c.c_rk_i2c_drain_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_i2c.c_rk_i2c_drain_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_i2c_softc = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [20 x i8] c"No current iic msg\0A\00", align 1
@RK_I2C_RXDATA_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk_i2c_softc*)* @rk_i2c_drain_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk_i2c_drain_rx(%struct.rk_i2c_softc* %0) #0 {
  %2 = alloca %struct.rk_i2c_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rk_i2c_softc* %0, %struct.rk_i2c_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %8 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = icmp eq %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %13 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @device_printf(i32 %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %69

16:                                               ; preds = %1
  %17 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %18 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %23 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sub nsw i32 %21, %24
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp sgt i32 %26, 32
  br i1 %27, label %28, label %29

28:                                               ; preds = %16
  store i32 32, i32* %5, align 4
  br label %29

29:                                               ; preds = %28, %16
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %66, %29
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %69

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = srem i32 %35, 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %34
  %39 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %40 = load i64, i64* @RK_I2C_RXDATA_BASE, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sdiv i32 %41, 4
  %43 = mul nsw i32 %42, 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  %46 = call i32 @RK_I2C_READ(%struct.rk_i2c_softc* %39, i64 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %38, %34
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %6, align 4
  %50 = srem i32 %49, 4
  %51 = mul nsw i32 %50, 8
  %52 = ashr i32 %48, %51
  %53 = and i32 %52, 255
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %56 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %2, align 8
  %61 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 8
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  store i32 %54, i32* %65, align 4
  br label %66

66:                                               ; preds = %47
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %30

69:                                               ; preds = %11, %30
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @RK_I2C_READ(%struct.rk_i2c_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
