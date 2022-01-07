; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_pic_map_gpio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_pic_map_gpio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_gpio_softc = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_INT_LVL_HIGH = common dso_local global i32 0, align 4
@GPIO_INT_LVL_EDGE = common dso_local global i32 0, align 4
@GPIO_INT_LVL_DELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_gpio_softc*, i64, i64, i64, i64*, i32*)* @tegra_gpio_pic_map_gpio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gpio_pic_map_gpio(%struct.tegra_gpio_softc* %0, i64 %1, i64 %2, i64 %3, i64* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra_gpio_softc*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.tegra_gpio_softc* %0, %struct.tegra_gpio_softc** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64* %4, i64** %12, align 8
  store i32* %5, i32** %13, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %8, align 8
  %17 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %7, align 4
  br label %48

22:                                               ; preds = %6
  %23 = load i64, i64* %11, align 8
  switch i64 %23, label %37 [
    i64 133, label %24
    i64 128, label %24
    i64 129, label %25
    i64 130, label %27
    i64 131, label %31
    i64 132, label %33
  ]

24:                                               ; preds = %22, %22
  store i32 0, i32* %14, align 4
  br label %39

25:                                               ; preds = %22
  %26 = load i32, i32* @GPIO_INT_LVL_HIGH, align 4
  store i32 %26, i32* %14, align 4
  br label %39

27:                                               ; preds = %22
  %28 = load i32, i32* @GPIO_INT_LVL_EDGE, align 4
  %29 = load i32, i32* @GPIO_INT_LVL_HIGH, align 4
  %30 = or i32 %28, %29
  store i32 %30, i32* %14, align 4
  br label %39

31:                                               ; preds = %22
  %32 = load i32, i32* @GPIO_INT_LVL_EDGE, align 4
  store i32 %32, i32* %14, align 4
  br label %39

33:                                               ; preds = %22
  %34 = load i32, i32* @GPIO_INT_LVL_EDGE, align 4
  %35 = load i32, i32* @GPIO_INT_LVL_DELTA, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %14, align 4
  br label %39

37:                                               ; preds = %22
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %7, align 4
  br label %48

39:                                               ; preds = %33, %31, %27, %25, %24
  %40 = load i64, i64* %9, align 8
  %41 = load i64*, i64** %12, align 8
  store i64 %40, i64* %41, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* %14, align 4
  %46 = load i32*, i32** %13, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %39
  store i32 0, i32* %7, align 4
  br label %48

48:                                               ; preds = %47, %37, %20
  %49 = load i32, i32* %7, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
