; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_uart_dev_cdnc.c_cdnc_uart_bus_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_uart_dev_cdnc.c_cdnc_uart_bus_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, %struct.uart_bas }
%struct.uart_bas = type { i32 }

@CDNC_UART_CTRL_REG = common dso_local global i32 0, align 4
@CDNC_UART_CTRL_REG_STARTBRK = common dso_local global i32 0, align 4
@CDNC_UART_CTRL_REG_STOPBRK = common dso_local global i32 0, align 4
@CDNC_UART_MODEM_CTRL_REG = common dso_local global i32 0, align 4
@CDNC_UART_MODEM_CTRL_REG_RTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32, i64)* @cdnc_uart_bus_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdnc_uart_bus_ioctl(%struct.uart_softc* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.uart_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.uart_bas*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 1
  store %struct.uart_bas* %12, %struct.uart_bas** %7, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %14 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @uart_lock(i32 %15)
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %65 [
    i32 129, label %18
    i32 128, label %45
  ]

18:                                               ; preds = %3
  %19 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %20 = load i32, i32* @CDNC_UART_CTRL_REG, align 4
  %21 = call i32 @RD4(%struct.uart_bas* %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i64, i64* %6, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %18
  %25 = load i32, i32* @CDNC_UART_CTRL_REG_STARTBRK, align 4
  %26 = load i32, i32* %8, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* @CDNC_UART_CTRL_REG_STOPBRK, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  br label %40

32:                                               ; preds = %18
  %33 = load i32, i32* @CDNC_UART_CTRL_REG_STOPBRK, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @CDNC_UART_CTRL_REG_STARTBRK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %8, align 4
  br label %40

40:                                               ; preds = %32, %24
  %41 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %42 = load i32, i32* @CDNC_UART_CTRL_REG, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @WR4(%struct.uart_bas* %41, i32 %42, i32 %43)
  br label %67

45:                                               ; preds = %3
  %46 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %47 = load i32, i32* @CDNC_UART_MODEM_CTRL_REG, align 4
  %48 = call i32 @RD4(%struct.uart_bas* %46, i32 %47)
  store i32 %48, i32* %9, align 4
  %49 = load i64, i64* %6, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = load i32, i32* @CDNC_UART_MODEM_CTRL_REG_RTS, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %9, align 4
  br label %60

55:                                               ; preds = %45
  %56 = load i32, i32* @CDNC_UART_MODEM_CTRL_REG_RTS, align 4
  %57 = xor i32 %56, -1
  %58 = load i32, i32* %9, align 4
  %59 = and i32 %58, %57
  store i32 %59, i32* %9, align 4
  br label %60

60:                                               ; preds = %55, %51
  %61 = load %struct.uart_bas*, %struct.uart_bas** %7, align 8
  %62 = load i32, i32* @CDNC_UART_MODEM_CTRL_REG, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @WR4(%struct.uart_bas* %61, i32 %62, i32 %63)
  br label %67

65:                                               ; preds = %3
  %66 = load i32, i32* @EINVAL, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %65, %60, %40
  %68 = load %struct.uart_softc*, %struct.uart_softc** %4, align 8
  %69 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @uart_unlock(i32 %70)
  %72 = load i32, i32* %10, align 4
  ret i32 %72
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
