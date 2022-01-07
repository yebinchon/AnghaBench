; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_gpio_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_gpio_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_SHIFT = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_MASK = common dso_local global i32 0, align 4
@AS3722_MODE_PUSH_PULL = common dso_local global i32 0, align 4
@AS3722_MODE_PUSH_PULL_LV = common dso_local global i32 0, align 4
@AS3722_GPIO_SIGNAL_OUT = common dso_local global i32 0, align 4
@AS3722_GPIO_SIGNAL_IN = common dso_local global i32 0, align 4
@AS3722_GPIO_INVERT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @as3722_gpio_pin_get(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.as3722_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.as3722_softc* @device_get_softc(i32 %13)
  store %struct.as3722_softc* %14, %struct.as3722_softc** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %17 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %15, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %4, align 4
  br label %80

22:                                               ; preds = %3
  %23 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %24 = call i32 @GPIO_LOCK(%struct.as3722_softc* %23)
  %25 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %26 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %27, i64 %28
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @AS3722_GPIO_MODE_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = load i32, i32* @AS3722_GPIO_MODE_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @AS3722_MODE_PUSH_PULL, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %22
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @AS3722_MODE_PUSH_PULL_LV, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %22
  %46 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %47 = load i32, i32* @AS3722_GPIO_SIGNAL_OUT, align 4
  %48 = call i32 @RD1(%struct.as3722_softc* %46, i32 %47, i32* %9)
  store i32 %48, i32* %12, align 4
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %51 = load i32, i32* @AS3722_GPIO_SIGNAL_IN, align 4
  %52 = call i32 @RD1(%struct.as3722_softc* %50, i32 %51, i32* %9)
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %49, %45
  %54 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %55 = call i32 @GPIO_UNLOCK(%struct.as3722_softc* %54)
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %4, align 4
  br label %80

60:                                               ; preds = %53
  %61 = load i32, i32* %9, align 4
  %62 = load i64, i64* %6, align 8
  %63 = trunc i64 %62 to i32
  %64 = shl i32 1, %63
  %65 = and i32 %61, %64
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i32 1, i32 0
  %69 = sext i32 %68 to i64
  %70 = load i64*, i64** %7, align 8
  store i64 %69, i64* %70, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @AS3722_GPIO_INVERT, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %60
  %76 = load i64*, i64** %7, align 8
  %77 = load i64, i64* %76, align 8
  %78 = xor i64 %77, 1
  store i64 %78, i64* %76, align 8
  br label %79

79:                                               ; preds = %75, %60
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %58, %20
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.as3722_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.as3722_softc*) #1

declare dso_local i32 @RD1(%struct.as3722_softc*, i32, i32*) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.as3722_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
