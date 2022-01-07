; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_pmc.c_tegra124_pmc_set_powergate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_pmc.c_tegra124_pmc_set_powergate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_pmc_softc = type { i32 }

@PMC_PWRGATE_STATUS = common dso_local global i32 0, align 4
@PMC_PWRGATE_TOGGLE = common dso_local global i32 0, align 4
@PMC_PWRGATE_TOGGLE_START = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Timeout when waiting for TOGGLE_START\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra124_pmc_softc*, i32, i32)* @tegra124_pmc_set_powergate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_pmc_set_powergate(%struct.tegra124_pmc_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra124_pmc_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tegra124_pmc_softc* %0, %struct.tegra124_pmc_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %5, align 8
  %11 = call i32 @PMC_LOCK(%struct.tegra124_pmc_softc* %10)
  %12 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %5, align 8
  %13 = load i32, i32* @PMC_PWRGATE_STATUS, align 4
  %14 = call i32 @RD4(%struct.tegra124_pmc_softc* %12, i32 %13)
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @PMC_PWRGATE_STATUS_PARTID(i32 %15)
  %17 = and i32 %14, %16
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %3
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %23
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %5, align 8
  %31 = call i32 @PMC_UNLOCK(%struct.tegra124_pmc_softc* %30)
  store i32 0, i32* %4, align 4
  br label %94

32:                                               ; preds = %26, %23
  store i32 100, i32* %9, align 4
  br label %33

33:                                               ; preds = %47, %32
  %34 = load i32, i32* %9, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %33
  %37 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %5, align 8
  %38 = load i32, i32* @PMC_PWRGATE_TOGGLE, align 4
  %39 = call i32 @RD4(%struct.tegra124_pmc_softc* %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @PMC_PWRGATE_TOGGLE_START, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %50

45:                                               ; preds = %36
  %46 = call i32 @DELAY(i32 1)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %9, align 4
  br label %33

50:                                               ; preds = %44, %33
  %51 = load i32, i32* %9, align 4
  %52 = icmp sle i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %5, align 8
  %55 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %58

58:                                               ; preds = %53, %50
  %59 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %5, align 8
  %60 = load i32, i32* @PMC_PWRGATE_TOGGLE, align 4
  %61 = load i32, i32* @PMC_PWRGATE_TOGGLE_START, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @PMC_PWRGATE_TOGGLE_PARTID(i32 %62)
  %64 = or i32 %61, %63
  %65 = call i32 @WR4(%struct.tegra124_pmc_softc* %59, i32 %60, i32 %64)
  store i32 100, i32* %9, align 4
  br label %66

66:                                               ; preds = %80, %58
  %67 = load i32, i32* %9, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %66
  %70 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %5, align 8
  %71 = load i32, i32* @PMC_PWRGATE_TOGGLE, align 4
  %72 = call i32 @RD4(%struct.tegra124_pmc_softc* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @PMC_PWRGATE_TOGGLE_START, align 4
  %75 = and i32 %73, %74
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %83

78:                                               ; preds = %69
  %79 = call i32 @DELAY(i32 1)
  br label %80

80:                                               ; preds = %78
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, -1
  store i32 %82, i32* %9, align 4
  br label %66

83:                                               ; preds = %77, %66
  %84 = load i32, i32* %9, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %5, align 8
  %88 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @device_printf(i32 %89, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %86, %83
  %92 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %5, align 8
  %93 = call i32 @PMC_UNLOCK(%struct.tegra124_pmc_softc* %92)
  store i32 0, i32* %4, align 4
  br label %94

94:                                               ; preds = %91, %29
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @PMC_LOCK(%struct.tegra124_pmc_softc*) #1

declare dso_local i32 @RD4(%struct.tegra124_pmc_softc*, i32) #1

declare dso_local i32 @PMC_PWRGATE_STATUS_PARTID(i32) #1

declare dso_local i32 @PMC_UNLOCK(%struct.tegra124_pmc_softc*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @WR4(%struct.tegra124_pmc_softc*, i32, i32) #1

declare dso_local i32 @PMC_PWRGATE_TOGGLE_PARTID(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
