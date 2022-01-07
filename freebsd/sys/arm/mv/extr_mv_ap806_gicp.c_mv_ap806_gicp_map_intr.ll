; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_gicp.c_mv_ap806_gicp_map_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_gicp.c_mv_ap806_gicp_map_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_map_data = type { i64 }
%struct.intr_irqsrc = type { i32 }
%struct.mv_ap806_gicp_softc = type { i32, i32 }

@INTR_MAP_DATA_FDT = common dso_local global i64 0, align 8
@ENOTSUP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_map_data*, %struct.intr_irqsrc**)* @mv_ap806_gicp_map_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_ap806_gicp_map_intr(i32 %0, %struct.intr_map_data* %1, %struct.intr_irqsrc** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intr_map_data*, align 8
  %7 = alloca %struct.intr_irqsrc**, align 8
  %8 = alloca %struct.mv_ap806_gicp_softc*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.intr_map_data* %1, %struct.intr_map_data** %6, align 8
  store %struct.intr_irqsrc** %2, %struct.intr_irqsrc*** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.mv_ap806_gicp_softc* @device_get_softc(i32 %10)
  store %struct.mv_ap806_gicp_softc* %11, %struct.mv_ap806_gicp_softc** %8, align 8
  %12 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %13 = getelementptr inbounds %struct.intr_map_data, %struct.intr_map_data* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @INTR_MAP_DATA_FDT, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOTSUP, align 4
  store i32 %18, i32* %4, align 4
  br label %41

19:                                               ; preds = %3
  %20 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %8, align 8
  %21 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %22 = call %struct.intr_map_data* @mv_ap806_gicp_convert_map_data(%struct.mv_ap806_gicp_softc* %20, %struct.intr_map_data* %21)
  store %struct.intr_map_data* %22, %struct.intr_map_data** %6, align 8
  %23 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %24 = icmp eq %struct.intr_map_data* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @EINVAL, align 4
  store i32 %26, i32* %4, align 4
  br label %41

27:                                               ; preds = %19
  %28 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %8, align 8
  %29 = getelementptr inbounds %struct.mv_ap806_gicp_softc, %struct.mv_ap806_gicp_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.intr_map_data*, %struct.intr_map_data** %6, align 8
  %32 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %7, align 8
  %33 = call i32 @PIC_MAP_INTR(i32 %30, %struct.intr_map_data* %31, %struct.intr_irqsrc** %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %8, align 8
  %35 = getelementptr inbounds %struct.mv_ap806_gicp_softc, %struct.mv_ap806_gicp_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %7, align 8
  %38 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %37, align 8
  %39 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %27, %25, %17
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local %struct.mv_ap806_gicp_softc* @device_get_softc(i32) #1

declare dso_local %struct.intr_map_data* @mv_ap806_gicp_convert_map_data(%struct.mv_ap806_gicp_softc*, %struct.intr_map_data*) #1

declare dso_local i32 @PIC_MAP_INTR(i32, %struct.intr_map_data*, %struct.intr_irqsrc**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
