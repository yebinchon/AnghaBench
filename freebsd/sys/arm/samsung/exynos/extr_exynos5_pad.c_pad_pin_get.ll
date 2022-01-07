; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_pad.c_pad_pin_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_pad.c_pad_pin_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_bank = type { i64, i32 }
%struct.pad_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32*)* @pad_pin_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pad_pin_get(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.gpio_bank, align 8
  %9 = alloca %struct.pad_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.pad_softc* @device_get_softc(i32 %12)
  store %struct.pad_softc* %13, %struct.pad_softc** %9, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %33, %3
  %15 = load i32, i32* %11, align 4
  %16 = load %struct.pad_softc*, %struct.pad_softc** %9, align 8
  %17 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %36

20:                                               ; preds = %14
  %21 = load %struct.pad_softc*, %struct.pad_softc** %9, align 8
  %22 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %36

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %11, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %11, align 4
  br label %14

36:                                               ; preds = %31, %14
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.pad_softc*, %struct.pad_softc** %9, align 8
  %39 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sge i32 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @EINVAL, align 4
  store i32 %43, i32* %4, align 4
  br label %72

44:                                               ; preds = %36
  %45 = load %struct.pad_softc*, %struct.pad_softc** %9, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i64 @get_bank(%struct.pad_softc* %45, i32 %46, %struct.gpio_bank* %8, i32* %10)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* @EINVAL, align 4
  store i32 %50, i32* %4, align 4
  br label %72

51:                                               ; preds = %44
  %52 = load %struct.pad_softc*, %struct.pad_softc** %9, align 8
  %53 = call i32 @GPIO_LOCK(%struct.pad_softc* %52)
  %54 = load %struct.pad_softc*, %struct.pad_softc** %9, align 8
  %55 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %8, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %8, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add nsw i64 %58, 4
  %60 = call i32 @READ4(%struct.pad_softc* %54, i32 %56, i64 %59)
  %61 = load i32, i32* %10, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32*, i32** %7, align 8
  store i32 1, i32* %66, align 4
  br label %69

67:                                               ; preds = %51
  %68 = load i32*, i32** %7, align 8
  store i32 0, i32* %68, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = load %struct.pad_softc*, %struct.pad_softc** %9, align 8
  %71 = call i32 @GPIO_UNLOCK(%struct.pad_softc* %70)
  store i32 0, i32* %4, align 4
  br label %72

72:                                               ; preds = %69, %49, %42
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local %struct.pad_softc* @device_get_softc(i32) #1

declare dso_local i64 @get_bank(%struct.pad_softc*, i32, %struct.gpio_bank*, i32*) #1

declare dso_local i32 @GPIO_LOCK(%struct.pad_softc*) #1

declare dso_local i32 @READ4(%struct.pad_softc*, i32, i64) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.pad_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
