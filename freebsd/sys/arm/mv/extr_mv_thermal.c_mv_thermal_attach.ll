; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_thermal.c_mv_thermal_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_thermal.c_mv_thermal_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv_thermal_softc = type { i32, %struct.mv_thermal_config*, i32*, i32, i32 }
%struct.mv_thermal_config = type { i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }
%struct.TYPE_2__ = type { i64 }

@compat_data = common dso_local global i32 0, align 4
@MTX_DEF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot get syscon for device\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@mv_thermal_sysctl = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"IK\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Internal Temperature\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"cpu%d\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"CPU%d Temperature\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_thermal_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_thermal_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.mv_thermal_softc*, align 8
  %5 = alloca %struct.sysctl_ctx_list*, align 8
  %6 = alloca %struct.sysctl_oid_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [255 x i8], align 16
  %9 = alloca [255 x i8], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.mv_thermal_softc* @device_get_softc(i32 %11)
  store %struct.mv_thermal_softc* %12, %struct.mv_thermal_softc** %4, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %15 = getelementptr inbounds %struct.mv_thermal_softc, %struct.mv_thermal_softc* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @ofw_bus_get_node(i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @compat_data, align 4
  %20 = call %struct.TYPE_2__* @ofw_bus_search_compatible(i32 %18, i32 %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.mv_thermal_config*
  %24 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %25 = getelementptr inbounds %struct.mv_thermal_softc, %struct.mv_thermal_softc* %24, i32 0, i32 1
  store %struct.mv_thermal_config* %23, %struct.mv_thermal_config** %25, align 8
  %26 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %27 = getelementptr inbounds %struct.mv_thermal_softc, %struct.mv_thermal_softc* %26, i32 0, i32 4
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @device_get_nameunit(i32 %28)
  %30 = load i32, i32* @MTX_DEF, align 4
  %31 = call i32 @mtx_init(i32* %27, i32 %29, i32* null, i32 %30)
  %32 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %33 = getelementptr inbounds %struct.mv_thermal_softc, %struct.mv_thermal_softc* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %36 = getelementptr inbounds %struct.mv_thermal_softc, %struct.mv_thermal_softc* %35, i32 0, i32 2
  %37 = call i64 @SYSCON_GET_HANDLE(i32 %34, i32** %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %1
  %40 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %41 = getelementptr inbounds %struct.mv_thermal_softc, %struct.mv_thermal_softc* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %39, %1
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENXIO, align 4
  store i32 %47, i32* %2, align 4
  br label %109

48:                                               ; preds = %39
  %49 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %50 = getelementptr inbounds %struct.mv_thermal_softc, %struct.mv_thermal_softc* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 8
  %51 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %52 = getelementptr inbounds %struct.mv_thermal_softc, %struct.mv_thermal_softc* %51, i32 0, i32 1
  %53 = load %struct.mv_thermal_config*, %struct.mv_thermal_config** %52, align 8
  %54 = getelementptr inbounds %struct.mv_thermal_config, %struct.mv_thermal_config* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  switch i32 %55, label %62 [
    i32 129, label %56
    i32 128, label %59
  ]

56:                                               ; preds = %48
  %57 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %58 = call i32 @ap806_init(%struct.mv_thermal_softc* %57)
  br label %62

59:                                               ; preds = %48
  %60 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %61 = call i32 @cp110_init(%struct.mv_thermal_softc* %60)
  br label %62

62:                                               ; preds = %48, %59, %56
  %63 = load i32, i32* %3, align 4
  %64 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %63)
  store %struct.sysctl_ctx_list* %64, %struct.sysctl_ctx_list** %5, align 8
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @device_get_sysctl_tree(i32 %65)
  %67 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %66)
  store %struct.sysctl_oid_list* %67, %struct.sysctl_oid_list** %6, align 8
  %68 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %69 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %70 = load i32, i32* @OID_AUTO, align 4
  %71 = load i32, i32* @CTLTYPE_INT, align 4
  %72 = load i32, i32* @CTLFLAG_RD, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* @mv_thermal_sysctl, align 4
  %76 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %68, %struct.sysctl_oid_list* %69, i32 %70, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %73, i32 %74, i32 0, i32 %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %10, align 4
  br label %77

77:                                               ; preds = %105, %62
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.mv_thermal_softc*, %struct.mv_thermal_softc** %4, align 8
  %80 = getelementptr inbounds %struct.mv_thermal_softc, %struct.mv_thermal_softc* %79, i32 0, i32 1
  %81 = load %struct.mv_thermal_config*, %struct.mv_thermal_config** %80, align 8
  %82 = getelementptr inbounds %struct.mv_thermal_config, %struct.mv_thermal_config* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp slt i32 %78, %83
  br i1 %84, label %85, label %108

85:                                               ; preds = %77
  %86 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @snprintf(i8* %86, i32 255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %87)
  %89 = getelementptr inbounds [255 x i8], [255 x i8]* %9, i64 0, i64 0
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @snprintf(i8* %89, i32 255, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), i32 %90)
  %92 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %5, align 8
  %93 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %6, align 8
  %94 = load i32, i32* @OID_AUTO, align 4
  %95 = getelementptr inbounds [255 x i8], [255 x i8]* %8, i64 0, i64 0
  %96 = load i32, i32* @CTLTYPE_INT, align 4
  %97 = load i32, i32* @CTLFLAG_RD, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* %3, align 4
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  %102 = load i32, i32* @mv_thermal_sysctl, align 4
  %103 = getelementptr inbounds [255 x i8], [255 x i8]* %9, i64 0, i64 0
  %104 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %92, %struct.sysctl_oid_list* %93, i32 %94, i8* %95, i32 %98, i32 %99, i32 %101, i32 %102, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %85
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  br label %77

108:                                              ; preds = %77
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %44
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.mv_thermal_softc* @device_get_softc(i32) #1

declare dso_local i32 @ofw_bus_get_node(i32) #1

declare dso_local %struct.TYPE_2__* @ofw_bus_search_compatible(i32, i32) #1

declare dso_local i32 @mtx_init(i32*, i32, i32*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i64 @SYSCON_GET_HANDLE(i32, i32**) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @ap806_init(%struct.mv_thermal_softc*) #1

declare dso_local i32 @cp110_init(%struct.mv_thermal_softc*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
