; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_gpio.c_rk30_gpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_gpio.c_rk30_gpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk30_gpio_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RK30_GPIO_EXT_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @rk30_gpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk30_gpio_pin_get(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rk30_gpio_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.rk30_gpio_softc* @device_get_softc(i32 %11)
  store %struct.rk30_gpio_softc* %12, %struct.rk30_gpio_softc** %9, align 8
  store i32 0, i32* %8, align 4
  br label %13

13:                                               ; preds = %32, %3
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %9, align 8
  %16 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %9, align 8
  %21 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %35

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %8, align 4
  br label %13

35:                                               ; preds = %30, %13
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %9, align 8
  %38 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %4, align 4
  br label %59

43:                                               ; preds = %35
  %44 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %9, align 8
  %45 = call i32 @RK30_GPIO_LOCK(%struct.rk30_gpio_softc* %44)
  %46 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %9, align 8
  %47 = load i32, i32* @RK30_GPIO_EXT_PORT, align 4
  %48 = call i32 @RK30_GPIO_READ(%struct.rk30_gpio_softc* %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %9, align 8
  %50 = call i32 @RK30_GPIO_UNLOCK(%struct.rk30_gpio_softc* %49)
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %6, align 4
  %53 = shl i32 1, %52
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  %56 = zext i1 %55 to i64
  %57 = select i1 %55, i32 1, i32 0
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %43, %41
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local %struct.rk30_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @RK30_GPIO_LOCK(%struct.rk30_gpio_softc*) #1

declare dso_local i32 @RK30_GPIO_READ(%struct.rk30_gpio_softc*, i32) #1

declare dso_local i32 @RK30_GPIO_UNLOCK(%struct.rk30_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
