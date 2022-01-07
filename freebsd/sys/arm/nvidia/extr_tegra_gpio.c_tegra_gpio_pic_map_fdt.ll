; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_pic_map_fdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_gpio.c_tegra_gpio_pic_map_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_INT_LVL_EDGE = common dso_local global i32 0, align 4
@GPIO_INT_LVL_HIGH = common dso_local global i32 0, align 4
@GPIO_INT_LVL_DELTA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_gpio_softc*, i32, i32*, i32*, i32*)* @tegra_gpio_pic_map_fdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_gpio_pic_map_fdt(%struct.tegra_gpio_softc* %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tegra_gpio_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.tegra_gpio_softc* %0, %struct.tegra_gpio_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 2
  br i1 %14, label %23, label %15

15:                                               ; preds = %5
  %16 = load i32*, i32** %9, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tegra_gpio_softc*, %struct.tegra_gpio_softc** %7, align 8
  %20 = getelementptr inbounds %struct.tegra_gpio_softc, %struct.tegra_gpio_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sge i32 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %15, %5
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %6, align 4
  br label %80

25:                                               ; preds = %15
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @GPIO_INT_LVL_EDGE, align 4
  %32 = load i32, i32* @GPIO_INT_LVL_HIGH, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %12, align 4
  br label %69

34:                                               ; preds = %25
  %35 = load i32*, i32** %9, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 2
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @GPIO_INT_LVL_EDGE, align 4
  store i32 %40, i32* %12, align 4
  br label %68

41:                                               ; preds = %34
  %42 = load i32*, i32** %9, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load i32, i32* @GPIO_INT_LVL_EDGE, align 4
  %48 = load i32, i32* @GPIO_INT_LVL_DELTA, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %12, align 4
  br label %67

50:                                               ; preds = %41
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %53, 4
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @GPIO_INT_LVL_HIGH, align 4
  store i32 %56, i32* %12, align 4
  br label %66

57:                                               ; preds = %50
  %58 = load i32*, i32** %9, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 8
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  store i32 0, i32* %12, align 4
  br label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @EINVAL, align 4
  store i32 %64, i32* %6, align 4
  br label %80

65:                                               ; preds = %62
  br label %66

66:                                               ; preds = %65, %55
  br label %67

67:                                               ; preds = %66, %46
  br label %68

68:                                               ; preds = %67, %39
  br label %69

69:                                               ; preds = %68, %30
  %70 = load i32*, i32** %9, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %10, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %79

76:                                               ; preds = %69
  %77 = load i32, i32* %12, align 4
  %78 = load i32*, i32** %11, align 8
  store i32 %77, i32* %78, align 4
  br label %79

79:                                               ; preds = %76, %69
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %63, %23
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
