; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_uart_dev_cdnc.c_cdnc_uart_bus_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_uart_dev_cdnc.c_cdnc_uart_bus_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.TYPE_2__*, %struct.uart_bas }
%struct.TYPE_2__ = type { i64 }
%struct.uart_bas = type { i32 }

@CDNC_UART_ISTAT_REG = common dso_local global i32 0, align 4
@CDNC_UART_INT_FRAMING = common dso_local global i32 0, align 4
@CDNC_UART_INT_PARITY = common dso_local global i32 0, align 4
@UART_STAT_PARERR = common dso_local global i32 0, align 4
@UART_STAT_FRAMERR = common dso_local global i32 0, align 4
@CDNC_UART_CHAN_STAT_REG = common dso_local global i32 0, align 4
@CDNC_UART_CHAN_STAT_REG_RXEMPTY = common dso_local global i32 0, align 4
@CDNC_UART_FIFO = common dso_local global i32 0, align 4
@UART_DEV_CONSOLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @cdnc_uart_bus_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdnc_uart_bus_receive(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 2
  store %struct.uart_bas* %8, %struct.uart_bas** %3, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @uart_lock(i32 %11)
  %13 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %14 = load i32, i32* @CDNC_UART_ISTAT_REG, align 4
  %15 = call i32 @RD4(%struct.uart_bas* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @CDNC_UART_INT_FRAMING, align 4
  %18 = load i32, i32* @CDNC_UART_INT_PARITY, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %1
  %23 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %24 = load i32, i32* @CDNC_UART_ISTAT_REG, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @CDNC_UART_INT_FRAMING, align 4
  %27 = load i32, i32* @CDNC_UART_INT_PARITY, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %25, %28
  %30 = call i32 @WR4(%struct.uart_bas* %23, i32 %24, i32 %29)
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @CDNC_UART_INT_PARITY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load i32, i32* @UART_STAT_PARERR, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %22
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @CDNC_UART_INT_FRAMING, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @UART_STAT_FRAMERR, align 4
  %46 = load i32, i32* %6, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %44, %39
  br label %49

49:                                               ; preds = %48, %1
  br label %50

50:                                               ; preds = %57, %49
  %51 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %52 = load i32, i32* @CDNC_UART_CHAN_STAT_REG, align 4
  %53 = call i32 @RD4(%struct.uart_bas* %51, i32 %52)
  %54 = load i32, i32* @CDNC_UART_CHAN_STAT_REG_RXEMPTY, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %59 = load i32, i32* @CDNC_UART_FIFO, align 4
  %60 = call i32 @RD4(%struct.uart_bas* %58, i32 %59)
  %61 = and i32 %60, 255
  store i32 %61, i32* %5, align 4
  %62 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %63, %64
  %66 = call i32 @uart_rx_put(%struct.uart_softc* %62, i32 %65)
  br label %50

67:                                               ; preds = %50
  %68 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %69 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @uart_unlock(i32 %70)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @RD4(%struct.uart_bas*, i32) #1

declare dso_local i32 @WR4(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_rx_put(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
