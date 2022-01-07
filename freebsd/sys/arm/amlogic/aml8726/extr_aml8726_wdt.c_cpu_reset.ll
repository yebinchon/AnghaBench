; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_wdt.c_cpu_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_wdt.c_cpu_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@aml8726_wdt_sc = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [46 x i8] c"Reset hardware has not yet been initialized.\0A\00", align 1
@AML_WDT_RESET_REG = common dso_local global i32 0, align 4
@AML_WDT_CTRL_REG = common dso_local global i32 0, align 4
@AML_WDT_CTRL_CPU_WDRESET_MASK = common dso_local global i32 0, align 4
@AML_WDT_CTRL_EN = common dso_local global i32 0, align 4
@AML_WDT_CTRL_TERMINAL_CNT_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cpu_reset() #0 {
  %1 = load i32*, i32** @aml8726_wdt_sc, align 8
  %2 = icmp eq i32* %1, null
  br i1 %2, label %3, label %5

3:                                                ; preds = %0
  %4 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %18

5:                                                ; preds = %0
  %6 = load i32*, i32** @aml8726_wdt_sc, align 8
  %7 = load i32, i32* @AML_WDT_RESET_REG, align 4
  %8 = call i32 @CSR_WRITE_4(i32* %6, i32 %7, i32 0)
  %9 = load i32*, i32** @aml8726_wdt_sc, align 8
  %10 = load i32, i32* @AML_WDT_CTRL_REG, align 4
  %11 = load i32, i32* @AML_WDT_CTRL_CPU_WDRESET_MASK, align 4
  %12 = load i32, i32* @AML_WDT_CTRL_EN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @AML_WDT_CTRL_TERMINAL_CNT_SHIFT, align 4
  %15 = shl i32 10, %14
  %16 = or i32 %13, %15
  %17 = call i32 @CSR_WRITE_4(i32* %9, i32 %10, i32 %16)
  br label %18

18:                                               ; preds = %5, %3
  br label %19

19:                                               ; preds = %18, %19
  br label %19
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @CSR_WRITE_4(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
