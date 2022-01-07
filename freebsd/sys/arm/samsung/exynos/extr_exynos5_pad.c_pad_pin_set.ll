; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_pad.c_pad_pin_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_pad.c_pad_pin_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pad_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.gpio_bank = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @pad_pin_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pad_pin_set(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pad_softc*, align 8
  %9 = alloca %struct.gpio_bank, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.pad_softc* @device_get_softc(i32 %13)
  store %struct.pad_softc* %14, %struct.pad_softc** %8, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %34, %3
  %16 = load i32, i32* %12, align 4
  %17 = load %struct.pad_softc*, %struct.pad_softc** %8, align 8
  %18 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %15
  %22 = load %struct.pad_softc*, %struct.pad_softc** %8, align 8
  %23 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %37

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  br label %15

37:                                               ; preds = %32, %15
  %38 = load i32, i32* %12, align 4
  %39 = load %struct.pad_softc*, %struct.pad_softc** %8, align 8
  %40 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %4, align 4
  br label %87

45:                                               ; preds = %37
  %46 = load %struct.pad_softc*, %struct.pad_softc** %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i64 @get_bank(%struct.pad_softc* %46, i32 %47, %struct.gpio_bank* %9, i32* %10)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i32, i32* @EINVAL, align 4
  store i32 %51, i32* %4, align 4
  br label %87

52:                                               ; preds = %45
  %53 = load %struct.pad_softc*, %struct.pad_softc** %8, align 8
  %54 = call i32 @GPIO_LOCK(%struct.pad_softc* %53)
  %55 = load %struct.pad_softc*, %struct.pad_softc** %8, align 8
  %56 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %9, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %9, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 4
  %61 = call i32 @READ4(%struct.pad_softc* %55, i32 %57, i64 %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* @PIN_OUT, align 4
  %63 = load i32, i32* %10, align 4
  %64 = shl i32 %62, %63
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %11, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %52
  %71 = load i32, i32* @PIN_OUT, align 4
  %72 = load i32, i32* %10, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* %11, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %70, %52
  %77 = load %struct.pad_softc*, %struct.pad_softc** %8, align 8
  %78 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %9, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %9, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 4
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @WRITE4(%struct.pad_softc* %77, i32 %79, i64 %82, i32 %83)
  %85 = load %struct.pad_softc*, %struct.pad_softc** %8, align 8
  %86 = call i32 @GPIO_UNLOCK(%struct.pad_softc* %85)
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %76, %50, %43
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.pad_softc* @device_get_softc(i32) #1

declare dso_local i64 @get_bank(%struct.pad_softc*, i32, %struct.gpio_bank*, i32*) #1

declare dso_local i32 @GPIO_LOCK(%struct.pad_softc*) #1

declare dso_local i32 @READ4(%struct.pad_softc*, i32, i64) #1

declare dso_local i32 @WRITE4(%struct.pad_softc*, i32, i64, i32) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.pad_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
