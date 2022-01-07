; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_bank_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/extr_ti_gpio.c_ti_gpio_bank_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_gpio_softc = type { i64 }

@INVALID_CLK_IDENT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"failed to get device id based on ti,hwmods\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GPIO1_CLK = common dso_local global i64 0, align 8
@TI_GPIO_REVISION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [76 x i8] c"Warning: could not determine the revision of GPIO module (revision:0x%08x)\0A\00", align 1
@PINS_PER_BANK = common dso_local global i32 0, align 4
@GPIO_PIN_OUTPUT = common dso_local global i64 0, align 8
@GPIO_PIN_PULLUP = common dso_local global i64 0, align 8
@TI_GPIO_OE = common dso_local global i32 0, align 4
@TI_GPIO_SETDATAOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ti_gpio_bank_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_gpio_bank_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ti_gpio_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.ti_gpio_softc* @device_get_softc(i32 %11)
  store %struct.ti_gpio_softc* %12, %struct.ti_gpio_softc** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @ti_hwmods_get_clock(i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load i64, i64* @INVALID_CLK_IDENT, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 (i32, i8*, ...) @device_printf(i32 %19, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EINVAL, align 4
  store i32 %21, i32* %2, align 4
  br label %93

22:                                               ; preds = %1
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @GPIO1_CLK, align 8
  %25 = sub nsw i64 %23, %24
  %26 = call i64 (...) @ti_first_gpio_bank()
  %27 = add nsw i64 %25, %26
  %28 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %5, align 8
  %29 = getelementptr inbounds %struct.ti_gpio_softc, %struct.ti_gpio_softc* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load i64, i64* %10, align 8
  %31 = call i32 @ti_prcm_clk_enable(i64 %30)
  %32 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %5, align 8
  %33 = load i32, i32* @TI_GPIO_REVISION, align 4
  %34 = call i64 @ti_gpio_read_4(%struct.ti_gpio_softc* %32, i32 %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 (...) @ti_gpio_rev()
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %22
  %39 = load i32, i32* %3, align 4
  %40 = load i64, i64* %9, align 8
  %41 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %2, align 4
  br label %93

43:                                               ; preds = %22
  %44 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %5, align 8
  %45 = call i32 @ti_gpio_intr_clr(%struct.ti_gpio_softc* %44, i32 -1)
  store i64 4294967295, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %77, %43
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @PINS_PER_BANK, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %80

50:                                               ; preds = %46
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %4, align 4
  %53 = call i32 @TI_GPIO_GET_FLAGS(i32 %51, i32 %52, i64* %6)
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* @GPIO_PIN_OUTPUT, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %76

58:                                               ; preds = %50
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = shl i64 1, %60
  %62 = xor i64 %61, -1
  %63 = load i64, i64* %7, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @GPIO_PIN_PULLUP, align 8
  %67 = and i64 %65, %66
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %58
  %70 = load i32, i32* %4, align 4
  %71 = zext i32 %70 to i64
  %72 = shl i64 1, %71
  %73 = load i64, i64* %8, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %8, align 8
  br label %75

75:                                               ; preds = %69, %58
  br label %76

76:                                               ; preds = %75, %50
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %46

80:                                               ; preds = %46
  %81 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %5, align 8
  %82 = load i32, i32* @TI_GPIO_OE, align 4
  %83 = load i64, i64* %7, align 8
  %84 = call i32 @ti_gpio_write_4(%struct.ti_gpio_softc* %81, i32 %82, i64 %83)
  %85 = load i64, i64* %8, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.ti_gpio_softc*, %struct.ti_gpio_softc** %5, align 8
  %89 = load i32, i32* @TI_GPIO_SETDATAOUT, align 4
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @ti_gpio_write_4(%struct.ti_gpio_softc* %88, i32 %89, i64 %90)
  br label %92

92:                                               ; preds = %87, %80
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %38, %18
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local %struct.ti_gpio_softc* @device_get_softc(i32) #1

declare dso_local i64 @ti_hwmods_get_clock(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @ti_first_gpio_bank(...) #1

declare dso_local i32 @ti_prcm_clk_enable(i64) #1

declare dso_local i64 @ti_gpio_read_4(%struct.ti_gpio_softc*, i32) #1

declare dso_local i64 @ti_gpio_rev(...) #1

declare dso_local i32 @ti_gpio_intr_clr(%struct.ti_gpio_softc*, i32) #1

declare dso_local i32 @TI_GPIO_GET_FLAGS(i32, i32, i64*) #1

declare dso_local i32 @ti_gpio_write_4(%struct.ti_gpio_softc*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
