; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_uart_dev_cdnc.c_cdnc_uart_bus_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_uart_dev_cdnc.c_cdnc_uart_bus_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i64, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@CDNC_UART_ISTAT_REG = common dso_local global i32 0, align 4
@CDNC_UART_INT_RXTRIG = common dso_local global i32 0, align 4
@CDNC_UART_INT_RXTMOUT = common dso_local global i32 0, align 4
@CDNC_UART_INT_TXOVR = common dso_local global i32 0, align 4
@CDNC_UART_INT_RXOVR = common dso_local global i32 0, align 4
@CDNC_UART_INT_TXEMPTY = common dso_local global i32 0, align 4
@CDNC_UART_INT_DMSI = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@CDNC_UART_IDIS_REG = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@SER_INT_OVERRUN = common dso_local global i32 0, align 4
@CDNC_UART_MODEM_STAT_REG = common dso_local global i32 0, align 4
@CDNC_UART_MODEM_STAT_REG_DDCD = common dso_local global i32 0, align 4
@CDNC_UART_MODEM_STAT_REG_TERI = common dso_local global i32 0, align 4
@CDNC_UART_MODEM_STAT_REG_DDSR = common dso_local global i32 0, align 4
@CDNC_UART_MODEM_STAT_REG_DCTS = common dso_local global i32 0, align 4
@SER_INT_SIGCHG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @cdnc_uart_bus_ipend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdnc_uart_bus_ipend(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.uart_bas*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %6, i32 0, i32 2
  store %struct.uart_bas* %7, %struct.uart_bas** %4, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @uart_lock(i32 %10)
  %12 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %13 = load i32, i32* @CDNC_UART_ISTAT_REG, align 4
  %14 = call i32 @RD4(%struct.uart_bas* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %16 = load i32, i32* @CDNC_UART_ISTAT_REG, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @CDNC_UART_INT_RXTRIG, align 4
  %19 = load i32, i32* @CDNC_UART_INT_RXTMOUT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @CDNC_UART_INT_TXOVR, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @CDNC_UART_INT_RXOVR, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @CDNC_UART_INT_TXEMPTY, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @CDNC_UART_INT_DMSI, align 4
  %28 = or i32 %26, %27
  %29 = and i32 %17, %28
  %30 = call i32 @WR4(%struct.uart_bas* %15, i32 %16, i32 %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @CDNC_UART_INT_RXTRIG, align 4
  %33 = load i32, i32* @CDNC_UART_INT_RXTMOUT, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %1
  %38 = load i32, i32* @SER_INT_RXREADY, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %1
  %42 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %43 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @CDNC_UART_INT_TXEMPTY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %53 = load i32, i32* @CDNC_UART_IDIS_REG, align 4
  %54 = load i32, i32* @CDNC_UART_INT_TXEMPTY, align 4
  %55 = call i32 @WR4(%struct.uart_bas* %52, i32 %53, i32 %54)
  %56 = load i32, i32* @SER_INT_TXIDLE, align 4
  %57 = load i32, i32* %3, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %51, %46, %41
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @CDNC_UART_INT_TXOVR, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i32, i32* @SER_INT_OVERRUN, align 4
  %66 = load i32, i32* %3, align 4
  %67 = or i32 %66, %65
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %64, %59
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @CDNC_UART_INT_RXOVR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load i32, i32* @SER_INT_OVERRUN, align 4
  %75 = load i32, i32* %3, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %73, %68
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @CDNC_UART_INT_DMSI, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %96

82:                                               ; preds = %77
  %83 = load %struct.uart_bas*, %struct.uart_bas** %4, align 8
  %84 = load i32, i32* @CDNC_UART_MODEM_STAT_REG, align 4
  %85 = load i32, i32* @CDNC_UART_MODEM_STAT_REG_DDCD, align 4
  %86 = load i32, i32* @CDNC_UART_MODEM_STAT_REG_TERI, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @CDNC_UART_MODEM_STAT_REG_DDSR, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @CDNC_UART_MODEM_STAT_REG_DCTS, align 4
  %91 = or i32 %89, %90
  %92 = call i32 @WR4(%struct.uart_bas* %83, i32 %84, i32 %91)
  %93 = load i32, i32* @SER_INT_SIGCHG, align 4
  %94 = load i32, i32* %3, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %82, %77
  %97 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %98 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @uart_unlock(i32 %99)
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @RD4(%struct.uart_bas*, i32) #1

declare dso_local i32 @WR4(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
