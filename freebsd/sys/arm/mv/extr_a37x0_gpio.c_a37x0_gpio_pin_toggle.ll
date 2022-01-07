; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_a37x0_gpio.c_a37x0_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_a37x0_gpio.c_a37x0_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a37x0_gpio_softc = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @a37x0_gpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a37x0_gpio_pin_toggle(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.a37x0_gpio_softc*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.a37x0_gpio_softc* @device_get_softc(i32 %8)
  store %struct.a37x0_gpio_softc* %9, %struct.a37x0_gpio_softc** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %6, align 8
  %12 = getelementptr inbounds %struct.a37x0_gpio_softc, %struct.a37x0_gpio_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sge i64 %10, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %3, align 4
  br label %43

17:                                               ; preds = %2
  %18 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @A37X0_GPIO_OUT_EN(i64 %19)
  %21 = call i64 @A37X0_GPIO_READ(%struct.a37x0_gpio_softc* %18, i32 %20)
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* %5, align 8
  %24 = call i64 @A37X0_GPIO_BIT(i64 %23)
  %25 = and i64 %22, %24
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %17
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %3, align 4
  br label %43

29:                                               ; preds = %17
  %30 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %6, align 8
  %31 = load i64, i64* %5, align 8
  %32 = call i32 @A37X0_GPIO_OUTPUT(i64 %31)
  %33 = call i64 @A37X0_GPIO_READ(%struct.a37x0_gpio_softc* %30, i32 %32)
  store i64 %33, i64* %7, align 8
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @A37X0_GPIO_BIT(i64 %34)
  %36 = load i64, i64* %7, align 8
  %37 = xor i64 %36, %35
  store i64 %37, i64* %7, align 8
  %38 = load %struct.a37x0_gpio_softc*, %struct.a37x0_gpio_softc** %6, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i32 @A37X0_GPIO_OUTPUT(i64 %39)
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @A37X0_GPIO_WRITE(%struct.a37x0_gpio_softc* %38, i32 %40, i64 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %29, %27, %15
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.a37x0_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @A37X0_GPIO_READ(%struct.a37x0_gpio_softc*, i32) #1

declare dso_local i32 @A37X0_GPIO_OUT_EN(i64) #1

declare dso_local i64 @A37X0_GPIO_BIT(i64) #1

declare dso_local i32 @A37X0_GPIO_OUTPUT(i64) #1

declare dso_local i32 @A37X0_GPIO_WRITE(%struct.a37x0_gpio_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
