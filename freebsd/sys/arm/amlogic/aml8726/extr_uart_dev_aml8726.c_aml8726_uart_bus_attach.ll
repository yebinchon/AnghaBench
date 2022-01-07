; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.TYPE_2__*, i32, %struct.uart_bas }
%struct.TYPE_2__ = type { i64 }
%struct.uart_bas = type { i64 }

@.str = private unnamed_addr constant [33 x i8] c"missing clocks attribute in FDT\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@AML_UART_CONTROL_REG = common dso_local global i32 0, align 4
@AML_UART_CONTROL_TX_INT_EN = common dso_local global i32 0, align 4
@AML_UART_CONTROL_RX_INT_EN = common dso_local global i32 0, align 4
@AML_UART_CONTROL_TX_RST = common dso_local global i32 0, align 4
@AML_UART_CONTROL_RX_RST = common dso_local global i32 0, align 4
@UART_DEV_CONSOLE = common dso_local global i64 0, align 8
@AML_UART_CONTROL_TWO_WIRE_EN = common dso_local global i32 0, align 4
@AML_UART_CONTROL_TX_EN = common dso_local global i32 0, align 4
@AML_UART_CONTROL_RX_EN = common dso_local global i32 0, align 4
@AML_UART_CONTROL_CLR_ERR = common dso_local global i32 0, align 4
@AML_UART_MISC_REG = common dso_local global i32 0, align 4
@AML_UART_MISC_XMIT_IRQ_CNT_MASK = common dso_local global i32 0, align 4
@AML_UART_MISC_XMIT_IRQ_CNT_SHIFT = common dso_local global i32 0, align 4
@AML_UART_MISC_RECV_IRQ_CNT_MASK = common dso_local global i32 0, align 4
@AML_UART_MISC_RECV_IRQ_CNT_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @aml8726_uart_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_uart_bus_attach(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 2
  store %struct.uart_bas* %8, %struct.uart_bas** %4, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ofw_bus_get_node(i32 %11)
  %13 = call i64 @aml8726_uart_bus_clk(i32 %12)
  %14 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %15 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %17 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %1
  %21 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %22 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %2, align 4
  br label %125

26:                                               ; preds = %1
  %27 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %28 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %29 = call i32 @uart_getreg(%struct.uart_bas* %27, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* @AML_UART_CONTROL_TX_INT_EN, align 4
  %31 = load i32, i32* @AML_UART_CONTROL_RX_INT_EN, align 4
  %32 = or i32 %30, %31
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* @AML_UART_CONTROL_TX_RST, align 4
  %37 = load i32, i32* @AML_UART_CONTROL_RX_RST, align 4
  %38 = or i32 %36, %37
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %5, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %5, align 4
  %42 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %43 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = icmp ne %struct.TYPE_2__* %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %26
  %47 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %48 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @UART_DEV_CONSOLE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  br label %61

55:                                               ; preds = %46, %26
  %56 = load i32, i32* @AML_UART_CONTROL_TX_RST, align 4
  %57 = load i32, i32* @AML_UART_CONTROL_RX_RST, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %5, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %55, %54
  %62 = load i32, i32* @AML_UART_CONTROL_TWO_WIRE_EN, align 4
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* @AML_UART_CONTROL_TX_EN, align 4
  %66 = load i32, i32* @AML_UART_CONTROL_RX_EN, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %5, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @AML_UART_CONTROL_CLR_ERR, align 4
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %74 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @uart_setreg(%struct.uart_bas* %73, i32 %74, i32 %75)
  %77 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %78 = call i32 @uart_barrier(%struct.uart_bas* %77)
  %79 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %80 = load i32, i32* @AML_UART_MISC_REG, align 4
  %81 = call i32 @uart_getreg(%struct.uart_bas* %79, i32 %80)
  store i32 %81, i32* %6, align 4
  %82 = load i32, i32* @AML_UART_MISC_XMIT_IRQ_CNT_MASK, align 4
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %6, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* @AML_UART_MISC_XMIT_IRQ_CNT_SHIFT, align 4
  %87 = shl i32 0, %86
  %88 = load i32, i32* %6, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* @AML_UART_MISC_RECV_IRQ_CNT_MASK, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %6, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* @AML_UART_MISC_RECV_IRQ_CNT_SHIFT, align 4
  %95 = shl i32 1, %94
  %96 = load i32, i32* %6, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %6, align 4
  %98 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %99 = load i32, i32* @AML_UART_MISC_REG, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i32 @uart_setreg(%struct.uart_bas* %98, i32 %99, i32 %100)
  %102 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %103 = call i32 @uart_barrier(%struct.uart_bas* %102)
  %104 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %105 = call i32 @aml8726_uart_bus_getsig(%struct.uart_softc* %104)
  %106 = load i32, i32* @AML_UART_CONTROL_TX_RST, align 4
  %107 = load i32, i32* @AML_UART_CONTROL_RX_RST, align 4
  %108 = or i32 %106, %107
  %109 = xor i32 %108, -1
  %110 = load i32, i32* %5, align 4
  %111 = and i32 %110, %109
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* @AML_UART_CONTROL_CLR_ERR, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %5, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* @AML_UART_CONTROL_RX_INT_EN, align 4
  %117 = load i32, i32* %5, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %5, align 4
  %119 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %120 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @uart_setreg(%struct.uart_bas* %119, i32 %120, i32 %121)
  %123 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %124 = call i32 @uart_barrier(%struct.uart_bas* %123)
  store i32 0, i32* %2, align 4
  br label %125

125:                                              ; preds = %61, %20
  %126 = load i32, i32* %2, align 4
  ret i32 %126
}

declare dso_local i64 @aml8726_uart_bus_clk(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @aml8726_uart_bus_getsig(%struct.uart_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
