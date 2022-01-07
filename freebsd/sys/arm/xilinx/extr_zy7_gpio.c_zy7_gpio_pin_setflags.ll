; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_gpio.c_zy7_gpio_pin_setflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_zy7_gpio.c_zy7_gpio_pin_setflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zy7_gpio_softc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i32 0, align 4
@GPIO_PIN_TRISTATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @zy7_gpio_pin_setflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zy7_gpio_pin_setflags(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zy7_gpio_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.zy7_gpio_softc* @device_get_softc(i32 %9)
  store %struct.zy7_gpio_softc* %10, %struct.zy7_gpio_softc** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @VALID_PIN(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %108

16:                                               ; preds = %3
  %17 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %18 = call i32 @ZGPIO_LOCK(%struct.zy7_gpio_softc* %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @GPIO_PIN_OUTPUT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %74

23:                                               ; preds = %16
  %24 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = ashr i32 %25, 5
  %27 = call i32 @ZY7_GPIO_DIRM(i32 %26)
  %28 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %29 = load i32, i32* %6, align 4
  %30 = ashr i32 %29, 5
  %31 = call i32 @ZY7_GPIO_DIRM(i32 %30)
  %32 = call i32 @RD4(%struct.zy7_gpio_softc* %28, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, 31
  %35 = shl i32 1, %34
  %36 = or i32 %32, %35
  %37 = call i32 @WR4(%struct.zy7_gpio_softc* %24, i32 %27, i32 %36)
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @GPIO_PIN_TRISTATE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %23
  %43 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %44 = load i32, i32* %6, align 4
  %45 = ashr i32 %44, 5
  %46 = call i32 @ZY7_GPIO_OEN(i32 %45)
  %47 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %48 = load i32, i32* %6, align 4
  %49 = ashr i32 %48, 5
  %50 = call i32 @ZY7_GPIO_OEN(i32 %49)
  %51 = call i32 @RD4(%struct.zy7_gpio_softc* %47, i32 %50)
  %52 = load i32, i32* %6, align 4
  %53 = and i32 %52, 31
  %54 = shl i32 1, %53
  %55 = xor i32 %54, -1
  %56 = and i32 %51, %55
  %57 = call i32 @WR4(%struct.zy7_gpio_softc* %43, i32 %46, i32 %56)
  br label %73

58:                                               ; preds = %23
  %59 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %60 = load i32, i32* %6, align 4
  %61 = ashr i32 %60, 5
  %62 = call i32 @ZY7_GPIO_OEN(i32 %61)
  %63 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %64 = load i32, i32* %6, align 4
  %65 = ashr i32 %64, 5
  %66 = call i32 @ZY7_GPIO_OEN(i32 %65)
  %67 = call i32 @RD4(%struct.zy7_gpio_softc* %63, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = and i32 %68, 31
  %70 = shl i32 1, %69
  %71 = or i32 %67, %70
  %72 = call i32 @WR4(%struct.zy7_gpio_softc* %59, i32 %62, i32 %71)
  br label %73

73:                                               ; preds = %58, %42
  br label %105

74:                                               ; preds = %16
  %75 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %76 = load i32, i32* %6, align 4
  %77 = ashr i32 %76, 5
  %78 = call i32 @ZY7_GPIO_DIRM(i32 %77)
  %79 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %80 = load i32, i32* %6, align 4
  %81 = ashr i32 %80, 5
  %82 = call i32 @ZY7_GPIO_DIRM(i32 %81)
  %83 = call i32 @RD4(%struct.zy7_gpio_softc* %79, i32 %82)
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %84, 31
  %86 = shl i32 1, %85
  %87 = xor i32 %86, -1
  %88 = and i32 %83, %87
  %89 = call i32 @WR4(%struct.zy7_gpio_softc* %75, i32 %78, i32 %88)
  %90 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %91 = load i32, i32* %6, align 4
  %92 = ashr i32 %91, 5
  %93 = call i32 @ZY7_GPIO_OEN(i32 %92)
  %94 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %95 = load i32, i32* %6, align 4
  %96 = ashr i32 %95, 5
  %97 = call i32 @ZY7_GPIO_OEN(i32 %96)
  %98 = call i32 @RD4(%struct.zy7_gpio_softc* %94, i32 %97)
  %99 = load i32, i32* %6, align 4
  %100 = and i32 %99, 31
  %101 = shl i32 1, %100
  %102 = xor i32 %101, -1
  %103 = and i32 %98, %102
  %104 = call i32 @WR4(%struct.zy7_gpio_softc* %90, i32 %93, i32 %103)
  br label %105

105:                                              ; preds = %74, %73
  %106 = load %struct.zy7_gpio_softc*, %struct.zy7_gpio_softc** %8, align 8
  %107 = call i32 @ZGPIO_UNLOCK(%struct.zy7_gpio_softc* %106)
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %105, %14
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.zy7_gpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @VALID_PIN(i32) #1

declare dso_local i32 @ZGPIO_LOCK(%struct.zy7_gpio_softc*) #1

declare dso_local i32 @WR4(%struct.zy7_gpio_softc*, i32, i32) #1

declare dso_local i32 @ZY7_GPIO_DIRM(i32) #1

declare dso_local i32 @RD4(%struct.zy7_gpio_softc*, i32) #1

declare dso_local i32 @ZY7_GPIO_OEN(i32) #1

declare dso_local i32 @ZGPIO_UNLOCK(%struct.zy7_gpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
