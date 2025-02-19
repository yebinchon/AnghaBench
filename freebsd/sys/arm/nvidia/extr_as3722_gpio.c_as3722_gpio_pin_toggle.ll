; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_gpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_gpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AS3722_GPIO_SIGNAL_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @as3722_gpio_pin_toggle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.as3722_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.as3722_softc* @device_get_softc(i32 %9)
  store %struct.as3722_softc* %10, %struct.as3722_softc** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.as3722_softc*, %struct.as3722_softc** %6, align 8
  %13 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp sge i32 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %43

18:                                               ; preds = %2
  %19 = load %struct.as3722_softc*, %struct.as3722_softc** %6, align 8
  %20 = call i32 @GPIO_LOCK(%struct.as3722_softc* %19)
  %21 = load %struct.as3722_softc*, %struct.as3722_softc** %6, align 8
  %22 = load i32, i32* @AS3722_GPIO_SIGNAL_OUT, align 4
  %23 = call i32 @RD1(%struct.as3722_softc* %21, i32 %22, i32* %7)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %18
  %27 = load %struct.as3722_softc*, %struct.as3722_softc** %6, align 8
  %28 = call i32 @GPIO_UNLOCK(%struct.as3722_softc* %27)
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %43

30:                                               ; preds = %18
  %31 = load i32, i32* %5, align 4
  %32 = shl i32 1, %31
  %33 = load i32, i32* %7, align 4
  %34 = xor i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.as3722_softc*, %struct.as3722_softc** %6, align 8
  %36 = load i32, i32* @AS3722_GPIO_SIGNAL_OUT, align 4
  %37 = load i32, i32* %5, align 4
  %38 = shl i32 1, %37
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @RM1(%struct.as3722_softc* %35, i32 %36, i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.as3722_softc*, %struct.as3722_softc** %6, align 8
  %42 = call i32 @GPIO_UNLOCK(%struct.as3722_softc* %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %30, %26, %16
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.as3722_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.as3722_softc*) #1

declare dso_local i32 @RD1(%struct.as3722_softc*, i32, i32*) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.as3722_softc*) #1

declare dso_local i32 @RM1(%struct.as3722_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
