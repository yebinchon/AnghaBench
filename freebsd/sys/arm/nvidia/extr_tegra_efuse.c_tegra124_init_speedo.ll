; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_efuse.c_tegra124_init_speedo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_efuse.c_tegra124_init_speedo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_efuse_softc = type { i32 }
%struct.tegra_sku_info = type { i64, i64, i64, i32, i32, i32, i8*, i8*, i8*, i8* }

@TEGRA124_FUSE_SKU_INFO = common dso_local global i32 0, align 4
@TEGRA124_FUSE_SOC_IDDQ = common dso_local global i32 0, align 4
@TEGRA124_FUSE_CPU_IDDQ = common dso_local global i32 0, align 4
@TEGRA124_FUSE_GPU_IDDQ = common dso_local global i32 0, align 4
@TEGRA124_FUSE_SOC_SPEEDO_0 = common dso_local global i32 0, align 4
@TEGRA124_FUSE_CPU_SPEEDO_0 = common dso_local global i32 0, align 4
@TEGRA124_FUSE_CPU_SPEEDO_2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"CPU Speedo value is not fused.\0A\00", align 1
@TEGRA124_SOC_PROCESS_CORNERS = common dso_local global i32 0, align 4
@tegra124_soc_process_speedos = common dso_local global i64** null, align 8
@TEGRA124_CPU_PROCESS_CORNERS = common dso_local global i32 0, align 4
@tegra124_cpu_process_speedos = common dso_local global i64** null, align 8
@TEGRA124_GPU_PROCESS_CORNERS = common dso_local global i32 0, align 4
@tegra124_gpu_process_speedos = common dso_local global i64** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_efuse_softc*, %struct.tegra_sku_info*)* @tegra124_init_speedo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tegra124_init_speedo(%struct.tegra_efuse_softc* %0, %struct.tegra_sku_info* %1) #0 {
  %3 = alloca %struct.tegra_efuse_softc*, align 8
  %4 = alloca %struct.tegra_sku_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tegra_efuse_softc* %0, %struct.tegra_efuse_softc** %3, align 8
  store %struct.tegra_sku_info* %1, %struct.tegra_sku_info** %4, align 8
  %7 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %3, align 8
  %8 = load i32, i32* @TEGRA124_FUSE_SKU_INFO, align 4
  %9 = call i8* @RD4(%struct.tegra_efuse_softc* %7, i32 %8)
  %10 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %10, i32 0, i32 9
  store i8* %9, i8** %11, align 8
  %12 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %3, align 8
  %13 = load i32, i32* @TEGRA124_FUSE_SOC_IDDQ, align 4
  %14 = call i8* @RD4(%struct.tegra_efuse_softc* %12, i32 %13)
  %15 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %4, align 8
  %16 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %15, i32 0, i32 8
  store i8* %14, i8** %16, align 8
  %17 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %3, align 8
  %18 = load i32, i32* @TEGRA124_FUSE_CPU_IDDQ, align 4
  %19 = call i8* @RD4(%struct.tegra_efuse_softc* %17, i32 %18)
  %20 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %4, align 8
  %21 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %20, i32 0, i32 7
  store i8* %19, i8** %21, align 8
  %22 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %3, align 8
  %23 = load i32, i32* @TEGRA124_FUSE_GPU_IDDQ, align 4
  %24 = call i8* @RD4(%struct.tegra_efuse_softc* %22, i32 %23)
  %25 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %4, align 8
  %26 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %25, i32 0, i32 6
  store i8* %24, i8** %26, align 8
  %27 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %3, align 8
  %28 = load i32, i32* @TEGRA124_FUSE_SOC_SPEEDO_0, align 4
  %29 = call i8* @RD4(%struct.tegra_efuse_softc* %27, i32 %28)
  %30 = ptrtoint i8* %29 to i64
  %31 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %4, align 8
  %32 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %3, align 8
  %34 = load i32, i32* @TEGRA124_FUSE_CPU_SPEEDO_0, align 4
  %35 = call i8* @RD4(%struct.tegra_efuse_softc* %33, i32 %34)
  %36 = ptrtoint i8* %35 to i64
  %37 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %4, align 8
  %38 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %37, i32 0, i32 1
  store i64 %36, i64* %38, align 8
  %39 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %3, align 8
  %40 = load i32, i32* @TEGRA124_FUSE_CPU_SPEEDO_2, align 4
  %41 = call i8* @RD4(%struct.tegra_efuse_softc* %39, i32 %40)
  %42 = ptrtoint i8* %41 to i64
  %43 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %4, align 8
  %44 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %4, align 8
  %46 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %2
  %50 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %3, align 8
  %51 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @device_printf(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %139

54:                                               ; preds = %2
  %55 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %3, align 8
  %56 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %4, align 8
  %57 = call i32 @tegra124_rev_sku_to_speedo_ids(%struct.tegra_efuse_softc* %55, %struct.tegra_sku_info* %56, i32* %6)
  store i32 0, i32* %5, align 4
  br label %58

58:                                               ; preds = %78, %54
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @TEGRA124_SOC_PROCESS_CORNERS, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %4, align 8
  %64 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64**, i64*** @tegra124_soc_process_speedos, align 8
  %67 = load i32, i32* %6, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64*, i64** %66, i64 %68
  %70 = load i64*, i64** %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = icmp slt i64 %65, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %81

77:                                               ; preds = %62
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %5, align 4
  br label %58

81:                                               ; preds = %76, %58
  %82 = load i32, i32* %5, align 4
  %83 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %4, align 8
  %84 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 8
  store i32 0, i32* %5, align 4
  br label %85

85:                                               ; preds = %105, %81
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @TEGRA124_CPU_PROCESS_CORNERS, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %108

89:                                               ; preds = %85
  %90 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %4, align 8
  %91 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64**, i64*** @tegra124_cpu_process_speedos, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64*, i64** %93, i64 %95
  %97 = load i64*, i64** %96, align 8
  %98 = load i32, i32* %5, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %97, i64 %99
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %92, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  br label %108

104:                                              ; preds = %89
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %5, align 4
  br label %85

108:                                              ; preds = %103, %85
  %109 = load i32, i32* %5, align 4
  %110 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %4, align 8
  %111 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %110, i32 0, i32 4
  store i32 %109, i32* %111, align 4
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %132, %108
  %113 = load i32, i32* %5, align 4
  %114 = load i32, i32* @TEGRA124_GPU_PROCESS_CORNERS, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %135

116:                                              ; preds = %112
  %117 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %4, align 8
  %118 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64**, i64*** @tegra124_gpu_process_speedos, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i64*, i64** %120, i64 %122
  %124 = load i64*, i64** %123, align 8
  %125 = load i32, i32* %5, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i64, i64* %124, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %119, %128
  br i1 %129, label %130, label %131

130:                                              ; preds = %116
  br label %135

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %112

135:                                              ; preds = %130, %112
  %136 = load i32, i32* %5, align 4
  %137 = load %struct.tegra_sku_info*, %struct.tegra_sku_info** %4, align 8
  %138 = getelementptr inbounds %struct.tegra_sku_info, %struct.tegra_sku_info* %137, i32 0, i32 5
  store i32 %136, i32* %138, align 8
  br label %139

139:                                              ; preds = %135, %49
  ret void
}

declare dso_local i8* @RD4(%struct.tegra_efuse_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @tegra124_rev_sku_to_speedo_ids(%struct.tegra_efuse_softc*, %struct.tegra_sku_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
