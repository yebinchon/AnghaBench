; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_pmc.c_tegra_powergate_remove_clamping.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_pmc.c_tegra_powergate_remove_clamping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_pmc_softc = type { i32 }

@TEGRA_POWERGATE_3D = common dso_local global i32 0, align 4
@PMC_GPU_RG_CNTRL = common dso_local global i32 0, align 4
@PMC_PWRGATE_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Attempt to remove clamping for unpowered partition.\0A\00", align 1
@TEGRA_POWERGATE_PCX = common dso_local global i32 0, align 4
@TEGRA_POWERGATE_VDE = common dso_local global i32 0, align 4
@PMC_REMOVE_CLAMPING_CMD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Timeout when remove clamping\0A\00", align 1
@PMC_CLAMP_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Cannot remove clamping\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_powergate_remove_clamping(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra124_pmc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call %struct.tegra124_pmc_softc* (...) @tegra124_pmc_get_sc()
  store %struct.tegra124_pmc_softc* %8, %struct.tegra124_pmc_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @TEGRA_POWERGATE_3D, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %14 = load i32, i32* @PMC_GPU_RG_CNTRL, align 4
  %15 = call i32 @WR4(%struct.tegra124_pmc_softc* %13, i32 %14, i32 0)
  store i32 0, i32* %2, align 4
  br label %86

16:                                               ; preds = %1
  %17 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %18 = load i32, i32* @PMC_PWRGATE_STATUS, align 4
  %19 = call i32 @RD4(%struct.tegra124_pmc_softc* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @PMC_PWRGATE_STATUS_PARTID(i32 %21)
  %23 = and i32 %20, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = call i32 @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %16
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @TEGRA_POWERGATE_PCX, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* @TEGRA_POWERGATE_VDE, align 4
  store i32 %32, i32* %6, align 4
  br label %42

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @TEGRA_POWERGATE_VDE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32, i32* @TEGRA_POWERGATE_PCX, align 4
  store i32 %38, i32* %6, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %3, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %31
  %43 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %44 = load i32, i32* @PMC_REMOVE_CLAMPING_CMD, align 4
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @PMC_REMOVE_CLAMPING_CMD_PARTID(i32 %45)
  %47 = call i32 @WR4(%struct.tegra124_pmc_softc* %43, i32 %44, i32 %46)
  store i32 100, i32* %7, align 4
  br label %48

48:                                               ; preds = %63, %42
  %49 = load i32, i32* %7, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %48
  %52 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %53 = load i32, i32* @PMC_REMOVE_CLAMPING_CMD, align 4
  %54 = call i32 @RD4(%struct.tegra124_pmc_softc* %52, i32 %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @PMC_REMOVE_CLAMPING_CMD_PARTID(i32 %56)
  %58 = and i32 %55, %57
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %51
  br label %66

61:                                               ; preds = %51
  %62 = call i32 @DELAY(i32 1)
  br label %63

63:                                               ; preds = %61
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %7, align 4
  br label %48

66:                                               ; preds = %60, %48
  %67 = load i32, i32* %7, align 4
  %68 = icmp sle i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %66
  %70 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %71 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @device_printf(i32 %72, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %66
  %75 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %76 = load i32, i32* @PMC_CLAMP_STATUS, align 4
  %77 = call i32 @RD4(%struct.tegra124_pmc_softc* %75, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @PMC_CLAMP_STATUS_PARTID(i32 %79)
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %74
  %84 = call i32 @panic(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %85

85:                                               ; preds = %83, %74
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %85, %12
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local %struct.tegra124_pmc_softc* @tegra124_pmc_get_sc(...) #1

declare dso_local i32 @WR4(%struct.tegra124_pmc_softc*, i32, i32) #1

declare dso_local i32 @RD4(%struct.tegra124_pmc_softc*, i32) #1

declare dso_local i32 @PMC_PWRGATE_STATUS_PARTID(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @PMC_REMOVE_CLAMPING_CMD_PARTID(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @PMC_CLAMP_STATUS_PARTID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
