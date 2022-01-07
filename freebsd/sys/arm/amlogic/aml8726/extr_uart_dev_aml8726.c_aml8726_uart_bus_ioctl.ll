; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_bus_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_bus_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@AML_UART_CONTROL_REG = common dso_local global i32 0, align 4
@AML_UART_CONTROL_BAUD_MASK = common dso_local global i32 0, align 4
@AML_UART_MISC_REG = common dso_local global i32 0, align 4
@AML_UART_MISC_BAUD_EXT_MASK = common dso_local global i32 0, align 4
@AML_UART_MISC_BAUD_EXT_SHIFT = common dso_local global i32 0, align 4
@AML_UART_CONTROL_BAUD_WIDTH = common dso_local global i32 0, align 4
@aml8726_soc_hw_rev = common dso_local global i32 0, align 4
@AML_UART_NEW_BAUD_REG = common dso_local global i32 0, align 4
@AML_UART_NEW_BAUD_RATE_EN = common dso_local global i32 0, align 4
@AML_UART_NEW_BAUD_RATE_MASK = common dso_local global i32 0, align 4
@AML_UART_NEW_BAUD_RATE_SHIFT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@AML_UART_CONTROL_TWO_WIRE_EN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32, i64)* @aml8726_uart_bus_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_uart_bus_ioctl(%struct.uart_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.uart_bas*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %14 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %15 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %14, i32 0, i32 1
  store %struct.uart_bas* %15, %struct.uart_bas** %7, align 8
  %16 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %17 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @uart_lock(i32 %18)
  store i32 0, i32* %10, align 4
  %20 = load i32, i32* %5, align 4
  switch i32 %20, label %95 [
    i32 130, label %21
    i32 129, label %75
    i32 128, label %75
  ]

21:                                               ; preds = %3
  %22 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %23 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %24 = call i32 @uart_getreg(%struct.uart_bas* %22, i32 %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @AML_UART_CONTROL_BAUD_MASK, align 4
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %11, align 4
  %28 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %29 = load i32, i32* @AML_UART_MISC_REG, align 4
  %30 = call i32 @uart_getreg(%struct.uart_bas* %28, i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* @AML_UART_MISC_BAUD_EXT_MASK, align 4
  %32 = load i32, i32* %12, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @AML_UART_MISC_BAUD_EXT_SHIFT, align 4
  %36 = ashr i32 %34, %35
  %37 = load i32, i32* @AML_UART_CONTROL_BAUD_WIDTH, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* @aml8726_soc_hw_rev, align 4
  switch i32 %41, label %57 [
    i32 133, label %42
    i32 132, label %42
    i32 131, label %42
  ]

42:                                               ; preds = %21, %21, %21
  %43 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %44 = load i32, i32* @AML_UART_NEW_BAUD_REG, align 4
  %45 = call i32 @uart_getreg(%struct.uart_bas* %43, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* @AML_UART_NEW_BAUD_RATE_EN, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %42
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @AML_UART_NEW_BAUD_RATE_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @AML_UART_NEW_BAUD_RATE_SHIFT, align 4
  %55 = ashr i32 %53, %54
  store i32 %55, i32* %9, align 4
  br label %56

56:                                               ; preds = %50, %42
  br label %58

57:                                               ; preds = %21
  br label %58

58:                                               ; preds = %57, %56
  %59 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %60 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %61, 4
  %63 = load i32, i32* %9, align 4
  %64 = add nsw i32 %63, 1
  %65 = sdiv i32 %62, %64
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp sgt i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load i32, i32* %8, align 4
  %70 = load i64, i64* %6, align 8
  %71 = inttoptr i64 %70 to i32*
  store i32 %69, i32* %71, align 4
  br label %74

72:                                               ; preds = %58
  %73 = load i32, i32* @ENXIO, align 4
  store i32 %73, i32* %10, align 4
  br label %74

74:                                               ; preds = %72, %68
  br label %97

75:                                               ; preds = %3, %3
  %76 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %77 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %78 = call i32 @uart_getreg(%struct.uart_bas* %76, i32 %77)
  store i32 %78, i32* %11, align 4
  %79 = load i64, i64* %6, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load i32, i32* @AML_UART_CONTROL_TWO_WIRE_EN, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %11, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %11, align 4
  br label %90

86:                                               ; preds = %75
  %87 = load i32, i32* @AML_UART_CONTROL_TWO_WIRE_EN, align 4
  %88 = load i32, i32* %11, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %11, align 4
  br label %90

90:                                               ; preds = %86, %81
  %91 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %92 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %93 = load i32, i32* %11, align 4
  %94 = call i32 @uart_setreg(%struct.uart_bas* %91, i32 %92, i32 %93)
  br label %97

95:                                               ; preds = %3
  %96 = load i32, i32* @EINVAL, align 4
  store i32 %96, i32* %10, align 4
  br label %97

97:                                               ; preds = %95, %90, %74
  %98 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %99 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @uart_unlock(i32 %100)
  %102 = load i32, i32* %10, align 4
  ret i32 %102
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
