; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos_uart.c_exynos4210_putc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/samsung/exynos/extr_exynos_uart.c_exynos4210_putc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32, i32 }

@SSCOM_UFSTAT = common dso_local global i32 0, align 4
@UFSTAT_TXFULL = common dso_local global i32 0, align 4
@SSCOM_UTXH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32)* @exynos4210_putc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos4210_putc(%struct.uart_bas* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %18, %2
  %6 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %7 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %10 = getelementptr inbounds %struct.uart_bas, %struct.uart_bas* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SSCOM_UFSTAT, align 4
  %13 = call i32 @bus_space_read_4(i32 %8, i32 %11, i32 %12)
  %14 = load i32, i32* @UFSTAT_TXFULL, align 4
  %15 = and i32 %13, %14
  %16 = load i32, i32* @UFSTAT_TXFULL, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %5
  br label %5

19:                                               ; preds = %5
  %20 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %21 = load i32, i32* @SSCOM_UTXH, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @uart_setreg(%struct.uart_bas* %20, i32 %21, i32 %22)
  ret void
}

declare dso_local i32 @bus_space_read_4(i32, i32, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
