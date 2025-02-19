; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_uart_dev_cdnc.c_cdnc_uart_bus_grab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_uart_dev_cdnc.c_cdnc_uart_bus_grab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32 }

@CDNC_UART_IEN_REG = common dso_local global i32 0, align 4
@CDNC_UART_INT_TXOVR = common dso_local global i32 0, align 4
@CDNC_UART_INT_RXOVR = common dso_local global i32 0, align 4
@CDNC_UART_INT_DMSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_softc*)* @cdnc_uart_bus_grab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdnc_uart_bus_grab(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %3 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %4 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %3, i32 0, i32 0
  %5 = load i32, i32* @CDNC_UART_IEN_REG, align 4
  %6 = load i32, i32* @CDNC_UART_INT_TXOVR, align 4
  %7 = load i32, i32* @CDNC_UART_INT_RXOVR, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @CDNC_UART_INT_DMSI, align 4
  %10 = or i32 %8, %9
  %11 = call i32 @WR4(i32* %4, i32 %5, i32 %10)
  ret void
}

declare dso_local i32 @WR4(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
