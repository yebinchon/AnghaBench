; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_cp110_icu.c_mv_cp110_icu_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_cp110_icu.c_mv_cp110_icu_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_cp110_icu_softc = type { i32, %struct.intr_map_data_fdt*, i32*, i32 }
%struct.intr_map_data_fdt = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"msi-parent\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"cannot find msi-parent property\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"cannot find msi-parent device\0A\00", align 1
@mv_cp110_icu_res_spec = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"cannot allocate resources for device\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Cannot register ICU\0A\00", align 1
@INTR_MAP_DATA_FDT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_cp110_icu_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_cp110_icu_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_cp110_icu_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.mv_cp110_icu_softc* @device_get_softc(i32 %7)
  store %struct.mv_cp110_icu_softc* %8, %struct.mv_cp110_icu_softc** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %4, align 8
  %11 = getelementptr inbounds %struct.mv_cp110_icu_softc, %struct.mv_cp110_icu_softc* %10, i32 0, i32 3
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @ofw_bus_get_node(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @OF_getencprop(i32 %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32* %6, i32 4)
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  store i32 %20, i32* %2, align 4
  br label %67

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = call i32* @OF_device_from_xref(i32 %22)
  %24 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %4, align 8
  %25 = getelementptr inbounds %struct.mv_cp110_icu_softc, %struct.mv_cp110_icu_softc* %24, i32 0, i32 2
  store i32* %23, i32** %25, align 8
  %26 = icmp eq i32* %23, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_printf(i32 %28, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %30 = load i32, i32* @ENXIO, align 4
  store i32 %30, i32* %2, align 4
  br label %67

31:                                               ; preds = %21
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @mv_cp110_icu_res_spec, align 4
  %34 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %4, align 8
  %35 = getelementptr inbounds %struct.mv_cp110_icu_softc, %struct.mv_cp110_icu_softc* %34, i32 0, i32 0
  %36 = call i64 @bus_alloc_resources(i32 %32, i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @device_printf(i32 %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %67

42:                                               ; preds = %31
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @OF_xref_from_node(i32 %44)
  %46 = call i32* @intr_pic_register(i32 %43, i32 %45)
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %42
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %60

51:                                               ; preds = %42
  %52 = load i32, i32* @INTR_MAP_DATA_FDT, align 4
  %53 = load i32, i32* @M_WAITOK, align 4
  %54 = load i32, i32* @M_ZERO, align 4
  %55 = or i32 %53, %54
  %56 = call i64 @intr_alloc_map_data(i32 %52, i32 16, i32 %55)
  %57 = inttoptr i64 %56 to %struct.intr_map_data_fdt*
  %58 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %4, align 8
  %59 = getelementptr inbounds %struct.mv_cp110_icu_softc, %struct.mv_cp110_icu_softc* %58, i32 0, i32 1
  store %struct.intr_map_data_fdt* %57, %struct.intr_map_data_fdt** %59, align 8
  store i32 0, i32* %2, align 4
  br label %67

60:                                               ; preds = %48
  %61 = load i32, i32* %3, align 4
  %62 = load i32, i32* @mv_cp110_icu_res_spec, align 4
  %63 = load %struct.mv_cp110_icu_softc*, %struct.mv_cp110_icu_softc** %4, align 8
  %64 = getelementptr inbounds %struct.mv_cp110_icu_softc, %struct.mv_cp110_icu_softc* %63, i32 0, i32 0
  %65 = call i32 @bus_release_resources(i32 %61, i32 %62, i32* %64)
  %66 = load i32, i32* @ENXIO, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %60, %51, %38, %27, %17
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.mv_cp110_icu_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i32, i8*, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @OF_device_from_xref(i32) #1

declare dso_local i64 @bus_alloc_resources(i32, i32, i32*) #1

declare dso_local i32* @intr_pic_register(i32, i32) #1

declare dso_local i32 @OF_xref_from_node(i32) #1

declare dso_local i64 @intr_alloc_map_data(i32, i32, i32) #1

declare dso_local i32 @bus_release_resources(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
