; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_cpufreq_set_clock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/freescale/imx/extr_imx6_anatop.c_cpufreq_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx6_anatop_softc = type { i64 }
%struct.oppt = type { i64, i32 }

@IMX6_ANALOG_CCM_PLL_ARM_CLR = common dso_local global i32 0, align 4
@IMX6_ANALOG_CCM_PLL_ARM_CLK_SRC_MASK = common dso_local global i32 0, align 4
@IMX6_ANALOG_CCM_PLL_ARM_SET = common dso_local global i32 0, align 4
@IMX6_ANALOG_CCM_PLL_ARM_BYPASS = common dso_local global i32 0, align 4
@IMX6_ANALOG_CCM_PLL_ARM = common dso_local global i32 0, align 4
@IMX6_ANALOG_CCM_PLL_ARM_DIV_MASK = common dso_local global i32 0, align 4
@IMX6_ANALOG_CCM_PLL_ARM_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"imx6_set_cpu_clock(): PLL never locked\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx6_anatop_softc*, %struct.oppt*)* @cpufreq_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpufreq_set_clock(%struct.imx6_anatop_softc* %0, %struct.oppt* %1) #0 {
  %3 = alloca %struct.imx6_anatop_softc*, align 8
  %4 = alloca %struct.oppt*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.imx6_anatop_softc* %0, %struct.imx6_anatop_softc** %3, align 8
  store %struct.oppt* %1, %struct.oppt** %4, align 8
  %9 = load %struct.oppt*, %struct.oppt** %4, align 8
  %10 = getelementptr inbounds %struct.oppt, %struct.oppt* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %13 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %18 = load %struct.oppt*, %struct.oppt** %4, align 8
  %19 = getelementptr inbounds %struct.oppt, %struct.oppt* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @vdd_set(%struct.imx6_anatop_softc* %17, i32 %20)
  br label %22

22:                                               ; preds = %16, %2
  %23 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %24 = load %struct.oppt*, %struct.oppt** %4, align 8
  %25 = getelementptr inbounds %struct.oppt, %struct.oppt* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @cpufreq_mhz_to_div(%struct.imx6_anatop_softc* %23, i64 %26, i32* %5, i32* %6)
  %28 = load i32, i32* @IMX6_ANALOG_CCM_PLL_ARM_CLR, align 4
  %29 = load i32, i32* @IMX6_ANALOG_CCM_PLL_ARM_CLK_SRC_MASK, align 4
  %30 = call i32 @imx6_anatop_write_4(i32 %28, i32 %29)
  %31 = load i32, i32* @IMX6_ANALOG_CCM_PLL_ARM_SET, align 4
  %32 = load i32, i32* @IMX6_ANALOG_CCM_PLL_ARM_BYPASS, align 4
  %33 = call i32 @imx6_anatop_write_4(i32 %31, i32 %32)
  %34 = load i32, i32* @IMX6_ANALOG_CCM_PLL_ARM, align 4
  %35 = call i32 @imx6_anatop_read_4(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* @IMX6_ANALOG_CCM_PLL_ARM_DIV_MASK, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %8, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  %43 = load i32, i32* @IMX6_ANALOG_CCM_PLL_ARM, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @imx6_anatop_write_4(i32 %43, i32 %44)
  store i32 10000, i32* %7, align 4
  br label %46

46:                                               ; preds = %58, %22
  %47 = load i32, i32* @IMX6_ANALOG_CCM_PLL_ARM, align 4
  %48 = call i32 @imx6_anatop_read_4(i32 %47)
  %49 = load i32, i32* @IMX6_ANALOG_CCM_PLL_ARM_LOCK, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %46
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %7, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %56, %52
  br label %46

59:                                               ; preds = %46
  %60 = load i32, i32* @IMX6_ANALOG_CCM_PLL_ARM_CLR, align 4
  %61 = load i32, i32* @IMX6_ANALOG_CCM_PLL_ARM_BYPASS, align 4
  %62 = call i32 @imx6_anatop_write_4(i32 %60, i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = call i32 @imx_ccm_set_cacrr(i32 %63)
  %65 = load %struct.oppt*, %struct.oppt** %4, align 8
  %66 = getelementptr inbounds %struct.oppt, %struct.oppt* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %69 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp slt i64 %67, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %59
  %73 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %74 = load %struct.oppt*, %struct.oppt** %4, align 8
  %75 = getelementptr inbounds %struct.oppt, %struct.oppt* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @vdd_set(%struct.imx6_anatop_softc* %73, i32 %76)
  br label %78

78:                                               ; preds = %72, %59
  %79 = load %struct.oppt*, %struct.oppt** %4, align 8
  %80 = getelementptr inbounds %struct.oppt, %struct.oppt* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %83 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %82, i32 0, i32 0
  store i64 %81, i64* %83, align 8
  %84 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %85 = load %struct.imx6_anatop_softc*, %struct.imx6_anatop_softc** %3, align 8
  %86 = getelementptr inbounds %struct.imx6_anatop_softc, %struct.imx6_anatop_softc* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @cpufreq_actual_mhz(%struct.imx6_anatop_softc* %84, i64 %87)
  %89 = mul nsw i32 %88, 1000000
  %90 = sdiv i32 %89, 2
  %91 = call i32 @arm_tmr_change_frequency(i32 %90)
  ret void
}

declare dso_local i32 @vdd_set(%struct.imx6_anatop_softc*, i32) #1

declare dso_local i32 @cpufreq_mhz_to_div(%struct.imx6_anatop_softc*, i64, i32*, i32*) #1

declare dso_local i32 @imx6_anatop_write_4(i32, i32) #1

declare dso_local i32 @imx6_anatop_read_4(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @imx_ccm_set_cacrr(i32) #1

declare dso_local i32 @arm_tmr_change_frequency(i32) #1

declare dso_local i32 @cpufreq_actual_mhz(%struct.imx6_anatop_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
