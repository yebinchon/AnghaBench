; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos_uart.c_exynos4210_bus_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos_uart.c_exynos4210_bus_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_softc = type { i32, i32, %struct.TYPE_3__, i32, i32* }
%struct.TYPE_3__ = type { i32, i32 }

@SSCOM_UINTM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_softc*)* @exynos4210_bus_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos4210_bus_transmit(%struct.uart_softc* %0) #0 {
  %2 = alloca %struct.uart_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uart_softc* %0, %struct.uart_softc** %2, align 8
  %5 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %6 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @uart_lock(i32 %7)
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %29, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %12 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %9
  %16 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %17 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %16, i32 0, i32 2
  %18 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %19 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %18, i32 0, i32 4
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @exynos4210_putc(%struct.TYPE_3__* %17, i32 %24)
  %26 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %27 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %26, i32 0, i32 2
  %28 = call i32 @uart_barrier(%struct.TYPE_3__* %27)
  br label %29

29:                                               ; preds = %15
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %9

32:                                               ; preds = %9
  %33 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %34 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %33, i32 0, i32 1
  store i32 1, i32* %34, align 4
  %35 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %36 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @uart_unlock(i32 %37)
  %39 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %40 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %44 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @SSCOM_UINTM, align 4
  %48 = call i32 @bus_space_read_4(i32 %42, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, -5
  store i32 %50, i32* %4, align 4
  %51 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %52 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.uart_softc*, %struct.uart_softc** %2, align 8
  %56 = getelementptr inbounds %struct.uart_softc, %struct.uart_softc* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SSCOM_UINTM, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @bus_space_write_4(i32 %54, i32 %58, i32 %59, i32 %60)
  ret i32 0
}

declare dso_local i32 @uart_lock(i32) #1

declare dso_local i32 @exynos4210_putc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @uart_barrier(%struct.TYPE_3__*) #1

declare dso_local i32 @uart_unlock(i32) #1

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @bus_space_write_4(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
