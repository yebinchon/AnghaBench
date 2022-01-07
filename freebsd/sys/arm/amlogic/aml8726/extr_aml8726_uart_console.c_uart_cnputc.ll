; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_uart_console.c_uart_cnputc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_uart_console.c_uart_cnputc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.consdev = type { i32 }

@AML_UART_STATUS_REG = common dso_local global i32 0, align 4
@AML_UART_STATUS_TX_FIFO_FULL = common dso_local global i32 0, align 4
@AML_UART_WFIFO_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*, i32)* @uart_cnputc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_cnputc(%struct.consdev* %0, i32 %1) #0 {
  %3 = alloca %struct.consdev*, align 8
  %4 = alloca i32, align 4
  store %struct.consdev* %0, %struct.consdev** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %11, %2
  %6 = load i32, i32* @AML_UART_STATUS_REG, align 4
  %7 = call i32 @ub_getreg(i32 %6)
  %8 = load i32, i32* @AML_UART_STATUS_TX_FIFO_FULL, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %5
  %12 = call i32 (...) @cpu_spinwait()
  br label %5

13:                                               ; preds = %5
  %14 = load i32, i32* @AML_UART_WFIFO_REG, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @ub_setreg(i32 %14, i32 %15)
  ret void
}

declare dso_local i32 @ub_getreg(i32) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @ub_setreg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
