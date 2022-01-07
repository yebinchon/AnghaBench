; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_a37x0_gpio.c_a37x0_gpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_a37x0_gpio.c_a37x0_gpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a37x0_gpio_softc = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i32*)* @a37x0_gpio_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a37x0_gpio_pin_get(i32 %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.a37x0_gpio_softc*, align 8
  %9 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.a37x0_gpio_softc* @device_get_softc(i32 %10)
  store %struct.a37x0_gpio_softc* %11, %struct.a37x0_gpio_softc** %8, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %8, align 8
  %14 = getelementptr inbounds %struct.a37x0_gpio_softc, %struct.a37x0_gpio_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sge i64 %12, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %48

19:                                               ; preds = %3
  %20 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %8, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @A37X0_GPIO_OUT_EN(i64 %21)
  %23 = call i64 @A37X0_GPIO_READ(%struct.a37x0_gpio_softc* %20, i32 %22)
  store i64 %23, i64* %9, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* %6, align 8
  %26 = call i64 @A37X0_GPIO_BIT(i64 %25)
  %27 = and i64 %24, %26
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %19
  %30 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %8, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @A37X0_GPIO_OUTPUT(i64 %31)
  %33 = call i64 @A37X0_GPIO_READ(%struct.a37x0_gpio_softc* %30, i32 %32)
  store i64 %33, i64* %9, align 8
  br label %39

34:                                               ; preds = %19
  %35 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %8, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @A37X0_GPIO_INPUT(i64 %36)
  %38 = call i64 @A37X0_GPIO_READ(%struct.a37x0_gpio_softc* %35, i32 %37)
  store i64 %38, i64* %9, align 8
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @A37X0_GPIO_BIT(i64 %41)
  %43 = and i64 %40, %42
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 1, i32 0
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %39, %17
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.a37x0_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @A37X0_GPIO_READ(%struct.a37x0_gpio_softc*, i32) #1

declare dso_local i32 @A37X0_GPIO_OUT_EN(i64) #1

declare dso_local i64 @A37X0_GPIO_BIT(i64) #1

declare dso_local i32 @A37X0_GPIO_OUTPUT(i64) #1

declare dso_local i32 @A37X0_GPIO_INPUT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
