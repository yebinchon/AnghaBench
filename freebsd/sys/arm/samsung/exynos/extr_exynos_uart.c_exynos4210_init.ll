; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos_uart.c_exynos4210_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos_uart.c_exynos4210_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i64 }

@DEF_CLK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"exynos4210_init: Invalid rclk\00", align 1
@SSCOM_UCON = common dso_local global i32 0, align 4
@SSCOM_UFCON = common dso_local global i32 0, align 4
@UFCON_TXTRIGGER_8 = common dso_local global i32 0, align 4
@UFCON_RXTRIGGER_8 = common dso_local global i32 0, align 4
@UFCON_TXFIFO_RESET = common dso_local global i32 0, align 4
@UFCON_RXFIFO_RESET = common dso_local global i32 0, align 4
@UFCON_FIFO_ENABLE = common dso_local global i32 0, align 4
@UCON_TXMODE_INT = common dso_local global i32 0, align 4
@UCON_RXMODE_INT = common dso_local global i32 0, align 4
@UCON_TOINT = common dso_local global i32 0, align 4
@SSCOM_UMCON = common dso_local global i32 0, align 4
@UMCON_RTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32, i32, i32, i32)* @exynos4210_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4210_init(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %12 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %5
  %16 = load i64, i64* @DEF_CLK, align 8
  %17 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %18 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %15, %5
  %20 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %21 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %27 = load i32, i32* @SSCOM_UCON, align 4
  %28 = call i32 @uart_setreg(%struct.uart_bas* %26, i32 %27, i32 0)
  %29 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %30 = load i32, i32* @SSCOM_UFCON, align 4
  %31 = load i32, i32* @UFCON_TXTRIGGER_8, align 4
  %32 = load i32, i32* @UFCON_RXTRIGGER_8, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @UFCON_TXFIFO_RESET, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @UFCON_RXFIFO_RESET, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @UFCON_FIFO_ENABLE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @uart_setreg(%struct.uart_bas* %29, i32 %30, i32 %39)
  %41 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 @exynos4210_uart_param(%struct.uart_bas* %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %48 = load i32, i32* @SSCOM_UCON, align 4
  %49 = load i32, i32* @UCON_TXMODE_INT, align 4
  %50 = load i32, i32* @UCON_RXMODE_INT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @UCON_TOINT, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @uart_setreg(%struct.uart_bas* %47, i32 %48, i32 %53)
  %55 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %56 = load i32, i32* @SSCOM_UMCON, align 4
  %57 = load i32, i32* @UMCON_RTS, align 4
  %58 = call i32 @uart_setreg(%struct.uart_bas* %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @exynos4210_uart_param(%struct.uart_bas*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
