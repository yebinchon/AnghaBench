; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_pmc.c_tegra_powergate_sequence_power_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_pmc.c_tegra_powergate_sequence_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_pmc_softc = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Cannot assert reset\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Cannot stop clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"Cannot power on powergate\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Cannot enable clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Cannot remove clamping\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Cannot unreset reset\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_powergate_sequence_power_up(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.tegra124_pmc_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call %struct.tegra124_pmc_softc* (...) @tegra124_pmc_get_sc()
  store %struct.tegra124_pmc_softc* %10, %struct.tegra124_pmc_softc** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @hwreset_assert(i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %8, align 8
  %17 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %4, align 4
  br label %82

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @clk_stop(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %8, align 8
  %28 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %76

31:                                               ; preds = %21
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @tegra_powergate_power_on(i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %8, align 8
  %38 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %76

41:                                               ; preds = %31
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @clk_enable(i32 %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %41
  %47 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %8, align 8
  %48 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  br label %76

51:                                               ; preds = %41
  %52 = call i32 @DELAY(i32 20)
  %53 = load i32, i32* %5, align 4
  %54 = call i32 @tegra_powergate_remove_clamping(i32 %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %8, align 8
  %59 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @device_printf(i32 %60, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  br label %73

62:                                               ; preds = %51
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @hwreset_deassert(i32 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %8, align 8
  %69 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %73

72:                                               ; preds = %62
  store i32 0, i32* %4, align 4
  br label %82

73:                                               ; preds = %67, %57
  %74 = load i32, i32* %6, align 4
  %75 = call i32 @clk_disable(i32 %74)
  br label %76

76:                                               ; preds = %73, %46, %36, %26
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @hwreset_assert(i32 %77)
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @tegra_powergate_power_off(i32 %79)
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %76, %72, %15
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local %struct.tegra124_pmc_softc* @tegra124_pmc_get_sc(...) #1

declare dso_local i32 @hwreset_assert(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clk_stop(i32) #1

declare dso_local i32 @tegra_powergate_power_on(i32) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @tegra_powergate_remove_clamping(i32) #1

declare dso_local i32 @hwreset_deassert(i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @tegra_powergate_power_off(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
