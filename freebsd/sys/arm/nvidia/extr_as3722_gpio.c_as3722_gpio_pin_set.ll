; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_gpio_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_gpio_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AS3722_GPIO_INVERT = common dso_local global i32 0, align 4
@AS3722_GPIO_SIGNAL_OUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @as3722_gpio_pin_set(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.as3722_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.as3722_softc* @device_get_softc(i32 %11)
  store %struct.as3722_softc* %12, %struct.as3722_softc** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %15 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %4, align 4
  br label %55

20:                                               ; preds = %3
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  store i32 %24, i32* %9, align 4
  %25 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %26 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @AS3722_GPIO_INVERT, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load i32, i32* %9, align 4
  %38 = xor i32 %37, 1
  store i32 %38, i32* %9, align 4
  br label %39

39:                                               ; preds = %36, %20
  %40 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %41 = call i32 @GPIO_LOCK(%struct.as3722_softc* %40)
  %42 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %43 = load i32, i32* @AS3722_GPIO_SIGNAL_OUT, align 4
  %44 = load i64, i64* %6, align 8
  %45 = trunc i64 %44 to i32
  %46 = shl i32 1, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i64, i64* %6, align 8
  %49 = trunc i64 %48 to i32
  %50 = shl i32 %47, %49
  %51 = call i32 @RM1(%struct.as3722_softc* %42, i32 %43, i32 %46, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %53 = call i32 @GPIO_UNLOCK(%struct.as3722_softc* %52)
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %39, %18
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local %struct.as3722_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.as3722_softc*) #1

declare dso_local i32 @RM1(%struct.as3722_softc*, i32, i32, i32) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.as3722_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
