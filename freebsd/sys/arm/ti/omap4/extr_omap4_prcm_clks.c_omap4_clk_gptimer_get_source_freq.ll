; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_gptimer_get_source_freq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_gptimer_get_source_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_clock_dev = type { i32 }
%struct.omap4_prcm_softc = type { %struct.resource* }
%struct.resource = type { i32 }
%struct.omap4_clk_details = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FREQ_32KHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*, i32*)* @omap4_clk_gptimer_get_source_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_clk_gptimer_get_source_freq(%struct.ti_clock_dev* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_clock_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.omap4_prcm_softc*, align 8
  %7 = alloca %struct.omap4_clk_details*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ti_clock_dev* %0, %struct.ti_clock_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %4, align 8
  %12 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.omap4_clk_details* @omap4_clk_details(i32 %13)
  store %struct.omap4_clk_details* %14, %struct.omap4_clk_details** %7, align 8
  %15 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %7, align 8
  %16 = icmp eq %struct.omap4_clk_details* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @ENXIO, align 4
  store i32 %18, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %7, align 8
  %21 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32 %22)
  store %struct.omap4_prcm_softc* %23, %struct.omap4_prcm_softc** %6, align 8
  %24 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %6, align 8
  %25 = icmp eq %struct.omap4_prcm_softc* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %3, align 4
  br label %57

28:                                               ; preds = %19
  %29 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %6, align 8
  %30 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %29, i32 0, i32 0
  %31 = load %struct.resource*, %struct.resource** %30, align 8
  store %struct.resource* %31, %struct.resource** %8, align 8
  %32 = load %struct.resource*, %struct.resource** %8, align 8
  %33 = icmp eq %struct.resource* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %3, align 4
  br label %57

36:                                               ; preds = %28
  %37 = load %struct.resource*, %struct.resource** %8, align 8
  %38 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %7, align 8
  %39 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @bus_read_4(%struct.resource* %37, i32 %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = and i64 %43, 16777216
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @FREQ_32KHZ, align 4
  store i32 %47, i32* %10, align 4
  br label %50

48:                                               ; preds = %36
  %49 = call i32 @omap4_clk_get_sysclk_freq(i32* null, i32* %10)
  br label %50

50:                                               ; preds = %48, %46
  %51 = load i32*, i32** %5, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %10, align 4
  %55 = load i32*, i32** %5, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %34, %26, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.omap4_clk_details* @omap4_clk_details(i32) #1

declare dso_local %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i32) #1

declare dso_local i32 @omap4_clk_get_sysclk_freq(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
