; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_fdt.c_gic_v3_ofw_bus_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3_fdt.c_gic_v3_ofw_bus_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gic_v3_ofw_devinfo = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.gic_v3_softc = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"#address-cells\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"#size-cells\00", align 1
@M_GIC_V3 = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"numa-node-id\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"Could not set up devinfo for ITS\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"Could not add child: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @gic_v3_ofw_bus_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_v3_ofw_bus_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gic_v3_ofw_devinfo*, align 8
  %4 = alloca %struct.gic_v3_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call %struct.gic_v3_softc* @device_get_softc(i32 %10)
  store %struct.gic_v3_softc* %11, %struct.gic_v3_softc** %4, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @ofw_bus_get_node(i32 %12)
  store i64 %13, i64* %6, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %105

16:                                               ; preds = %1
  store i32 2, i32* %8, align 4
  %17 = load i64, i64* %6, align 8
  %18 = call i64 @OF_getencprop(i64 %17, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* %8, i32 4)
  store i32 2, i32* %9, align 4
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @OF_getencprop(i64 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %9, i32 4)
  %21 = load i64, i64* %6, align 8
  %22 = call i64 @OF_child(i64 %21)
  store i64 %22, i64* %7, align 8
  br label %23

23:                                               ; preds = %101, %16
  %24 = load i64, i64* %7, align 8
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %104

26:                                               ; preds = %23
  %27 = load i32, i32* @M_GIC_V3, align 4
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.gic_v3_ofw_devinfo* @malloc(i32 12, i32 %27, i32 %30)
  store %struct.gic_v3_ofw_devinfo* %31, %struct.gic_v3_ofw_devinfo** %3, align 8
  %32 = load i64, i64* %7, align 8
  %33 = load %struct.gic_v3_ofw_devinfo*, %struct.gic_v3_ofw_devinfo** %3, align 8
  %34 = getelementptr inbounds %struct.gic_v3_ofw_devinfo, %struct.gic_v3_ofw_devinfo* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i64 @OF_getencprop(i64 %32, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i32* %35, i32 4)
  %37 = icmp sle i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %26
  %39 = load %struct.gic_v3_ofw_devinfo*, %struct.gic_v3_ofw_devinfo** %3, align 8
  %40 = getelementptr inbounds %struct.gic_v3_ofw_devinfo, %struct.gic_v3_ofw_devinfo* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 -1, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %26
  %43 = load %struct.gic_v3_ofw_devinfo*, %struct.gic_v3_ofw_devinfo** %3, align 8
  %44 = getelementptr inbounds %struct.gic_v3_ofw_devinfo, %struct.gic_v3_ofw_devinfo* %43, i32 0, i32 0
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_5__* %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i64, i64* @bootverbose, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* %2, align 4
  %53 = call i32 (i32, i8*, ...) @device_printf(i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %48
  %55 = load %struct.gic_v3_ofw_devinfo*, %struct.gic_v3_ofw_devinfo** %3, align 8
  %56 = load i32, i32* @M_GIC_V3, align 4
  %57 = call i32 @free(%struct.gic_v3_ofw_devinfo* %55, i32 %56)
  br label %101

58:                                               ; preds = %42
  %59 = load %struct.gic_v3_ofw_devinfo*, %struct.gic_v3_ofw_devinfo** %3, align 8
  %60 = getelementptr inbounds %struct.gic_v3_ofw_devinfo, %struct.gic_v3_ofw_devinfo* %59, i32 0, i32 1
  %61 = call i32 @resource_list_init(i32* %60)
  %62 = load i32, i32* %2, align 4
  %63 = load i64, i64* %7, align 8
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.gic_v3_ofw_devinfo*, %struct.gic_v3_ofw_devinfo** %3, align 8
  %67 = getelementptr inbounds %struct.gic_v3_ofw_devinfo, %struct.gic_v3_ofw_devinfo* %66, i32 0, i32 1
  %68 = call i32 @ofw_bus_reg_to_rl(i32 %62, i64 %63, i32 %64, i32 %65, i32* %67)
  %69 = load i32, i32* %2, align 4
  %70 = call i32 @device_add_child(i32 %69, i32* null, i32 -1)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %93, label %73

73:                                               ; preds = %58
  %74 = load i64, i64* @bootverbose, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %73
  %77 = load i32, i32* %2, align 4
  %78 = load %struct.gic_v3_ofw_devinfo*, %struct.gic_v3_ofw_devinfo** %3, align 8
  %79 = getelementptr inbounds %struct.gic_v3_ofw_devinfo, %struct.gic_v3_ofw_devinfo* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @device_printf(i32 %77, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %76, %73
  %84 = load %struct.gic_v3_ofw_devinfo*, %struct.gic_v3_ofw_devinfo** %3, align 8
  %85 = getelementptr inbounds %struct.gic_v3_ofw_devinfo, %struct.gic_v3_ofw_devinfo* %84, i32 0, i32 1
  %86 = call i32 @resource_list_free(i32* %85)
  %87 = load %struct.gic_v3_ofw_devinfo*, %struct.gic_v3_ofw_devinfo** %3, align 8
  %88 = getelementptr inbounds %struct.gic_v3_ofw_devinfo, %struct.gic_v3_ofw_devinfo* %87, i32 0, i32 0
  %89 = call i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_5__* %88)
  %90 = load %struct.gic_v3_ofw_devinfo*, %struct.gic_v3_ofw_devinfo** %3, align 8
  %91 = load i32, i32* @M_GIC_V3, align 4
  %92 = call i32 @free(%struct.gic_v3_ofw_devinfo* %90, i32 %91)
  br label %101

93:                                               ; preds = %58
  %94 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %4, align 8
  %95 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load i32, i32* %5, align 4
  %99 = load %struct.gic_v3_ofw_devinfo*, %struct.gic_v3_ofw_devinfo** %3, align 8
  %100 = call i32 @device_set_ivars(i32 %98, %struct.gic_v3_ofw_devinfo* %99)
  br label %101

101:                                              ; preds = %93, %83, %54
  %102 = load i64, i64* %7, align 8
  %103 = call i64 @OF_peer(i64 %102)
  store i64 %103, i64* %7, align 8
  br label %23

104:                                              ; preds = %23
  br label %105

105:                                              ; preds = %104, %1
  %106 = load i32, i32* %2, align 4
  %107 = call i32 @bus_generic_attach(i32 %106)
  ret i32 %107
}

declare dso_local %struct.gic_v3_softc* @device_get_softc(i32) #1

declare dso_local i64 @ofw_bus_get_node(i32) #1

declare dso_local i64 @OF_getencprop(i64, i8*, i32*, i32) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local %struct.gic_v3_ofw_devinfo* @malloc(i32, i32, i32) #1

declare dso_local i64 @ofw_bus_gen_setup_devinfo(%struct.TYPE_5__*, i64) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @free(%struct.gic_v3_ofw_devinfo*, i32) #1

declare dso_local i32 @resource_list_init(i32*) #1

declare dso_local i32 @ofw_bus_reg_to_rl(i32, i64, i32, i32, i32*) #1

declare dso_local i32 @device_add_child(i32, i32*, i32) #1

declare dso_local i32 @resource_list_free(i32*) #1

declare dso_local i32 @ofw_bus_gen_destroy_devinfo(%struct.TYPE_5__*) #1

declare dso_local i32 @device_set_ivars(i32, %struct.gic_v3_ofw_devinfo*) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @bus_generic_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
