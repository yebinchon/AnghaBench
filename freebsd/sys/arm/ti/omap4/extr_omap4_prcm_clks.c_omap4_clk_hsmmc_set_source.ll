; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_hsmmc_set_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/ti/omap4/extr_omap4_prcm_clks.c_omap4_clk_hsmmc_set_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_clock_dev = type { i64 }
%struct.omap4_prcm_softc = type { %struct.resource* }
%struct.resource = type { i32 }
%struct.omap4_clk_details = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MMC3_CLK = common dso_local global i64 0, align 8
@MMC4_CLK = common dso_local global i64 0, align 8
@MMC5_CLK = common dso_local global i64 0, align 8
@F48MHZ_CLK = common dso_local global i64 0, align 8
@F64MHZ_CLK = common dso_local global i64 0, align 8
@F96MHZ_CLK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_clock_dev*, i64)* @omap4_clk_hsmmc_set_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap4_clk_hsmmc_set_source(%struct.ti_clock_dev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ti_clock_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.omap4_prcm_softc*, align 8
  %7 = alloca %struct.omap4_clk_details*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca i32, align 4
  store %struct.ti_clock_dev* %0, %struct.ti_clock_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %4, align 8
  %11 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call %struct.omap4_clk_details* @omap4_clk_details(i64 %12)
  store %struct.omap4_clk_details* %13, %struct.omap4_clk_details** %7, align 8
  %14 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %7, align 8
  %15 = icmp eq %struct.omap4_clk_details* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %3, align 4
  br label %93

18:                                               ; preds = %2
  %19 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %7, align 8
  %20 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32 %21)
  store %struct.omap4_prcm_softc* %22, %struct.omap4_prcm_softc** %6, align 8
  %23 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %6, align 8
  %24 = icmp eq %struct.omap4_prcm_softc* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %3, align 4
  br label %93

27:                                               ; preds = %18
  %28 = load %struct.omap4_prcm_softc*, %struct.omap4_prcm_softc** %6, align 8
  %29 = getelementptr inbounds %struct.omap4_prcm_softc, %struct.omap4_prcm_softc* %28, i32 0, i32 0
  %30 = load %struct.resource*, %struct.resource** %29, align 8
  store %struct.resource* %30, %struct.resource** %8, align 8
  %31 = load %struct.resource*, %struct.resource** %8, align 8
  %32 = icmp eq %struct.resource* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %3, align 4
  br label %93

35:                                               ; preds = %27
  %36 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %4, align 8
  %37 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MMC3_CLK, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %53, label %41

41:                                               ; preds = %35
  %42 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %4, align 8
  %43 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MMC4_CLK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %53, label %47

47:                                               ; preds = %41
  %48 = load %struct.ti_clock_dev*, %struct.ti_clock_dev** %4, align 8
  %49 = getelementptr inbounds %struct.ti_clock_dev, %struct.ti_clock_dev* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MMC5_CLK, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %47, %41, %35
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @F48MHZ_CLK, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %3, align 4
  br label %93

59:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %93

60:                                               ; preds = %47
  %61 = load %struct.resource*, %struct.resource** %8, align 8
  %62 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %7, align 8
  %63 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @bus_read_4(%struct.resource* %61, i32 %64)
  store i32 %65, i32* %9, align 4
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* @F64MHZ_CLK, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  %71 = sext i32 %70 to i64
  %72 = and i64 %71, -16777217
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  br label %86

74:                                               ; preds = %60
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @F96MHZ_CLK, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = or i64 %80, 16777216
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %9, align 4
  br label %85

83:                                               ; preds = %74
  %84 = load i32, i32* @EINVAL, align 4
  store i32 %84, i32* %3, align 4
  br label %93

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %69
  %87 = load %struct.resource*, %struct.resource** %8, align 8
  %88 = load %struct.omap4_clk_details*, %struct.omap4_clk_details** %7, align 8
  %89 = getelementptr inbounds %struct.omap4_clk_details, %struct.omap4_clk_details* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @bus_write_4(%struct.resource* %87, i32 %90, i32 %91)
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %86, %83, %59, %57, %33, %25, %16
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local %struct.omap4_clk_details* @omap4_clk_details(i64) #1

declare dso_local %struct.omap4_prcm_softc* @omap4_prcm_get_instance_softc(i32) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i32) #1

declare dso_local i32 @bus_write_4(%struct.resource*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
