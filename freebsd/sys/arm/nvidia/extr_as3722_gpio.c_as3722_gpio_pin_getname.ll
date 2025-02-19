; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_gpio_pin_getname.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_gpio_pin_getname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIOMAXNAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @as3722_gpio_pin_getname(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.as3722_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.as3722_softc* @device_get_softc(i32 %9)
  store %struct.as3722_softc* %10, %struct.as3722_softc** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %13 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp uge i64 %11, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %4, align 4
  br label %34

18:                                               ; preds = %3
  %19 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %20 = call i32 @GPIO_LOCK(%struct.as3722_softc* %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %23 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %24, i64 %25
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @GPIOMAXNAME, align 4
  %31 = call i32 @memcpy(i8* %21, i32 %29, i32 %30)
  %32 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %33 = call i32 @GPIO_UNLOCK(%struct.as3722_softc* %32)
  store i32 0, i32* %4, align 4
  br label %34

34:                                               ; preds = %18, %16
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.as3722_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.as3722_softc*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.as3722_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
