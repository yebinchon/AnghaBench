; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_uart_dev_cdnc.c_cdnc_uart_hw_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_uart_dev_cdnc.c_cdnc_uart_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@CDNC_UART_CTRL_REG = common dso_local global i32 0, align 4
@CDNC_UART_CTRL_REG_RXRST = common dso_local global i32 0, align 4
@CDNC_UART_CTRL_REG_TXRST = common dso_local global i32 0, align 4
@CDNC_UART_IDIS_REG = common dso_local global i32 0, align 4
@CDNC_UART_INT_ALL = common dso_local global i32 0, align 4
@CDNC_UART_ISTAT_REG = common dso_local global i32 0, align 4
@CDNC_UART_MODEM_STAT_REG = common dso_local global i32 0, align 4
@CDNC_UART_MODEM_STAT_REG_DDCD = common dso_local global i32 0, align 4
@CDNC_UART_MODEM_STAT_REG_TERI = common dso_local global i32 0, align 4
@CDNC_UART_MODEM_STAT_REG_DDSR = common dso_local global i32 0, align 4
@CDNC_UART_MODEM_STAT_REG_DCTS = common dso_local global i32 0, align 4
@CDNC_UART_RX_WATER_REG = common dso_local global i32 0, align 4
@UART_FIFO_SIZE = common dso_local global i32 0, align 4
@CDNC_UART_RX_TIMEO_REG = common dso_local global i32 0, align 4
@CDNC_UART_TX_WATER_REG = common dso_local global i32 0, align 4
@CDNC_UART_CTRL_REG_RX_EN = common dso_local global i32 0, align 4
@CDNC_UART_CTRL_REG_TX_EN = common dso_local global i32 0, align 4
@CDNC_UART_CTRL_REG_TORST = common dso_local global i32 0, align 4
@CDNC_UART_CTRL_REG_STOPBRK = common dso_local global i32 0, align 4
@CDNC_UART_MODEM_CTRL_REG = common dso_local global i32 0, align 4
@CDNC_UART_MODEM_CTRL_REG_DTR = common dso_local global i32 0, align 4
@CDNC_UART_MODEM_CTRL_REG_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*)* @cdnc_uart_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdnc_uart_hw_init(%struct.uart_bas* %0) #0 {
  %2 = alloca %struct.uart_bas*, align 8
  store %struct.uart_bas* %0, %struct.uart_bas** %2, align 8
  %3 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %4 = load i32, i32* @CDNC_UART_CTRL_REG, align 4
  %5 = load i32, i32* @CDNC_UART_CTRL_REG_RXRST, align 4
  %6 = load i32, i32* @CDNC_UART_CTRL_REG_TXRST, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @WR4(%struct.uart_bas* %3, i32 %4, i32 %7)
  %9 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %10 = load i32, i32* @CDNC_UART_IDIS_REG, align 4
  %11 = load i32, i32* @CDNC_UART_INT_ALL, align 4
  %12 = call i32 @WR4(%struct.uart_bas* %9, i32 %10, i32 %11)
  %13 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %14 = load i32, i32* @CDNC_UART_ISTAT_REG, align 4
  %15 = load i32, i32* @CDNC_UART_INT_ALL, align 4
  %16 = call i32 @WR4(%struct.uart_bas* %13, i32 %14, i32 %15)
  %17 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %18 = load i32, i32* @CDNC_UART_MODEM_STAT_REG, align 4
  %19 = load i32, i32* @CDNC_UART_MODEM_STAT_REG_DDCD, align 4
  %20 = load i32, i32* @CDNC_UART_MODEM_STAT_REG_TERI, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @CDNC_UART_MODEM_STAT_REG_DDSR, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @CDNC_UART_MODEM_STAT_REG_DCTS, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @WR4(%struct.uart_bas* %17, i32 %18, i32 %25)
  %27 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %28 = load i32, i32* @CDNC_UART_RX_WATER_REG, align 4
  %29 = load i32, i32* @UART_FIFO_SIZE, align 4
  %30 = sdiv i32 %29, 2
  %31 = call i32 @WR4(%struct.uart_bas* %27, i32 %28, i32 %30)
  %32 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %33 = load i32, i32* @CDNC_UART_RX_TIMEO_REG, align 4
  %34 = call i32 @WR4(%struct.uart_bas* %32, i32 %33, i32 10)
  %35 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %36 = load i32, i32* @CDNC_UART_TX_WATER_REG, align 4
  %37 = load i32, i32* @UART_FIFO_SIZE, align 4
  %38 = sdiv i32 %37, 2
  %39 = call i32 @WR4(%struct.uart_bas* %35, i32 %36, i32 %38)
  %40 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %41 = load i32, i32* @CDNC_UART_CTRL_REG, align 4
  %42 = load i32, i32* @CDNC_UART_CTRL_REG_RX_EN, align 4
  %43 = load i32, i32* @CDNC_UART_CTRL_REG_TX_EN, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @CDNC_UART_CTRL_REG_TORST, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @CDNC_UART_CTRL_REG_STOPBRK, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @WR4(%struct.uart_bas* %40, i32 %41, i32 %48)
  %50 = load %struct.uart_bas*, %struct.uart_bas** %2, align 8
  %51 = load i32, i32* @CDNC_UART_MODEM_CTRL_REG, align 4
  %52 = load i32, i32* @CDNC_UART_MODEM_CTRL_REG_DTR, align 4
  %53 = load i32, i32* @CDNC_UART_MODEM_CTRL_REG_RTS, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @WR4(%struct.uart_bas* %50, i32 %51, i32 %54)
  ret void
}

declare dso_local i32 @WR4(%struct.uart_bas*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
