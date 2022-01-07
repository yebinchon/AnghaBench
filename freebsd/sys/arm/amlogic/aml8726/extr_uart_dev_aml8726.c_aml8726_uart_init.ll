; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_uart_dev_aml8726.c_aml8726_uart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_bas = type { i32 }

@AML_UART_CONTROL_REG = common dso_local global i32 0, align 4
@AML_UART_CONTROL_TX_INT_EN = common dso_local global i32 0, align 4
@AML_UART_CONTROL_RX_INT_EN = common dso_local global i32 0, align 4
@AML_UART_CONTROL_TX_RST = common dso_local global i32 0, align 4
@AML_UART_CONTROL_RX_RST = common dso_local global i32 0, align 4
@AML_UART_CONTROL_TX_EN = common dso_local global i32 0, align 4
@AML_UART_CONTROL_RX_EN = common dso_local global i32 0, align 4
@AML_UART_MISC_REG = common dso_local global i32 0, align 4
@AML_UART_MISC_RECV_IRQ_CNT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_bas*, i32, i32, i32, i32)* @aml8726_uart_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_uart_init(%struct.uart_bas* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.uart_bas*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.uart_bas* %0, %struct.uart_bas** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %10, align 4
  %18 = call i32 @aml8726_uart_param(%struct.uart_bas* %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %20 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %21 = call i32 @uart_getreg(%struct.uart_bas* %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* @AML_UART_CONTROL_TX_INT_EN, align 4
  %23 = load i32, i32* @AML_UART_CONTROL_RX_INT_EN, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %11, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* @AML_UART_CONTROL_TX_RST, align 4
  %29 = load i32, i32* @AML_UART_CONTROL_RX_RST, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @AML_UART_CONTROL_TX_EN, align 4
  %34 = load i32, i32* @AML_UART_CONTROL_RX_EN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  %38 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %39 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %40 = load i32, i32* %11, align 4
  %41 = call i32 @uart_setreg(%struct.uart_bas* %38, i32 %39, i32 %40)
  %42 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %43 = call i32 @uart_barrier(%struct.uart_bas* %42)
  %44 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %45 = load i32, i32* @AML_UART_MISC_REG, align 4
  %46 = call i32 @uart_getreg(%struct.uart_bas* %44, i32 %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @AML_UART_MISC_RECV_IRQ_CNT_MASK, align 4
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %12, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %12, align 4
  %51 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %52 = load i32, i32* @AML_UART_MISC_REG, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @uart_setreg(%struct.uart_bas* %51, i32 %52, i32 %53)
  %55 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %56 = call i32 @uart_barrier(%struct.uart_bas* %55)
  %57 = load i32, i32* @AML_UART_CONTROL_TX_RST, align 4
  %58 = load i32, i32* @AML_UART_CONTROL_RX_RST, align 4
  %59 = or i32 %57, %58
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %11, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %11, align 4
  %63 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %64 = load i32, i32* @AML_UART_CONTROL_REG, align 4
  %65 = load i32, i32* %11, align 4
  %66 = call i32 @uart_setreg(%struct.uart_bas* %63, i32 %64, i32 %65)
  %67 = load %struct.uart_bas*, %struct.uart_bas** %6, align 8
  %68 = call i32 @uart_barrier(%struct.uart_bas* %67)
  ret void
}

declare dso_local i32 @aml8726_uart_param(%struct.uart_bas*, i32, i32, i32, i32) #1

declare dso_local i32 @uart_getreg(%struct.uart_bas*, i32) #1

declare dso_local i32 @uart_setreg(%struct.uart_bas*, i32, i32) #1

declare dso_local i32 @uart_barrier(%struct.uart_bas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
