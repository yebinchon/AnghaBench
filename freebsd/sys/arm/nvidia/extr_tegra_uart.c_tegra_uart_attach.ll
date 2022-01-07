; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_uart.c_tegra_uart_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_uart.c_tegra_uart_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.uart_bas }
%struct.uart_bas = type { i32 }
%struct.ns8250_softc = type { i32, i32, i32 }

@REG_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @tegra_uart_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_uart_attach(%struct.uart_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ns8250_softc*, align 8
  %6 = alloca %struct.uart_bas*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %8 = bitcast %struct.uart_softc* %7 to %struct.ns8250_softc*
  store %struct.ns8250_softc* %8, %struct.ns8250_softc** %5, align 8
  %9 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %10 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %9, i32 0, i32 0
  store %struct.uart_bas* %10, %struct.uart_bas** %6, align 8
  %11 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %12 = call i32 @ns8250_bus_attach(%struct.uart_softc* %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  store i32 %16, i32* %2, align 4
  br label %46

17:                                               ; preds = %1
  %18 = load %struct.ns8250_softc*, %struct.ns8250_softc** %5, align 8
  %19 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %18, i32 0, i32 0
  store i32 29, i32* %19, align 4
  %20 = load %struct.ns8250_softc*, %struct.ns8250_softc** %5, align 8
  %21 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %20, i32 0, i32 1
  store i32 192, i32* %21, align 4
  %22 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %23 = load i32, i32* @REG_IER, align 4
  %24 = call i32 @uart_getreg(%struct.uart_bas* %22, i32 %23)
  %25 = load %struct.ns8250_softc*, %struct.ns8250_softc** %5, align 8
  %26 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = load %struct.ns8250_softc*, %struct.ns8250_softc** %5, align 8
  %30 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.ns8250_softc*, %struct.ns8250_softc** %5, align 8
  %32 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ns8250_softc*, %struct.ns8250_softc** %5, align 8
  %35 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %39 = load i32, i32* @REG_IER, align 4
  %40 = load %struct.ns8250_softc*, %struct.ns8250_softc** %5, align 8
  %41 = getelementptr inbounds %struct.ns8250_softc, %struct.ns8250_softc* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @uart_setreg(%struct.uart_bas* %38, i32 %39, i32 %42)
  %44 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %45 = call i32 @uart_barrier(%struct.uart_bas* %44)
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %17, %15
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @ns8250_bus_attach(%struct.uart_softc*) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
