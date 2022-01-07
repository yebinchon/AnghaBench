; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_uart.c_vf_uart_bus_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_uart.c_vf_uart_bus_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i64, i32, i32*, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@UART_S1 = common dso_local global i32 0, align 4
@UART_S1_RDRF = common dso_local global i32 0, align 4
@UART_STAT_OVERRUN = common dso_local global i32 0, align 4
@UART_D = common dso_local global i32 0, align 4
@UART_C2 = common dso_local global i32 0, align 4
@UART_C2_RIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @vf_uart_bus_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf_uart_bus_receive(%struct.uart_softc* %0) #0 {
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
  br label %12

12:                                               ; preds = %32, %1
  %13 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %14 = load i32, i32* @UART_S1, align 4
  %15 = call i32 @uart_getreg(%struct.uart_bas* %13, i32 %14)
  %16 = load i32, i32* @UART_S1_RDRF, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %39

19:                                               ; preds = %12
  %20 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %21 = call i64 @uart_rx_full(%struct.uart_softc* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32, i32* @UART_STAT_OVERRUN, align 4
  %25 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %26 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %29 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32 %24, i32* %31, align 4
  br label %39

32:                                               ; preds = %19
  %33 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %34 = load i32, i32* @UART_D, align 4
  %35 = call i32 @uart_getreg(%struct.uart_bas* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @uart_rx_put(%struct.uart_softc* %36, i32 %37)
  br label %12

39:                                               ; preds = %23, %12
  %40 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %41 = load i32, i32* @UART_C2, align 4
  %42 = call i32 @uart_getreg(%struct.uart_bas* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* @UART_C2_RIE, align 4
  %44 = load i32, i32* %4, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %47 = load i32, i32* @UART_C2, align 4
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @uart_setreg(%struct.uart_bas* %46, i32 %47, i32 %48)
  %50 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %51 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @uart_unlock(i32 %52)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i64 @uart_rx_full(%struct.uart_softc*) #1

declare dso_local i32 @uart_rx_put(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
