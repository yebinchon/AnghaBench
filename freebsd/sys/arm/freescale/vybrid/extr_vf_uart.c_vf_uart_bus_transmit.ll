; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_uart.c_vf_uart_bus_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/vybrid/extr_vf_uart.c_vf_uart_bus_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32*, i32, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@UART_D = common dso_local global i32 0, align 4
@UART_C2 = common dso_local global i32 0, align 4
@UART_C2_TIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @vf_uart_bus_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vf_uart_bus_transmit(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %6, i32 0, i32 4
  store %struct.uart_bas* %7, %struct.uart_bas** %3, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 4
  store %struct.uart_bas* %9, %struct.uart_bas** %3, align 8
  %10 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %11 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @uart_lock(i32 %12)
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %35, %1
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %17 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %14
  %21 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %22 = load i32, i32* @UART_D, align 4
  %23 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %24 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 255
  %31 = call i32 @uart_setreg(%struct.uart_bas* %21, i32 %22, i32 %30)
  %32 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %33 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %32, i32 0, i32 4
  %34 = call i32 @uart_barrier(%struct.uart_bas* %33)
  br label %35

35:                                               ; preds = %20
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %14

38:                                               ; preds = %14
  %39 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %40 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %39, i32 0, i32 2
  store i32 1, i32* %40, align 8
  %41 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %42 = load i32, i32* @UART_C2, align 4
  %43 = call i32 @uart_getreg(%struct.uart_bas* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @UART_C2_TIE, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %48 = load i32, i32* @UART_C2, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @uart_setreg(%struct.uart_bas* %47, i32 %48, i32 %49)
  %51 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %52 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @uart_unlock(i32 %53)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
