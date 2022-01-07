; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_bus_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_bus_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i64, i32, i32*, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@AML_UART_STATUS_REG = common dso_local global i32 0, align 4
@AML_UART_STATUS_RX_FIFO_EMPTY = common dso_local global i32 0, align 4
@UART_STAT_OVERRUN = common dso_local global i32 0, align 4
@AML_UART_RFIFO_REG = common dso_local global i32 0, align 4
@AML_UART_STATUS_FRAME_ERR = common dso_local global i32 0, align 4
@UART_STAT_FRAMERR = common dso_local global i32 0, align 4
@AML_UART_STATUS_PARITY_ERR = common dso_local global i32 0, align 4
@UART_STAT_PARERR = common dso_local global i32 0, align 4
@AML_UART_CONTROL_REG = common dso_local global i32 0, align 4
@AML_UART_CONTROL_CLR_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @aml8726_uart_bus_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_uart_bus_receive(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %6, i32 0, i32 3
  store %struct.uart_bas* %7, %struct.uart_bas** %3, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @uart_lock(i32 %10)
  %12 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %13 = load i32, i32* @AML_UART_STATUS_REG, align 4
  %14 = call i32 @uart_getreg(%struct.uart_bas* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  br label %15

15:                                               ; preds = %55, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @AML_UART_STATUS_RX_FIFO_EMPTY, align 4
  %18 = and i32 %16, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %15
  %21 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %22 = call i64 @uart_rx_full(%struct.uart_softc* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %20
  %25 = load i32, i32* @UART_STAT_OVERRUN, align 4
  %26 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %27 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %30 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 %25, i32* %32, align 4
  br label %62

33:                                               ; preds = %20
  %34 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %35 = load i32, i32* @AML_UART_RFIFO_REG, align 4
  %36 = call i32 @uart_getreg(%struct.uart_bas* %34, i32 %35)
  %37 = and i32 %36, 255
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @AML_UART_STATUS_FRAME_ERR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load i32, i32* @UART_STAT_FRAMERR, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %33
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @AML_UART_STATUS_PARITY_ERR, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = load i32, i32* @UART_STAT_PARERR, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %51, %46
  %56 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @uart_rx_put(%struct.uart_softc* %56, i32 %57)
  %59 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %60 = load i32, i32* @AML_UART_STATUS_REG, align 4
  %61 = call i32 @uart_getreg(%struct.uart_bas* %59, i32 %60)
  store i32 %61, i32* %5, align 4
  br label %15

62:                                               ; preds = %24, %15
  br label %63

63:                                               ; preds = %68, %62
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @AML_UART_STATUS_RX_FIFO_EMPTY, align 4
  %66 = and i32 %64, %65
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %70 = load i32, i32* @AML_UART_RFIFO_REG, align 4
  %71 = call i32 @uart_getreg(%struct.uart_bas* %69, i32 %70)
  %72 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %73 = load i32, i32* @AML_UART_STATUS_REG, align 4
  %74 = call i32 @uart_getreg(%struct.uart_bas* %72, i32 %73)
  store i32 %74, i32* %5, align 4
  br label %63

75:                                               ; preds = %63
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @AML_UART_STATUS_FRAME_ERR, align 4
  %78 = load i32, i32* @AML_UART_STATUS_PARITY_ERR, align 4
  %79 = or i32 %77, %78
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %104

82:                                               ; preds = %75
  %83 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %84 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %85 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %86 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %87 = call i32 @uart_getreg(%struct.uart_bas* %85, i32 %86)
  %88 = load i32, i32* @AML_UART_CONTROL_CLR_ERR, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @uart_setreg(%struct.uart_bas* %83, i32 %84, i32 %89)
  %91 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %92 = call i32 @uart_barrier(%struct.uart_bas* %91)
  %93 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %94 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %95 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %96 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %97 = call i32 @uart_getreg(%struct.uart_bas* %95, i32 %96)
  %98 = load i32, i32* @AML_UART_CONTROL_CLR_ERR, align 4
  %99 = xor i32 %98, -1
  %100 = and i32 %97, %99
  %101 = call i32 @uart_setreg(%struct.uart_bas* %93, i32 %94, i32 %100)
  %102 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %103 = call i32 @uart_barrier(%struct.uart_bas* %102)
  br label %104

104:                                              ; preds = %82, %75
  %105 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %106 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @uart_unlock(i32 %107)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i64 @uart_rx_full(%struct.uart_softc*) #1

declare dso_local i32 @uart_rx_put(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
