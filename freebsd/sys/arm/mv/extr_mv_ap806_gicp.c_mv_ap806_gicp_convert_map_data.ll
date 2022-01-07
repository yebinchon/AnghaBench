; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_gicp.c_mv_ap806_gicp_convert_map_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_gicp.c_mv_ap806_gicp_convert_map_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_ap806_gicp_softc = type { i32, i64*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64* }
%struct.intr_map_data = type { i32 }
%struct.intr_map_data_fdt = type { i32, i64* }

@MV_AP806_GICP_MAX_NIRQS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intr_map_data* (%struct.mv_ap806_gicp_softc*, %struct.intr_map_data*)* @mv_ap806_gicp_convert_map_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intr_map_data* @mv_ap806_gicp_convert_map_data(%struct.mv_ap806_gicp_softc* %0, %struct.intr_map_data* %1) #0 {
  %3 = alloca %struct.intr_map_data*, align 8
  %4 = alloca %struct.mv_ap806_gicp_softc*, align 8
  %5 = alloca %struct.intr_map_data*, align 8
  %6 = alloca %struct.intr_map_data_fdt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mv_ap806_gicp_softc* %0, %struct.mv_ap806_gicp_softc** %4, align 8
  store %struct.intr_map_data* %1, %struct.intr_map_data** %5, align 8
  %10 = load %struct.intr_map_data*, %struct.intr_map_data** %5, align 8
  %11 = bitcast %struct.intr_map_data* %10 to %struct.intr_map_data_fdt*
  store %struct.intr_map_data_fdt* %11, %struct.intr_map_data_fdt** %6, align 8
  %12 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %6, align 8
  %13 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 2
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store %struct.intr_map_data* null, %struct.intr_map_data** %3, align 8
  br label %102

17:                                               ; preds = %2
  %18 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %6, align 8
  %19 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %6, align 8
  %24 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %23, i32 0, i32 1
  %25 = load i64*, i64** %24, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @MV_AP806_GICP_MAX_NIRQS, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store %struct.intr_map_data* null, %struct.intr_map_data** %3, align 8
  br label %102

32:                                               ; preds = %17
  %33 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %4, align 8
  %34 = getelementptr inbounds %struct.mv_ap806_gicp_softc, %struct.mv_ap806_gicp_softc* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  store i32 3, i32* %36, align 8
  %37 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %4, align 8
  %38 = getelementptr inbounds %struct.mv_ap806_gicp_softc, %struct.mv_ap806_gicp_softc* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  store i64 0, i64* %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %4, align 8
  %45 = getelementptr inbounds %struct.mv_ap806_gicp_softc, %struct.mv_ap806_gicp_softc* %44, i32 0, i32 2
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  store i64 %43, i64* %49, align 8
  store i64 0, i64* %7, align 8
  br label %50

50:                                               ; preds = %86, %32
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %4, align 8
  %53 = getelementptr inbounds %struct.mv_ap806_gicp_softc, %struct.mv_ap806_gicp_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sdiv i32 %54, 2
  %56 = sext i32 %55 to i64
  %57 = icmp slt i64 %51, %56
  br i1 %57, label %58, label %89

58:                                               ; preds = %50
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %4, align 8
  %61 = getelementptr inbounds %struct.mv_ap806_gicp_softc, %struct.mv_ap806_gicp_softc* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i64, i64* %7, align 8
  %64 = add nsw i64 %63, 1
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = icmp slt i64 %59, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %58
  %69 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %4, align 8
  %70 = getelementptr inbounds %struct.mv_ap806_gicp_softc, %struct.mv_ap806_gicp_softc* %69, i32 0, i32 1
  %71 = load i64*, i64** %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = getelementptr inbounds i64, i64* %71, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add nsw i64 %75, %74
  store i64 %76, i64* %8, align 8
  br label %89

77:                                               ; preds = %58
  %78 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %4, align 8
  %79 = getelementptr inbounds %struct.mv_ap806_gicp_softc, %struct.mv_ap806_gicp_softc* %78, i32 0, i32 1
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* %7, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = sub nsw i64 %84, %83
  store i64 %85, i64* %8, align 8
  br label %86

86:                                               ; preds = %77
  %87 = load i64, i64* %7, align 8
  %88 = add nsw i64 %87, 2
  store i64 %88, i64* %7, align 8
  br label %50

89:                                               ; preds = %68, %50
  %90 = load i64, i64* %8, align 8
  %91 = sub nsw i64 %90, 32
  %92 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %4, align 8
  %93 = getelementptr inbounds %struct.mv_ap806_gicp_softc, %struct.mv_ap806_gicp_softc* %92, i32 0, i32 2
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 1
  store i64 %91, i64* %97, align 8
  %98 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %4, align 8
  %99 = getelementptr inbounds %struct.mv_ap806_gicp_softc, %struct.mv_ap806_gicp_softc* %98, i32 0, i32 2
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = bitcast %struct.TYPE_2__* %100 to %struct.intr_map_data*
  store %struct.intr_map_data* %101, %struct.intr_map_data** %3, align 8
  br label %102

102:                                              ; preds = %89, %31, %16
  %103 = load %struct.intr_map_data*, %struct.intr_map_data** %3, align 8
  ret %struct.intr_map_data* %103
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
