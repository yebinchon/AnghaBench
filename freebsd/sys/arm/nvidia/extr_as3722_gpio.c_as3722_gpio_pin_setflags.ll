; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_gpio_pin_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_as3722_gpio.c_as3722_gpio_pin_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.as3722_softc = type { i64, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AS3722_GPIO_IOSF_SHIFT = common dso_local global i32 0, align 4
@AS3722_GPIO_IOSF_MASK = common dso_local global i32 0, align 4
@AS3722_IOSF_GPIO = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_MASK = common dso_local global i32 0, align 4
@AS3722_GPIO_MODE_SHIFT = common dso_local global i32 0, align 4
@AS3722_MODE_PUSH_PULL = common dso_local global i32 0, align 4
@AS3722_GPIO0_CONTROL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @as3722_gpio_pin_setflags(i32 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.as3722_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
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
  br label %90

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
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @AS3722_GPIO_IOSF_SHIFT, align 4
  %35 = ashr i32 %33, %34
  %36 = load i32, i32* @AS3722_GPIO_IOSF_MASK, align 4
  %37 = and i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @AS3722_IOSF_GPIO, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %22
  %42 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %43 = call i32 @GPIO_UNLOCK(%struct.as3722_softc* %42)
  %44 = load i32, i32* @ENXIO, align 4
  store i32 %44, i32* %4, align 4
  br label %90

45:                                               ; preds = %22
  %46 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* %7, align 8
  %49 = call i32 @as3722_gpio_get_mode(%struct.as3722_softc* %46, i64 %47, i64 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* @AS3722_GPIO_MODE_MASK, align 4
  %51 = load i32, i32* @AS3722_GPIO_MODE_SHIFT, align 4
  %52 = shl i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, %53
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* @AS3722_MODE_PUSH_PULL, align 4
  %57 = load i32, i32* @AS3722_GPIO_MODE_SHIFT, align 4
  %58 = shl i32 %56, %57
  %59 = load i32, i32* %9, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %63 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %64, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %61, %69
  br i1 %70, label %71, label %86

71:                                               ; preds = %45
  %72 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %73 = load i64, i64* @AS3722_GPIO0_CONTROL, align 8
  %74 = load i64, i64* %6, align 8
  %75 = add i64 %73, %74
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @WR1(%struct.as3722_softc* %72, i64 %75, i32 %76)
  store i32 %77, i32* %12, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %80 = getelementptr inbounds %struct.as3722_softc, %struct.as3722_softc* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %80, align 8
  %82 = load i64, i64* %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %81, i64 %82
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  store i32 %78, i32* %85, align 4
  br label %86

86:                                               ; preds = %71, %45
  %87 = load %struct.as3722_softc*, %struct.as3722_softc** %8, align 8
  %88 = call i32 @GPIO_UNLOCK(%struct.as3722_softc* %87)
  %89 = load i32, i32* %12, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %86, %41, %20
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.as3722_softc* @device_get_softc(i32) #1

declare dso_local i32 @GPIO_LOCK(%struct.as3722_softc*) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.as3722_softc*) #1

declare dso_local i32 @as3722_gpio_get_mode(%struct.as3722_softc*, i64, i64) #1

declare dso_local i32 @WR1(%struct.as3722_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
