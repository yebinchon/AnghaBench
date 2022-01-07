; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_bus_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_bus_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32*, i32, i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@AML_UART_STATUS_REG = common dso_local global i32 0, align 4
@AML_UART_STATUS_TX_FIFO_EMPTY = common dso_local global i32 0, align 4
@AML_UART_WFIFO_REG = common dso_local global i32 0, align 4
@AML_UART_CONTROL_REG = common dso_local global i32 0, align 4
@AML_UART_CONTROL_TX_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @aml8726_uart_bus_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_uart_bus_transmit(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %6 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %7 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %6, i32 0, i32 4
  store %struct.uart_bas* %7, %struct.uart_bas** %3, align 8
  %8 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @uart_lock(i32 %10)
  br label %12

12:                                               ; preds = %19, %1
  %13 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %14 = load i32, i32* @AML_UART_STATUS_REG, align 4
  %15 = call i32 @uart_getreg(%struct.uart_bas* %13, i32 %14)
  %16 = load i32, i32* @AML_UART_STATUS_TX_FIFO_EMPTY, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = call i32 (...) @cpu_spinwait()
  br label %12

21:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %41, %21
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %25 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %30 = load i32, i32* @AML_UART_WFIFO_REG, align 4
  %31 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %32 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @uart_setreg(%struct.uart_bas* %29, i32 %30, i32 %37)
  %39 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %40 = call i32 @uart_barrier(%struct.uart_bas* %39)
  br label %41

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %22

44:                                               ; preds = %22
  %45 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %46 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %45, i32 0, i32 2
  store i32 1, i32* %46, align 8
  %47 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %48 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %49 = call i32 @uart_getreg(%struct.uart_bas* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* @AML_UART_CONTROL_TX_INT_EN, align 4
  %51 = load i32, i32* %5, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %5, align 4
  %53 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %54 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @uart_setreg(%struct.uart_bas* %53, i32 %54, i32 %55)
  %57 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %58 = call i32 @uart_barrier(%struct.uart_bas* %57)
  %59 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %60 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @uart_unlock(i32 %61)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

declare dso_local i32 @uart_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
