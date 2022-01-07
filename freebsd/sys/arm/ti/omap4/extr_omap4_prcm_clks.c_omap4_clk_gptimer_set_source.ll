; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_gptimer_set_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_gptimer_set_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_clock_dev = type { i32 }
%struct.omap4_prcm_softc = type { %struct.resource* }
%struct.resource = type { i32 }
%struct.omap4_clk_details = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*, i32)* @omap4_clk_gptimer_set_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_clk_gptimer_set_source(%struct.ti_clock_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_clock_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.omap4_prcm_softc*, align 8
  %7 = alloca %struct.omap4_clk_details*, align 8
  %8 = alloca %struct.resource*, align 8
  store %struct.ti_clock_dev* %0, %struct.ti_clock_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %4, align 8
  %10 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.omap4_clk_details* @omap4_clk_details(i32 %11)
  store %struct.omap4_clk_details* %12, %struct.omap4_clk_details** %7, align 8
  %13 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %7, align 8
  %14 = icmp eq %struct.omap4_clk_details* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %3, align 4
  br label %35

17:                                               ; preds = %2
  %18 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %7, align 8
  %19 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32 %20)
  store %struct.omap4_prcm_softc* %21, %struct.omap4_prcm_softc** %6, align 8
  %22 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %6, align 8
  %23 = icmp eq %struct.omap4_prcm_softc* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @ENXIO, align 4
  store i32 %25, i32* %3, align 4
  br label %35

26:                                               ; preds = %17
  %27 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %6, align 8
  %28 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %27, i32 0, i32 0
  %29 = load %struct.resource*, %struct.resource** %28, align 8
  store %struct.resource* %29, %struct.resource** %8, align 8
  %30 = load %struct.resource*, %struct.resource** %8, align 8
  %31 = icmp eq %struct.resource* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %32, %24, %15
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.omap4_clk_details* @omap4_clk_details(i32) #1

declare dso_local %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
