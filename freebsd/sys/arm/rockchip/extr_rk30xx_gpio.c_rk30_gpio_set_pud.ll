; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_gpio.c_rk30_gpio_set_pud.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_gpio.c_rk30_gpio_set_pud.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk30_gpio_softc = type { i64 }

@RK30_GPIO_PULLUP = common dso_local global i32 0, align 4
@RK30_GPIO_PULLDOWN = common dso_local global i32 0, align 4
@RK30_GPIO_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rk30_gpio_softc*, i32, i32)* @rk30_gpio_set_pud to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rk30_gpio_set_pud(%struct.rk30_gpio_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rk30_gpio_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rk30_gpio_softc* %0, %struct.rk30_gpio_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %9 = call i32 @RK30_GPIO_LOCK_ASSERT(%struct.rk30_gpio_softc* %8)
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %15 [
    i32 128, label %11
    i32 129, label %13
  ]

11:                                               ; preds = %3
  %12 = load i32, i32* @RK30_GPIO_PULLUP, align 4
  store i32 %12, i32* %7, align 4
  br label %17

13:                                               ; preds = %3
  %14 = load i32, i32* @RK30_GPIO_PULLDOWN, align 4
  store i32 %14, i32* %7, align 4
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @RK30_GPIO_NONE, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %15, %13, %11
  %18 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %19 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 12
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @rk30_pmu_gpio_pud(i32 %26, i32 %27)
  br label %36

29:                                               ; preds = %22, %17
  %30 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %4, align 8
  %31 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @rk30_grf_gpio_pud(i64 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %29, %25
  ret void
}

declare dso_local i32 @RK30_GPIO_LOCK_ASSERT(%struct.rk30_gpio_softc*) #1

declare dso_local i32 @rk30_pmu_gpio_pud(i32, i32) #1

declare dso_local i32 @rk30_grf_gpio_pud(i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
