; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_pmc.c_tegra124_pmc_parse_fdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_pmc.c_tegra124_pmc_parse_fdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra124_pmc_softc = type { i64, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [20 x i8] c"nvidia,suspend-mode\00", align 1
@TEGRA_SUSPEND_LP0 = common dso_local global i64 0, align 8
@TEGRA_SUSPEND_LP1 = common dso_local global i8* null, align 8
@TEGRA_SUSPEND_LP2 = common dso_local global i64 0, align 8
@TEGRA_SUSPEND_NONE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"nvidia,cpu-pwr-good-time\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"nvidia,cpu-pwr-off-time\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"nvidia,core-pwr-good-time\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"nvidia,core-pwr-off-time\00", align 1
@.str.5 = private unnamed_addr constant [34 x i8] c"nvidia,core-power-req-active-high\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"nvidia,sys-clock-req-active-high\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"nvidia,combined-power-req\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"nvidia,cpu-pwr-good-en\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"nvidia,lp0-vec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra124_pmc_softc*, i32)* @tegra124_pmc_parse_fdt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra124_pmc_parse_fdt(%struct.tegra124_pmc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.tegra124_pmc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %struct.tegra124_pmc_softc* %0, %struct.tegra124_pmc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @OF_getencprop(i32 %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %6, i32 4)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %27 [
    i32 0, label %14
    i32 1, label %18
    i32 2, label %23
  ]

14:                                               ; preds = %12
  %15 = load i64, i64* @TEGRA_SUSPEND_LP0, align 8
  %16 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %17 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  br label %32

18:                                               ; preds = %12
  %19 = load i8*, i8** @TEGRA_SUSPEND_LP1, align 8
  %20 = ptrtoint i8* %19 to i64
  %21 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %22 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %32

23:                                               ; preds = %12
  %24 = load i64, i64* @TEGRA_SUSPEND_LP2, align 8
  %25 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %26 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %25, i32 0, i32 0
  store i64 %24, i64* %26, align 8
  br label %32

27:                                               ; preds = %12
  %28 = load i8*, i8** @TEGRA_SUSPEND_NONE, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %31 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %27, %23, %18, %14
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @OF_getencprop(i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %6, i32 4)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %41 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load i8*, i8** @TEGRA_SUSPEND_NONE, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %45 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %38, %33
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @OF_getencprop(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %6, i32 4)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %46
  %52 = load i32, i32* %6, align 4
  %53 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %54 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  %55 = load i8*, i8** @TEGRA_SUSPEND_NONE, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %58 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %51, %46
  %60 = load i32, i32* %4, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %62 = call i32 @OF_getencprop(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32* %61, i32 8)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = icmp eq i64 %64, 8
  br i1 %65, label %66, label %79

66:                                               ; preds = %59
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %70 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %69, i32 0, i32 3
  store i32 %68, i32* %70, align 8
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %74 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 4
  %75 = load i8*, i8** @TEGRA_SUSPEND_NONE, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %78 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %66, %59
  %80 = load i32, i32* %4, align 4
  %81 = call i32 @OF_getencprop(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32* %6, i32 4)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %79
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %87 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 8
  %88 = load i8*, i8** @TEGRA_SUSPEND_NONE, align 8
  %89 = ptrtoint i8* %88 to i64
  %90 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %91 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %90, i32 0, i32 0
  store i64 %89, i64* %91, align 8
  br label %92

92:                                               ; preds = %84, %79
  %93 = load i32, i32* %4, align 4
  %94 = call i8* @OF_hasprop(i32 %93, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  %95 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %96 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %95, i32 0, i32 11
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %4, align 4
  %98 = call i8* @OF_hasprop(i32 %97, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0))
  %99 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %100 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %99, i32 0, i32 10
  store i8* %98, i8** %100, align 8
  %101 = load i32, i32* %4, align 4
  %102 = call i8* @OF_hasprop(i32 %101, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %103 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %104 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %103, i32 0, i32 9
  store i8* %102, i8** %104, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i8* @OF_hasprop(i32 %105, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %107 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %108 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %107, i32 0, i32 8
  store i8* %106, i8** %108, align 8
  %109 = load i32, i32* %4, align 4
  %110 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %111 = call i32 @OF_getencprop(i32 %109, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i32* %110, i32 8)
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = sext i32 %112 to i64
  %114 = icmp eq i64 %113, 8
  br i1 %114, label %115, label %138

115:                                              ; preds = %92
  %116 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %119 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %118, i32 0, i32 6
  store i32 %117, i32* %119, align 4
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %123 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %122, i32 0, i32 4
  store i32 %121, i32* %123, align 4
  %124 = load i8*, i8** @TEGRA_SUSPEND_NONE, align 8
  %125 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %126 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %125, i32 0, i32 7
  store i8* %124, i8** %126, align 8
  %127 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %128 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @TEGRA_SUSPEND_LP0, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %115
  %133 = load i8*, i8** @TEGRA_SUSPEND_LP1, align 8
  %134 = ptrtoint i8* %133 to i64
  %135 = load %struct.tegra124_pmc_softc*, %struct.tegra124_pmc_softc** %3, align 8
  %136 = getelementptr inbounds %struct.tegra124_pmc_softc, %struct.tegra124_pmc_softc* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  br label %137

137:                                              ; preds = %132, %115
  br label %138

138:                                              ; preds = %137, %92
  ret i32 0
}

declare dso_local i32 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i8* @OF_hasprop(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
