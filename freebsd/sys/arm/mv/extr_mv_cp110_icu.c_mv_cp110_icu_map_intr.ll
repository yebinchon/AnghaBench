; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_cp110_icu.c_mv_cp110_icu_map_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_cp110_icu.c_mv_cp110_icu_map_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_data = type { i64 }
%struct.intr_irqsrc = type { i32 }
%struct.mv_cp110_icu_softc = type { i32, i32 }
%struct.intr_map_data_fdt = type { i32, i64* }

@INTR_MAP_DATA_FDT = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ICU_INT_ENABLE = common dso_local global i64 0, align 8
@IRQ_TYPE_LEVEL_HIGH = common dso_local global i64 0, align 8
@ICU_INT_EDGE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_map_data*, %struct.intr_irqsrc**)* @mv_cp110_icu_map_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cp110_icu_map_intr(i32 %0, %struct.intr_map_data* %1, %struct.intr_irqsrc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_map_data*, align 8
  %7 = alloca %struct.intr_irqsrc**, align 8
  %8 = alloca %struct.mv_cp110_icu_softc*, align 8
  %9 = alloca %struct.intr_map_data_fdt*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.intr_map_data* %1, %struct.intr_map_data** %6, align 8
  store %struct.intr_irqsrc** %2, %struct.intr_irqsrc*** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.mv_cp110_icu_softc* @device_get_softc(i32 %14)
  store %struct.mv_cp110_icu_softc* %15, %struct.mv_cp110_icu_softc** %8, align 8
  %16 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %17 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @INTR_MAP_DATA_FDT, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOTSUP, align 4
  store i32 %22, i32* %4, align 4
  br label %89

23:                                               ; preds = %3
  %24 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %25 = bitcast %struct.intr_map_data* %24 to %struct.intr_map_data_fdt*
  store %struct.intr_map_data_fdt* %25, %struct.intr_map_data_fdt** %9, align 8
  %26 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %9, align 8
  %27 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %4, align 4
  br label %89

32:                                               ; preds = %23
  %33 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %9, align 8
  %34 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  %38 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %9, align 8
  %39 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %38, i32 0, i32 1
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %12, align 8
  %43 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %8, align 8
  %44 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %45 = call %struct.intr_map_data* @mv_cp110_icu_convert_map_data(%struct.mv_cp110_icu_softc* %43, %struct.intr_map_data* %44)
  store %struct.intr_map_data* %45, %struct.intr_map_data** %6, align 8
  %46 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %47 = icmp eq %struct.intr_map_data* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %32
  %49 = load i32, i32* @EINVAL, align 4
  store i32 %49, i32* %4, align 4
  br label %89

50:                                               ; preds = %32
  %51 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %8, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @ICU_INT_CFG(i64 %52)
  %54 = call i64 @RD4(%struct.mv_cp110_icu_softc* %51, i32 %53)
  store i64 %54, i64* %10, align 8
  %55 = load i64, i64* @ICU_INT_ENABLE, align 8
  %56 = load i64, i64* %10, align 8
  %57 = or i64 %56, %55
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %12, align 8
  %59 = load i64, i64* @IRQ_TYPE_LEVEL_HIGH, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %66

61:                                               ; preds = %50
  %62 = load i64, i64* @ICU_INT_EDGE, align 8
  %63 = xor i64 %62, -1
  %64 = load i64, i64* %10, align 8
  %65 = and i64 %64, %63
  store i64 %65, i64* %10, align 8
  br label %70

66:                                               ; preds = %50
  %67 = load i64, i64* @ICU_INT_EDGE, align 8
  %68 = load i64, i64* %10, align 8
  %69 = or i64 %68, %67
  store i64 %69, i64* %10, align 8
  br label %70

70:                                               ; preds = %66, %61
  %71 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %8, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @ICU_INT_CFG(i64 %72)
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @WR4(%struct.mv_cp110_icu_softc* %71, i32 %73, i64 %74)
  %76 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %8, align 8
  %77 = getelementptr inbounds %struct.mv_cp110_icu_softc, %struct.mv_cp110_icu_softc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %80 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %7, align 8
  %81 = call i32 @PIC_MAP_INTR(i32 %78, %struct.intr_map_data* %79, %struct.intr_irqsrc** %80)
  store i32 %81, i32* %13, align 4
  %82 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %8, align 8
  %83 = getelementptr inbounds %struct.mv_cp110_icu_softc, %struct.mv_cp110_icu_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %7, align 8
  %86 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %85, align 8
  %87 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %86, i32 0, i32 0
  store i32 %84, i32* %87, align 4
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %70, %48, %30, %21
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local %struct.mv_cp110_icu_softc* @device_get_softc(i32) #1

declare dso_local %struct.intr_map_data* @mv_cp110_icu_convert_map_data(%struct.mv_cp110_icu_softc*, %struct.intr_map_data*) #1

declare dso_local i64 @RD4(%struct.mv_cp110_icu_softc*, i32) #1

declare dso_local i32 @ICU_INT_CFG(i64) #1

declare dso_local i32 @WR4(%struct.mv_cp110_icu_softc*, i32, i64) #1

declare dso_local i32 @PIC_MAP_INTR(i32, %struct.intr_map_data*, %struct.intr_irqsrc**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
