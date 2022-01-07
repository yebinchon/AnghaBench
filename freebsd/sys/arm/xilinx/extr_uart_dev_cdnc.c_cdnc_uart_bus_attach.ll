; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_uart_dev_cdnc.c_cdnc_uart_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/xilinx/extr_uart_dev_cdnc.c_cdnc_uart_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { %struct.uart_devinfo*, %struct.uart_bas }
%struct.uart_devinfo = type { i32, i32, i32, i32 }
%struct.uart_bas = type { i32 }

@CDNC_UART_IEN_REG = common dso_local global i32 0, align 4
@CDNC_UART_INT_RXTRIG = common dso_local global i32 0, align 4
@CDNC_UART_INT_RXTMOUT = common dso_local global i32 0, align 4
@CDNC_UART_INT_TXOVR = common dso_local global i32 0, align 4
@CDNC_UART_INT_RXOVR = common dso_local global i32 0, align 4
@CDNC_UART_INT_DMSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @cdnc_uart_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cdnc_uart_bus_attach(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca %struct.uart_devinfo*, align 8
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %5 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %6 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %5, i32 0, i32 1
  store %struct.uart_bas* %6, %struct.uart_bas** %3, align 8
  %7 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %8 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %7, i32 0, i32 0
  %9 = load %struct.uart_devinfo*, %struct.uart_devinfo** %8, align 8
  %10 = icmp ne %struct.uart_devinfo* %9, null
  br i1 %10, label %11, label %29

11:                                               ; preds = %1
  %12 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %13 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %12, i32 0, i32 0
  %14 = load %struct.uart_devinfo*, %struct.uart_devinfo** %13, align 8
  store %struct.uart_devinfo* %14, %struct.uart_devinfo** %4, align 8
  %15 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %16 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %17 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %20 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %23 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.uart_devinfo*, %struct.uart_devinfo** %4, align 8
  %26 = getelementptr inbounds %struct.uart_devinfo, %struct.uart_devinfo* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cdnc_uart_set_params(%struct.uart_bas* %15, i32 %18, i32 %21, i32 %24, i32 %27)
  br label %32

29:                                               ; preds = %1
  %30 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %31 = call i32 @cdnc_uart_hw_init(%struct.uart_bas* %30)
  br label %32

32:                                               ; preds = %29, %11
  %33 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %34 = call i32 @cdnc_uart_bus_getsig(%struct.uart_softc* %33)
  %35 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %36 = load i32, i32* @CDNC_UART_IEN_REG, align 4
  %37 = load i32, i32* @CDNC_UART_INT_RXTRIG, align 4
  %38 = load i32, i32* @CDNC_UART_INT_RXTMOUT, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @CDNC_UART_INT_TXOVR, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @CDNC_UART_INT_RXOVR, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @CDNC_UART_INT_DMSI, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @WR4(%struct.uart_bas* %35, i32 %36, i32 %45)
  ret i32 0
}

declare dso_local i32 @cdnc_uart_set_params(%struct.uart_bas*, i32, i32, i32, i32) #1

declare dso_local i32 @cdnc_uart_hw_init(%struct.uart_bas*) #1

declare dso_local i32 @cdnc_uart_bus_getsig(%struct.uart_softc*) #1

declare dso_local i32 @WR4(%struct.uart_bas*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
