; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_pad.c_pad_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_pad.c_pad_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_bank = type { i64, i32 }
%struct.pad_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @pad_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pad_pin_toggle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.gpio_bank, align 8
  %7 = alloca %struct.pad_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.pad_softc* @device_get_softc(i32 %11)
  store %struct.pad_softc* %12, %struct.pad_softc** %7, align 8
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %32, %2
  %14 = load i32, i32* %10, align 4
  %15 = load %struct.pad_softc*, %struct.pad_softc** %7, align 8
  %16 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %13
  %20 = load %struct.pad_softc*, %struct.pad_softc** %7, align 8
  %21 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i32, i32* %10, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %35

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %10, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %10, align 4
  br label %13

35:                                               ; preds = %30, %13
  %36 = load i32, i32* %10, align 4
  %37 = load %struct.pad_softc*, %struct.pad_softc** %7, align 8
  %38 = getelementptr inbounds %struct.pad_softc, %struct.pad_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %3, align 4
  br label %87

43:                                               ; preds = %35
  %44 = load %struct.pad_softc*, %struct.pad_softc** %7, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @get_bank(%struct.pad_softc* %44, i32 %45, %struct.gpio_bank* %6, i32* %8)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %3, align 4
  br label %87

50:                                               ; preds = %43
  %51 = load %struct.pad_softc*, %struct.pad_softc** %7, align 8
  %52 = call i32 @GPIO_LOCK(%struct.pad_softc* %51)
  %53 = load %struct.pad_softc*, %struct.pad_softc** %7, align 8
  %54 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %6, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %6, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 4
  %59 = call i32 @READ4(%struct.pad_softc* %53, i32 %55, i64 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %50
  %66 = load i32, i32* %8, align 4
  %67 = shl i32 1, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %9, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %9, align 4
  br label %76

71:                                               ; preds = %50
  %72 = load i32, i32* %8, align 4
  %73 = shl i32 1, %72
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %71, %65
  %77 = load %struct.pad_softc*, %struct.pad_softc** %7, align 8
  %78 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %6, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %6, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @WRITE4(%struct.pad_softc* %77, i32 %79, i64 %82, i32 %83)
  %85 = load %struct.pad_softc*, %struct.pad_softc** %7, align 8
  %86 = call i32 @GPIO_UNLOCK(%struct.pad_softc* %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %76, %48, %41
  %88 = load i32, i32* %3, align 4
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
