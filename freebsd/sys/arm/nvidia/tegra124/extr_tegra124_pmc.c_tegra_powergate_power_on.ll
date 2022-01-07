; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_pmc.c_tegra_powergate_power_on.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_pmc.c_tegra_powergate_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_pmc_softc = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Cannot set powergate: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Timeout when waiting on power up\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tegra_powergate_power_on(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra124_pmc_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = call %struct.tegra124_pmc_softc* (...) @tegra124_pmc_get_sc()
  store %struct.tegra124_pmc_softc* %7, %struct.tegra124_pmc_softc** %4, align 8
  %8 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @tegra124_pmc_set_powergate(%struct.tegra124_pmc_softc* %8, i32 %9, i32 1)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %15 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 (i32, i8*, ...) @device_printf(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %44

20:                                               ; preds = %1
  store i32 100, i32* %6, align 4
  br label %21

21:                                               ; preds = %31, %20
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = load i32, i32* %3, align 4
  %26 = call i64 @tegra_powergate_is_powered(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  br label %34

29:                                               ; preds = %24
  %30 = call i32 @DELAY(i32 1)
  br label %31

31:                                               ; preds = %29
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, -1
  store i32 %33, i32* %6, align 4
  br label %21

34:                                               ; preds = %28, %21
  %35 = load i32, i32* %6, align 4
  %36 = icmp sle i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %4, align 8
  %39 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, ...) @device_printf(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %34
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %44

44:                                               ; preds = %42, %13
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local %struct.tegra124_pmc_softc* @tegra124_pmc_get_sc(...) #1

declare dso_local i32 @tegra124_pmc_set_powergate(%struct.tegra124_pmc_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @tegra_powergate_is_powered(i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
