; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_generic_get_source_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_generic_get_source_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_clock_dev = type { i32 }
%struct.omap4_clk_details = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*, i32*)* @omap4_clk_generic_get_source_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_clk_generic_get_source_freq(%struct.ti_clock_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_clock_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.omap4_clk_details*, align 8
  store %struct.ti_clock_dev* %0, %struct.ti_clock_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %4, align 8
  %8 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.omap4_clk_details* @omap4_clk_details(i32 %9)
  store %struct.omap4_clk_details* %10, %struct.omap4_clk_details** %6, align 8
  %11 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %6, align 8
  %12 = icmp eq %struct.omap4_clk_details* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %3, align 4
  br label %25

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %6, align 8
  %20 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = trunc i64 %21 to i32
  %23 = load i32*, i32** %5, align 8
  store i32 %22, i32* %23, align 4
  br label %24

24:                                               ; preds = %18, %15
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.omap4_clk_details* @omap4_clk_details(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
