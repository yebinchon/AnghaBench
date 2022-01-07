; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_bus_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_bus_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.uart_bas }
%struct.uart_bas = type { i32 }

@AML_UART_CONTROL_REG = common dso_local global i32 0, align 4
@AML_UART_CONTROL_TX_INT_EN = common dso_local global i32 0, align 4
@AML_UART_CONTROL_RX_INT_EN = common dso_local global i32 0, align 4
@AML_UART_MISC_REG = common dso_local global i32 0, align 4
@AML_UART_MISC_RECV_IRQ_CNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @aml8726_uart_bus_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_uart_bus_detach(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %6, i32 0, i32 0
  store %struct.uart_bas* %7, %struct.uart_bas** %3, align 8
  %8 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %9 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %10 = call i32 @uart_getreg(%struct.uart_bas* %8, i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @AML_UART_CONTROL_TX_INT_EN, align 4
  %12 = load i32, i32* @AML_UART_CONTROL_RX_INT_EN, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %18 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @uart_setreg(%struct.uart_bas* %17, i32 %18, i32 %19)
  %21 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %22 = call i32 @uart_barrier(%struct.uart_bas* %21)
  %23 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %24 = load i32, i32* @AML_UART_MISC_REG, align 4
  %25 = call i32 @uart_getreg(%struct.uart_bas* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @AML_UART_MISC_RECV_IRQ_CNT_MASK, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %31 = load i32, i32* @AML_UART_MISC_REG, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @uart_setreg(%struct.uart_bas* %30, i32 %31, i32 %32)
  %34 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %35 = call i32 @uart_barrier(%struct.uart_bas* %34)
  ret i32 0
}

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
