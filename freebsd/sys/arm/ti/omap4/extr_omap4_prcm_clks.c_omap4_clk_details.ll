; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_details.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_details.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap4_clk_details = type { i64 }

@g_omap4_clk_details = common dso_local global %struct.omap4_clk_details* null, align 8
@INVALID_CLK_IDENT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.omap4_clk_details* (i64)* @omap4_clk_details to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.omap4_clk_details* @omap4_clk_details(i64 %0) #0 {
  %2 = alloca %struct.omap4_clk_details*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.omap4_clk_details*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** @g_omap4_clk_details, align 8
  store %struct.omap4_clk_details* %5, %struct.omap4_clk_details** %4, align 8
  br label %6

6:                                                ; preds = %21, %1
  %7 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %4, align 8
  %8 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @INVALID_CLK_IDENT, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %24

12:                                               ; preds = %6
  %13 = load i64, i64* %3, align 8
  %14 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %4, align 8
  %15 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp eq i64 %13, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %4, align 8
  store %struct.omap4_clk_details* %19, %struct.omap4_clk_details** %2, align 8
  br label %25

20:                                               ; preds = %12
  br label %21

21:                                               ; preds = %20
  %22 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %4, align 8
  %23 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %22, i32 1
  store %struct.omap4_clk_details* %23, %struct.omap4_clk_details** %4, align 8
  br label %6

24:                                               ; preds = %6
  store %struct.omap4_clk_details* null, %struct.omap4_clk_details** %2, align 8
  br label %25

25:                                               ; preds = %24, %18
  %26 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %2, align 8
  ret %struct.omap4_clk_details* %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
