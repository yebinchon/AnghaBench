; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_i2c.c_rk_i2c_get_clkdiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_i2c.c_rk_i2c_get_clkdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk_i2c_softc = type { i32 }

@RK_I2C_CLKDIV_MUL = common dso_local global i32 0, align 4
@RK_I2C_CLKDIVL_MASK = common dso_local global i32 0, align 4
@RK_I2C_CLKDIVH_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rk_i2c_softc*, i32)* @rk_i2c_get_clkdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_i2c_get_clkdiv(%struct.rk_i2c_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rk_i2c_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rk_i2c_softc* %0, %struct.rk_i2c_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rk_i2c_softc*, %struct.rk_i2c_softc** %4, align 8
  %10 = getelementptr inbounds %struct.rk_i2c_softc, %struct.rk_i2c_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @clk_get_freq(i32 %11, i32* %6)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %34

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %5, align 4
  %20 = sdiv i32 %18, %19
  %21 = load i32, i32* @RK_I2C_CLKDIV_MUL, align 4
  %22 = sdiv i32 %20, %21
  %23 = sdiv i32 %22, 2
  %24 = sub nsw i32 %23, 1
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* @RK_I2C_CLKDIVL_MASK, align 4
  %26 = load i32, i32* %7, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @RK_I2C_CLKDIVH_SHIFT, align 4
  %30 = shl i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = or i32 %30, %31
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %17, %15
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @clk_get_freq(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
