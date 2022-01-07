; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_gicp.c_mv_ap806_gicp_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_ap806_gicp.c_mv_ap806_gicp_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_ap806_gicp_softc = type { %struct.intr_map_data_fdt*, i32, i32, i32*, i32 }
%struct.intr_map_data_fdt = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Cannot find our parent interrupt controller\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"cannot find parent interrupt controller device\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"marvell,spi-ranges\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Cannot register GICP\0A\00", align 1
@INTR_MAP_DATA_FDT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_ap806_gicp_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_ap806_gicp_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_ap806_gicp_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.mv_ap806_gicp_softc* @device_get_softc(i32 %8)
  store %struct.mv_ap806_gicp_softc* %9, %struct.mv_ap806_gicp_softc** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %4, align 8
  %12 = getelementptr inbounds %struct.mv_ap806_gicp_softc, %struct.mv_ap806_gicp_softc* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @ofw_bus_get_node(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @ofw_bus_find_iparent(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @device_printf(i32 %19, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %62

22:                                               ; preds = %1
  %23 = load i32, i32* %7, align 4
  %24 = call i32* @OF_device_from_xref(i32 %23)
  %25 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %4, align 8
  %26 = getelementptr inbounds %struct.mv_ap806_gicp_softc, %struct.mv_ap806_gicp_softc* %25, i32 0, i32 3
  store i32* %24, i32** %26, align 8
  %27 = icmp eq i32* %24, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %62

32:                                               ; preds = %22
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mv_ap806_gicp_softc, %struct.mv_ap806_gicp_softc* %34, i32 0, i32 1
  %36 = bitcast i32* %35 to i8**
  %37 = call i32 @OF_getencprop_alloc(i32 %33, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8** %36)
  %38 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %4, align 8
  %39 = getelementptr inbounds %struct.mv_ap806_gicp_softc, %struct.mv_ap806_gicp_softc* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @OF_xref_from_node(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32* @intr_pic_register(i32 %42, i32 %43)
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %32
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @device_printf(i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %49 = load i32, i32* @ENXIO, align 4
  store i32 %49, i32* %2, align 4
  br label %62

50:                                               ; preds = %32
  %51 = load i32, i32* @INTR_MAP_DATA_FDT, align 4
  %52 = load i32, i32* @M_WAITOK, align 4
  %53 = load i32, i32* @M_ZERO, align 4
  %54 = or i32 %52, %53
  %55 = call i64 @intr_alloc_map_data(i32 %51, i32 16, i32 %54)
  %56 = inttoptr i64 %55 to %struct.intr_map_data_fdt*
  %57 = load %struct.mv_ap806_gicp_softc*, %struct.mv_ap806_gicp_softc** %4, align 8
  %58 = getelementptr inbounds %struct.mv_ap806_gicp_softc, %struct.mv_ap806_gicp_softc* %57, i32 0, i32 0
  store %struct.intr_map_data_fdt* %56, %struct.intr_map_data_fdt** %58, align 8
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @OF_device_register_xref(i32 %59, i32 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %50, %46, %28, %18
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.mv_ap806_gicp_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i32 @ofw_bus_find_iparent(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @OF_device_from_xref(i32) #1

declare dso_local i32 @OF_getencprop_alloc(i32, i8*, i8**) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i32* @intr_pic_register(i32, i32) #1

declare dso_local i64 @intr_alloc_map_data(i32, i32, i32) #1

declare dso_local i32 @OF_device_register_xref(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
