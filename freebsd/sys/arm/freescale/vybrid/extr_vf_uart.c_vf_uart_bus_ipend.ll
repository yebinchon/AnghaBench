; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_uart.c_vf_uart_bus_ipend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_uart.c_vf_uart_bus_ipend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i64, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@UART_S1 = common dso_local global i32 0, align 4
@UART_S2 = common dso_local global i32 0, align 4
@UART_SFIFO = common dso_local global i32 0, align 4
@UART_S1_TDRE = common dso_local global i32 0, align 4
@UART_C2 = common dso_local global i32 0, align 4
@UART_C2_TIE = common dso_local global i32 0, align 4
@SER_INT_TXIDLE = common dso_local global i32 0, align 4
@UART_S1_RDRF = common dso_local global i32 0, align 4
@UART_C2_RIE = common dso_local global i32 0, align 4
@SER_INT_RXREADY = common dso_local global i32 0, align 4
@UART_S2_LBKDIF = common dso_local global i32 0, align 4
@SER_INT_BREAK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @vf_uart_bus_ipend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf_uart_bus_ipend(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 2
  store %struct.uart_bas* %10, %struct.uart_bas** %3, align 8
  store i32 0, i32* %4, align 4
  %11 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @uart_lock(i32 %13)
  %15 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %16 = load i32, i32* @UART_S1, align 4
  %17 = call i32 @uart_getreg(%struct.uart_bas* %15, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %19 = load i32, i32* @UART_S2, align 4
  %20 = call i32 @uart_getreg(%struct.uart_bas* %18, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %22 = load i32, i32* @UART_SFIFO, align 4
  %23 = call i32 @uart_getreg(%struct.uart_bas* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %25 = load i32, i32* @UART_S2, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @uart_setreg(%struct.uart_bas* %24, i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @UART_S1_TDRE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %1
  %33 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %34 = load i32, i32* @UART_C2, align 4
  %35 = call i32 @uart_getreg(%struct.uart_bas* %33, i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* @UART_C2_TIE, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %7, align 4
  %40 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %41 = load i32, i32* @UART_C2, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @uart_setreg(%struct.uart_bas* %40, i32 %41, i32 %42)
  %44 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %45 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %32
  %49 = load i32, i32* @SER_INT_TXIDLE, align 4
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %48, %32
  br label %53

53:                                               ; preds = %52, %1
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @UART_S1_RDRF, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %60 = load i32, i32* @UART_C2, align 4
  %61 = call i32 @uart_getreg(%struct.uart_bas* %59, i32 %60)
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* @UART_C2_RIE, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %7, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %7, align 4
  %66 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %67 = load i32, i32* @UART_C2, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @uart_setreg(%struct.uart_bas* %66, i32 %67, i32 %68)
  %70 = load i32, i32* @SER_INT_RXREADY, align 4
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %58, %53
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @UART_S2_LBKDIF, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %73
  %79 = load i32, i32* @SER_INT_BREAK, align 4
  %80 = load i32, i32* %4, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %78, %73
  %83 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %84 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @uart_unlock(i32 %85)
  %87 = load i32, i32* %4, align 4
  ret i32 %87
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
