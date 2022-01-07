; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_uart_console.c_uart_cninit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_uart_console.c_uart_cninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.consdev = type { i32 }

@AML_UART_CONTROL_REG = common dso_local global i32 0, align 4
@AML_UART_CONTROL_TX_INT_EN = common dso_local global i32 0, align 4
@AML_UART_CONTROL_RX_INT_EN = common dso_local global i32 0, align 4
@AML_UART_CONTROL_TX_RST = common dso_local global i32 0, align 4
@AML_UART_CONTROL_RX_RST = common dso_local global i32 0, align 4
@AML_UART_CONTROL_TWO_WIRE_EN = common dso_local global i32 0, align 4
@AML_UART_CONTROL_TX_EN = common dso_local global i32 0, align 4
@AML_UART_CONTROL_RX_EN = common dso_local global i32 0, align 4
@AML_UART_MISC_REG = common dso_local global i32 0, align 4
@AML_UART_MISC_RECV_IRQ_CNT_MASK = common dso_local global i32 0, align 4
@early_putc = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.consdev*)* @uart_cninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uart_cninit(%struct.consdev* %0) #0 {
  %2 = alloca %struct.consdev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.consdev* %0, %struct.consdev** %2, align 8
  %5 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %6 = call i32 @ub_getreg(i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* @AML_UART_CONTROL_TX_INT_EN, align 4
  %8 = load i32, i32* @AML_UART_CONTROL_RX_INT_EN, align 4
  %9 = or i32 %7, %8
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @AML_UART_CONTROL_TX_RST, align 4
  %14 = load i32, i32* @AML_UART_CONTROL_RX_RST, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* %3, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* @AML_UART_CONTROL_TWO_WIRE_EN, align 4
  %19 = load i32, i32* %3, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* @AML_UART_CONTROL_TX_EN, align 4
  %22 = load i32, i32* @AML_UART_CONTROL_RX_EN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @ub_setreg(i32 %26, i32 %27)
  %29 = load i32, i32* @AML_UART_MISC_REG, align 4
  %30 = call i32 @ub_getreg(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* @AML_UART_MISC_RECV_IRQ_CNT_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %4, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %4, align 4
  %35 = load i32, i32* @AML_UART_MISC_REG, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ub_setreg(i32 %35, i32 %36)
  %38 = load i32, i32* @AML_UART_CONTROL_TX_RST, align 4
  %39 = load i32, i32* @AML_UART_CONTROL_RX_RST, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %3, align 4
  %44 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @ub_setreg(i32 %44, i32 %45)
  ret void
}

declare dso_local i32 @ub_getreg(i32) #1

declare dso_local i32 @ub_setreg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
