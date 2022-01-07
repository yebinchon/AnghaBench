; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_efuse.c_tegra124_rev_sku_to_speedo_ids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_efuse.c_tegra124_rev_sku_to_speedo_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_efuse_softc = type { i32 }
%struct.tegra_sku_info = type { i32, i32, i32, i32 }

@TEGRA124_THRESHOLD_INDEX_0 = common dso_local global i32 0, align 4
@TEGRA124_THRESHOLD_INDEX_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c" Unknown SKU ID %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_efuse_softc*, %struct.tegra_sku_info*, i32*)* @tegra124_rev_sku_to_speedo_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra124_rev_sku_to_speedo_ids(%struct.tegra_efuse_softc* %0, %struct.tegra_sku_info* %1, i32* %2) #0 {
  %4 = alloca %struct.tegra_efuse_softc*, align 8
  %5 = alloca %struct.tegra_sku_info*, align 8
  %6 = alloca i32*, align 8
  store %struct.tegra_efuse_softc* %0, %struct.tegra_efuse_softc** %4, align 8
  store %struct.tegra_sku_info* %1, %struct.tegra_sku_info** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %5, align 8
  %8 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %7, i32 0, i32 0
  store i32 0, i32* %8, align 4
  %9 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %5, align 8
  %10 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %9, i32 0, i32 1
  store i32 0, i32* %10, align 4
  %11 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %5, align 8
  %12 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %11, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* @TEGRA124_THRESHOLD_INDEX_0, align 4
  %14 = load i32*, i32** %6, align 8
  store i32 %13, i32* %14, align 4
  %15 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %5, align 8
  %16 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %49 [
    i32 0, label %18
    i32 15, label %18
    i32 35, label %18
    i32 131, label %19
    i32 31, label %22
    i32 135, label %22
    i32 39, label %22
    i32 129, label %31
    i32 33, label %31
    i32 7, label %31
    i32 73, label %40
    i32 74, label %40
    i32 72, label %40
  ]

18:                                               ; preds = %3, %3, %3
  br label %57

19:                                               ; preds = %3
  %20 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %5, align 8
  %21 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %20, i32 0, i32 0
  store i32 2, i32* %21, align 4
  br label %57

22:                                               ; preds = %3, %3, %3
  %23 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %5, align 8
  %24 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %23, i32 0, i32 0
  store i32 2, i32* %24, align 4
  %25 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %5, align 8
  %26 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %25, i32 0, i32 1
  store i32 0, i32* %26, align 4
  %27 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %5, align 8
  %28 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %27, i32 0, i32 2
  store i32 1, i32* %28, align 4
  %29 = load i32, i32* @TEGRA124_THRESHOLD_INDEX_0, align 4
  %30 = load i32*, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  br label %57

31:                                               ; preds = %3, %3, %3
  %32 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %5, align 8
  %33 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %32, i32 0, i32 0
  store i32 1, i32* %33, align 4
  %34 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %5, align 8
  %35 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %5, align 8
  %37 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %36, i32 0, i32 2
  store i32 1, i32* %37, align 4
  %38 = load i32, i32* @TEGRA124_THRESHOLD_INDEX_1, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  br label %57

40:                                               ; preds = %3, %3, %3
  %41 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %5, align 8
  %42 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %41, i32 0, i32 0
  store i32 4, i32* %42, align 4
  %43 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %5, align 8
  %44 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %43, i32 0, i32 1
  store i32 2, i32* %44, align 4
  %45 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %5, align 8
  %46 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %45, i32 0, i32 2
  store i32 3, i32* %46, align 4
  %47 = load i32, i32* @TEGRA124_THRESHOLD_INDEX_1, align 4
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  br label %57

49:                                               ; preds = %3
  %50 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %4, align 8
  %51 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %5, align 8
  %54 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %49, %40, %31, %22, %19, %18
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
