; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_wdt.c_aml8726_wdt_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_wdt.c_aml8726_wdt_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_wdt_softc = type { i32 }

@WD_INTERVAL = common dso_local global i32 0, align 4
@AML_WDT_CTRL_TERMINAL_CNT_MASK = common dso_local global i32 0, align 4
@AML_WDT_CTRL_TERMINAL_CNT_SHIFT = common dso_local global i32 0, align 4
@AML_WDT_CTRL_CPU_WDRESET_MASK = common dso_local global i32 0, align 4
@AML_WDT_CTRL_EN = common dso_local global i32 0, align 4
@AML_WDT_RESET_REG = common dso_local global i32 0, align 4
@AML_WDT_CTRL_REG = common dso_local global i32 0, align 4
@AML_WDT_CTRL_IRQ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32*)* @aml8726_wdt_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_wdt_watchdog(i8* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.aml8726_wdt_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.aml8726_wdt_softc*
  store %struct.aml8726_wdt_softc* %11, %struct.aml8726_wdt_softc** %7, align 8
  %12 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %7, align 8
  %13 = call i32 @AML_WDT_LOCK(%struct.aml8726_wdt_softc* %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @WD_INTERVAL, align 4
  %16 = and i32 %14, %15
  %17 = shl i32 1, %16
  %18 = add nsw i32 %17, 9999
  %19 = sdiv i32 %18, 10000
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @AML_WDT_CTRL_TERMINAL_CNT_MASK, align 4
  %25 = load i32, i32* @AML_WDT_CTRL_TERMINAL_CNT_SHIFT, align 4
  %26 = ashr i32 %24, %25
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load i32, i32* @AML_WDT_CTRL_CPU_WDRESET_MASK, align 4
  %30 = load i32, i32* @AML_WDT_CTRL_EN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @AML_WDT_CTRL_TERMINAL_CNT_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = or i32 %31, %34
  store i32 %35, i32* %8, align 4
  %36 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %7, align 8
  %37 = load i32, i32* @AML_WDT_RESET_REG, align 4
  %38 = call i32 @CSR_WRITE_4(%struct.aml8726_wdt_softc* %36, i32 %37, i32 0)
  %39 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %7, align 8
  %40 = load i32, i32* @AML_WDT_CTRL_REG, align 4
  %41 = load i32, i32* %8, align 4
  %42 = call i32 @CSR_WRITE_4(%struct.aml8726_wdt_softc* %39, i32 %40, i32 %41)
  %43 = load i32*, i32** %6, align 8
  store i32 0, i32* %43, align 4
  br label %56

44:                                               ; preds = %22, %3
  %45 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %7, align 8
  %46 = load i32, i32* @AML_WDT_CTRL_REG, align 4
  %47 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %7, align 8
  %48 = load i32, i32* @AML_WDT_CTRL_REG, align 4
  %49 = call i32 @CSR_READ_4(%struct.aml8726_wdt_softc* %47, i32 %48)
  %50 = load i32, i32* @AML_WDT_CTRL_IRQ_EN, align 4
  %51 = load i32, i32* @AML_WDT_CTRL_EN, align 4
  %52 = or i32 %50, %51
  %53 = xor i32 %52, -1
  %54 = and i32 %49, %53
  %55 = call i32 @CSR_WRITE_4(%struct.aml8726_wdt_softc* %45, i32 %46, i32 %54)
  br label %56

56:                                               ; preds = %44, %28
  %57 = load %struct.aml8726_wdt_softc*, %struct.aml8726_wdt_softc** %7, align 8
  %58 = call i32 @AML_WDT_UNLOCK(%struct.aml8726_wdt_softc* %57)
  ret void
}

declare dso_local i32 @AML_WDT_LOCK(%struct.aml8726_wdt_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_wdt_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.aml8726_wdt_softc*, i32) #1

declare dso_local i32 @AML_WDT_UNLOCK(%struct.aml8726_wdt_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
