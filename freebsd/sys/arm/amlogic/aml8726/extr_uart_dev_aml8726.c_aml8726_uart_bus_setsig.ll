; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_bus_setsig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_bus_setsig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32 }

@SER_DDTR = common dso_local global i32 0, align 4
@SER_DTR = common dso_local global i32 0, align 4
@SER_DRTS = common dso_local global i32 0, align 4
@SER_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*, i32)* @aml8726_uart_bus_setsig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_uart_bus_setsig(%struct.uart_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %7

7:                                                ; preds = %38, %2
  %8 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %9 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @SER_DDTR, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %7
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @SER_DTR, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @SER_DTR, align 4
  %22 = load i32, i32* @SER_DDTR, align 4
  %23 = call i32 @SIGCHG(i32 %19, i32 %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %16, %7
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @SER_DRTS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @SER_RTS, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @SER_RTS, align 4
  %35 = load i32, i32* @SER_DRTS, align 4
  %36 = call i32 @SIGCHG(i32 %32, i32 %33, i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %29, %24
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.uart_softc*, %struct.uart_softc** %3, align 8
  %40 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @atomic_cmpset_32(i32* %40, i32 %41, i32 %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br i1 %45, label %7, label %46

46:                                               ; preds = %38
  ret i32 0
}

declare dso_local i32 @SIGCHG(i32, i32, i32, i32) #1

declare dso_local i32 @atomic_cmpset_32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
