; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_getc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_getc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }
%struct.mtx = type { i32 }

@AML_UART_STATUS_REG = common dso_local global i32 0, align 4
@AML_UART_STATUS_RX_FIFO_EMPTY = common dso_local global i32 0, align 4
@AML_UART_RFIFO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_bas*, %struct.mtx*)* @aml8726_uart_getc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aml8726_uart_getc(%struct.uart_bas* %0, %struct.mtx* %1) #0 {
  %3 = alloca %struct.uart_bas*, align 8
  %4 = alloca %struct.mtx*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %3, align 8
  store %struct.mtx* %1, %struct.mtx** %4, align 8
  %6 = load %struct.mtx*, %struct.mtx** %4, align 8
  %7 = call i32 @uart_lock(%struct.mtx* %6)
  br label %8

8:                                                ; preds = %15, %2
  %9 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %10 = load i32, i32* @AML_UART_STATUS_REG, align 4
  %11 = call i32 @uart_getreg(%struct.uart_bas* %9, i32 %10)
  %12 = load i32, i32* @AML_UART_STATUS_RX_FIFO_EMPTY, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %8
  %16 = load %struct.mtx*, %struct.mtx** %4, align 8
  %17 = call i32 @uart_unlock(%struct.mtx* %16)
  %18 = call i32 @DELAY(i32 4)
  %19 = load %struct.mtx*, %struct.mtx** %4, align 8
  %20 = call i32 @uart_lock(%struct.mtx* %19)
  br label %8

21:                                               ; preds = %8
  %22 = load %struct.uart_bas*, %struct.uart_bas** %3, align 8
  %23 = load i32, i32* @AML_UART_RFIFO_REG, align 4
  %24 = call i32 @uart_getreg(%struct.uart_bas* %22, i32 %23)
  %25 = and i32 %24, 255
  store i32 %25, i32* %5, align 4
  %26 = load %struct.mtx*, %struct.mtx** %4, align 8
  %27 = call i32 @uart_unlock(%struct.mtx* %26)
  %28 = load i32, i32* %5, align 4
  ret i32 %28
}

declare dso_local i32 @uart_lock(%struct.mtx*) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_unlock(%struct.mtx*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
