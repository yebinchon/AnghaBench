; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/a10/extr_a10_intc.c_a10_intr_map_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/a10/extr_a10_intc.c_a10_intr_map_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_data = type { i64 }
%struct.intr_irqsrc = type { i32 }
%struct.intr_map_data_fdt = type { i32, i64* }
%struct.a10_aintc_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.intr_irqsrc }

@INTR_MAP_DATA_FDT = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@A10_INTR_MAX_NIRQS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_map_data*, %struct.intr_irqsrc**)* @a10_intr_map_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a10_intr_map_intr(i32 %0, %struct.intr_map_data* %1, %struct.intr_irqsrc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_map_data*, align 8
  %7 = alloca %struct.intr_irqsrc**, align 8
  %8 = alloca %struct.intr_map_data_fdt*, align 8
  %9 = alloca %struct.a10_aintc_softc*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.intr_map_data* %1, %struct.intr_map_data** %6, align 8
  store %struct.intr_irqsrc** %2, %struct.intr_irqsrc*** %7, align 8
  %10 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %11 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @INTR_MAP_DATA_FDT, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ENOTSUP, align 4
  store i32 %16, i32* %4, align 4
  br label %48

17:                                               ; preds = %3
  %18 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %19 = bitcast %struct.intr_map_data* %18 to %struct.intr_map_data_fdt*
  store %struct.intr_map_data_fdt* %19, %struct.intr_map_data_fdt** %8, align 8
  %20 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %8, align 8
  %21 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %32, label %24

24:                                               ; preds = %17
  %25 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %8, align 8
  %26 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @A10_INTR_MAX_NIRQS, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %24, %17
  %33 = load i32, i32* @EINVAL, align 4
  store i32 %33, i32* %4, align 4
  br label %48

34:                                               ; preds = %24
  %35 = load i32, i32* %5, align 4
  %36 = call %struct.a10_aintc_softc* @device_get_softc(i32 %35)
  store %struct.a10_aintc_softc* %36, %struct.a10_aintc_softc** %9, align 8
  %37 = load %struct.a10_aintc_softc*, %struct.a10_aintc_softc** %9, align 8
  %38 = getelementptr inbounds %struct.a10_aintc_softc, %struct.a10_aintc_softc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %8, align 8
  %41 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %7, align 8
  store %struct.intr_irqsrc* %46, %struct.intr_irqsrc** %47, align 8
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %34, %32, %15
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.a10_aintc_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
