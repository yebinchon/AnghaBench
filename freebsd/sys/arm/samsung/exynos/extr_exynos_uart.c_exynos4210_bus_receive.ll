; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos_uart.c_exynos4210_bus_receive.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos_uart.c_exynos4210_bus_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.uart_bas }
%struct.uart_bas = type { i32, i32 }

@SSCOM_UFSTAT = common dso_local global i32 0, align 4
@UFSTAT_RXCOUNT = common dso_local global i32 0, align 4
@SSCOM_URXH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @exynos4210_bus_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos4210_bus_receive(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %4 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %5 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %4, i32 0, i32 0
  store %struct.uart_bas* %5, %struct.uart_bas** %3, align 8
  br label %6

6:                                                ; preds = %18, %1
  %7 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %8 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %11 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SSCOM_UFSTAT, align 4
  %14 = call i32 @bus_space_read_4(i32 %9, i32 %12, i32 %13)
  %15 = load i32, i32* @UFSTAT_RXCOUNT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %6
  %19 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %20 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %21 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %20, i32 0, i32 0
  %22 = load i32, i32* @SSCOM_URXH, align 4
  %23 = call i32 @uart_getreg(%struct.uart_bas* %21, i32 %22)
  %24 = call i32 @uart_rx_put(%struct.uart_softc* %19, i32 %23)
  br label %6

25:                                               ; preds = %6
  ret i32 0
}

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @uart_rx_put(%struct.uart_softc*, i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
