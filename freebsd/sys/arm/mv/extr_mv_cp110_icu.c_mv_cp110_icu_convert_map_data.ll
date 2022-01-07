; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_cp110_icu.c_mv_cp110_icu_convert_map_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_cp110_icu.c_mv_cp110_icu_convert_map_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cp110_icu_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64* }
%struct.intr_map_data = type { i32 }
%struct.intr_map_data_fdt = type { i32, i64* }

@MV_CP110_ICU_MAX_NIRQS = common dso_local global i64 0, align 8
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i64 0, align 8
@IRQ_TYPE_EDGE_RISING = common dso_local global i64 0, align 8
@ICU_INT_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intr_map_data* (%struct.mv_cp110_icu_softc*, %struct.intr_map_data*)* @mv_cp110_icu_convert_map_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intr_map_data* @mv_cp110_icu_convert_map_data(%struct.mv_cp110_icu_softc* %0, %struct.intr_map_data* %1) #0 {
  %3 = alloca %struct.intr_map_data*, align 8
  %4 = alloca %struct.mv_cp110_icu_softc*, align 8
  %5 = alloca %struct.intr_map_data*, align 8
  %6 = alloca %struct.intr_map_data_fdt*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.mv_cp110_icu_softc* %0, %struct.mv_cp110_icu_softc** %4, align 8
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
  br label %70

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
  %29 = load i64, i64* @MV_CP110_ICU_MAX_NIRQS, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  store %struct.intr_map_data* null, %struct.intr_map_data** %3, align 8
  br label %70

32:                                               ; preds = %17
  %33 = load i64, i64* %9, align 8
  %34 = load i64, i64* @IRQ_TYPE_LEVEL_HIGH, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @IRQ_TYPE_EDGE_RISING, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store %struct.intr_map_data* null, %struct.intr_map_data** %3, align 8
  br label %70

41:                                               ; preds = %36, %32
  %42 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %4, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i32 @ICU_INT_CFG(i64 %43)
  %45 = call i64 @RD4(%struct.mv_cp110_icu_softc* %42, i32 %44)
  store i64 %45, i64* %7, align 8
  %46 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %4, align 8
  %47 = getelementptr inbounds %struct.mv_cp110_icu_softc, %struct.mv_cp110_icu_softc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 2, i32* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @ICU_INT_MASK, align 8
  %52 = and i64 %50, %51
  %53 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %4, align 8
  %54 = getelementptr inbounds %struct.mv_cp110_icu_softc, %struct.mv_cp110_icu_softc* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 0
  store i64 %52, i64* %58, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %4, align 8
  %61 = getelementptr inbounds %struct.mv_cp110_icu_softc, %struct.mv_cp110_icu_softc* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  store i64 %59, i64* %65, align 8
  %66 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %4, align 8
  %67 = getelementptr inbounds %struct.mv_cp110_icu_softc, %struct.mv_cp110_icu_softc* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = bitcast %struct.TYPE_2__* %68 to %struct.intr_map_data*
  store %struct.intr_map_data* %69, %struct.intr_map_data** %3, align 8
  br label %70

70:                                               ; preds = %41, %40, %31, %16
  %71 = load %struct.intr_map_data*, %struct.intr_map_data** %3, align 8
  ret %struct.intr_map_data* %71
}

declare dso_local i64 @RD4(%struct.mv_cp110_icu_softc*, i32) #1

declare dso_local i32 @ICU_INT_CFG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
