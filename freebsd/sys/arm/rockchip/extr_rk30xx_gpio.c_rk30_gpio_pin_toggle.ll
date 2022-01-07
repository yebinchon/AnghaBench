; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_gpio.c_rk30_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/rockchip/extr_rk30xx_gpio.c_rk30_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rk30_gpio_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@RK30_GPIO_SWPORT_DR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @rk30_gpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk30_gpio_pin_toggle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.rk30_gpio_softc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.rk30_gpio_softc* @device_get_softc(i32 %9)
  store %struct.rk30_gpio_softc* %10, %struct.rk30_gpio_softc** %7, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %30, %2
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %7, align 8
  %14 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %11
  %18 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %7, align 8
  %19 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %33

29:                                               ; preds = %17
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %6, align 4
  br label %11

33:                                               ; preds = %28, %11
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %7, align 8
  %36 = getelementptr inbounds %struct.rk30_gpio_softc, %struct.rk30_gpio_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp sge i32 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %70

41:                                               ; preds = %33
  %42 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %7, align 8
  %43 = call i32 @RK30_GPIO_LOCK(%struct.rk30_gpio_softc* %42)
  %44 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %7, align 8
  %45 = load i32, i32* @RK30_GPIO_SWPORT_DR, align 4
  %46 = call i32 @RK30_GPIO_READ(%struct.rk30_gpio_softc* %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %5, align 4
  %49 = shl i32 1, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %41
  %53 = load i32, i32* %5, align 4
  %54 = shl i32 1, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %63

58:                                               ; preds = %41
  %59 = load i32, i32* %5, align 4
  %60 = shl i32 1, %59
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %58, %52
  %64 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %7, align 8
  %65 = load i32, i32* @RK30_GPIO_SWPORT_DR, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @RK30_GPIO_WRITE(%struct.rk30_gpio_softc* %64, i32 %65, i32 %66)
  %68 = load %struct.rk30_gpio_softc*, %struct.rk30_gpio_softc** %7, align 8
  %69 = call i32 @RK30_GPIO_UNLOCK(%struct.rk30_gpio_softc* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %63, %39
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local %struct.rk30_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @RK30_GPIO_LOCK(%struct.rk30_gpio_softc*) #1

declare dso_local i32 @RK30_GPIO_READ(%struct.rk30_gpio_softc*, i32) #1

declare dso_local i32 @RK30_GPIO_WRITE(%struct.rk30_gpio_softc*, i32, i32) #1

declare dso_local i32 @RK30_GPIO_UNLOCK(%struct.rk30_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
