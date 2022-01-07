; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_pad.c_pad_pin_configure.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos5_pad.c_pad_pin_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pad_softc = type { i32 }
%struct.gpio_pin = type { i32, i32 }
%struct.gpio_bank = type { i32, i32 }

@GPIO_PIN_INPUT = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@PIN_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pad_softc*, %struct.gpio_pin*, i32)* @pad_pin_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pad_pin_configure(%struct.pad_softc* %0, %struct.gpio_pin* %1, i32 %2) #0 {
  %4 = alloca %struct.pad_softc*, align 8
  %5 = alloca %struct.gpio_pin*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.gpio_bank, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pad_softc* %0, %struct.pad_softc** %4, align 8
  store %struct.gpio_pin* %1, %struct.gpio_pin** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.pad_softc*, %struct.pad_softc** %4, align 8
  %11 = call i32 @GPIO_LOCK(%struct.pad_softc* %10)
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %14 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %95

18:                                               ; preds = %3
  %19 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %20 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %24 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.pad_softc*, %struct.pad_softc** %4, align 8
  %28 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %29 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @get_bank(%struct.pad_softc* %27, i32 %30, %struct.gpio_bank* %7, i32* %8)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %18
  br label %98

34:                                               ; preds = %18
  %35 = load i32, i32* %8, align 4
  %36 = mul nsw i32 %35, 4
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %70

41:                                               ; preds = %34
  %42 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %43 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %44 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  %47 = load %struct.pad_softc*, %struct.pad_softc** %4, align 8
  %48 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %7, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %7, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @READ4(%struct.pad_softc* %47, i32 %49, i32 %51)
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %8, align 4
  %54 = shl i32 15, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @PIN_OUT, align 4
  %59 = load i32, i32* %8, align 4
  %60 = shl i32 %58, %59
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  %63 = load %struct.pad_softc*, %struct.pad_softc** %4, align 8
  %64 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %7, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %7, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @WRITE4(%struct.pad_softc* %63, i32 %65, i32 %67, i32 %68)
  br label %94

70:                                               ; preds = %34
  %71 = load i32, i32* @GPIO_PIN_INPUT, align 4
  %72 = load %struct.gpio_pin*, %struct.gpio_pin** %5, align 8
  %73 = getelementptr inbounds %struct.gpio_pin, %struct.gpio_pin* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.pad_softc*, %struct.pad_softc** %4, align 8
  %77 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %7, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %7, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @READ4(%struct.pad_softc* %76, i32 %78, i32 %80)
  store i32 %81, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = shl i32 15, %82
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %9, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %9, align 4
  %87 = load %struct.pad_softc*, %struct.pad_softc** %4, align 8
  %88 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %7, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = getelementptr inbounds %struct.gpio_bank, %struct.gpio_bank* %7, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i32 @WRITE4(%struct.pad_softc* %87, i32 %89, i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %70, %41
  br label %95

95:                                               ; preds = %94, %3
  %96 = load %struct.pad_softc*, %struct.pad_softc** %4, align 8
  %97 = call i32 @GPIO_UNLOCK(%struct.pad_softc* %96)
  br label %98

98:                                               ; preds = %95, %33
  ret void
}

declare dso_local i32 @GPIO_LOCK(%struct.pad_softc*) #1

declare dso_local i64 @get_bank(%struct.pad_softc*, i32, %struct.gpio_bank*, i32*) #1

declare dso_local i32 @READ4(%struct.pad_softc*, i32, i32) #1

declare dso_local i32 @WRITE4(%struct.pad_softc*, i32, i32, i32) #1

declare dso_local i32 @GPIO_UNLOCK(%struct.pad_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
