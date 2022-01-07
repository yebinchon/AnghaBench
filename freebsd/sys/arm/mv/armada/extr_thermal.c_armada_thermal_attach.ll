; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_thermal.c_armada_thermal_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_thermal.c_armada_thermal_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada_thermal_softc = type { i32, i32, i32, i32*, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.armada_thermal_softc*)* }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@STAT_RID = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@RF_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Could not allocate memory for the status register\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@CTRL_RID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Could not allocate memory for the control register\0A\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"Armada Thermal\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@armada_temp_update = common dso_local global i32 0, align 4
@OID_AUTO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"temperature\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"SoC temperature\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @armada_thermal_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada_thermal_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.armada_thermal_softc*, align 8
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca %struct.sysctl_ctx_list*, align 8
  %7 = alloca %struct.sysctl_oid_list*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call %struct.armada_thermal_softc* @device_get_softc(i32 %10)
  store %struct.armada_thermal_softc* %11, %struct.armada_thermal_softc** %4, align 8
  %12 = load i32, i32* @STAT_RID, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @SYS_RES_MEMORY, align 4
  %15 = load i32, i32* @RF_ACTIVE, align 4
  %16 = call i8* @bus_alloc_resource_any(i32 %13, i32 %14, i32* %9, i32 %15)
  %17 = bitcast i8* %16 to i32*
  %18 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %19 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %18, i32 0, i32 4
  store i32* %17, i32** %19, align 8
  %20 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %21 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %20, i32 0, i32 4
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @device_printf(i32 %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ENXIO, align 4
  store i32 %27, i32* %2, align 4
  br label %138

28:                                               ; preds = %1
  %29 = load i32, i32* @CTRL_RID, align 4
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* @SYS_RES_MEMORY, align 4
  %32 = load i32, i32* @RF_ACTIVE, align 4
  %33 = call i8* @bus_alloc_resource_any(i32 %30, i32 %31, i32* %9, i32 %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %36 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %35, i32 0, i32 3
  store i32* %34, i32** %36, align 8
  %37 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %38 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %57

41:                                               ; preds = %28
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @SYS_RES_MEMORY, align 4
  %46 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %47 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %46, i32 0, i32 4
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @rman_get_rid(i32* %48)
  %50 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %51 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %50, i32 0, i32 4
  %52 = load i32*, i32** %51, align 8
  %53 = call i32 @bus_release_resource(i32 %44, i32 %45, i32 %49, i32* %52)
  %54 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %55 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %54, i32 0, i32 4
  store i32* null, i32** %55, align 8
  %56 = load i32, i32* @ENXIO, align 4
  store i32 %56, i32* %2, align 4
  br label %138

57:                                               ; preds = %28
  %58 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %59 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %58, i32 0, i32 5
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  store %struct.TYPE_2__* %60, %struct.TYPE_2__** %5, align 8
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.armada_thermal_softc*)*, i32 (%struct.armada_thermal_softc*)** %62, align 8
  %64 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %65 = call i32 %63(%struct.armada_thermal_softc* %64)
  store i32 1000, i32* %8, align 4
  br label %66

66:                                               ; preds = %78, %57
  %67 = load i32, i32* %8, align 4
  %68 = icmp sgt i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %66
  %70 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %71 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %72 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %71, i32 0, i32 0
  %73 = call i64 @armada_tsen_get_temp(%struct.armada_thermal_softc* %70, i32* %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %81

76:                                               ; preds = %69
  %77 = call i32 @DELAY(i32 10)
  br label %78

78:                                               ; preds = %76
  %79 = load i32, i32* %8, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %8, align 4
  br label %66

81:                                               ; preds = %75, %66
  %82 = load i32, i32* %8, align 4
  %83 = icmp sle i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %81
  %85 = load i32, i32* %3, align 4
  %86 = load i32, i32* @SYS_RES_MEMORY, align 4
  %87 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %88 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %87, i32 0, i32 4
  %89 = load i32*, i32** %88, align 8
  %90 = call i32 @rman_get_rid(i32* %89)
  %91 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %92 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @bus_release_resource(i32 %85, i32 %86, i32 %90, i32* %93)
  %95 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %96 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %95, i32 0, i32 4
  store i32* null, i32** %96, align 8
  %97 = load i32, i32* %3, align 4
  %98 = load i32, i32* @SYS_RES_MEMORY, align 4
  %99 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %100 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %99, i32 0, i32 3
  %101 = load i32*, i32** %100, align 8
  %102 = call i32 @rman_get_rid(i32* %101)
  %103 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %104 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = call i32 @bus_release_resource(i32 %97, i32 %98, i32 %102, i32* %105)
  %107 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %108 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %107, i32 0, i32 3
  store i32* null, i32** %108, align 8
  %109 = load i32, i32* @ENXIO, align 4
  store i32 %109, i32* %2, align 4
  br label %138

110:                                              ; preds = %81
  %111 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %112 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %111, i32 0, i32 2
  %113 = load i32, i32* @MTX_DEF, align 4
  %114 = call i32 @mtx_init(i32* %112, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* null, i32 %113)
  %115 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %116 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %115, i32 0, i32 1
  %117 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %118 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %117, i32 0, i32 2
  %119 = call i32 @callout_init_mtx(i32* %116, i32* %118, i32 0)
  %120 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %121 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %120, i32 0, i32 1
  %122 = load i32, i32* @hz, align 4
  %123 = load i32, i32* @armada_temp_update, align 4
  %124 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %125 = call i32 @callout_reset(i32* %121, i32 %122, i32 %123, %struct.armada_thermal_softc* %124)
  %126 = load i32, i32* %3, align 4
  %127 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %126)
  store %struct.sysctl_ctx_list* %127, %struct.sysctl_ctx_list** %6, align 8
  %128 = load i32, i32* %3, align 4
  %129 = call i32 @device_get_sysctl_tree(i32 %128)
  %130 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32 %129)
  store %struct.sysctl_oid_list* %130, %struct.sysctl_oid_list** %7, align 8
  %131 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %6, align 8
  %132 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %7, align 8
  %133 = load i32, i32* @OID_AUTO, align 4
  %134 = load i32, i32* @CTLFLAG_RD, align 4
  %135 = load %struct.armada_thermal_softc*, %struct.armada_thermal_softc** %4, align 8
  %136 = getelementptr inbounds %struct.armada_thermal_softc, %struct.armada_thermal_softc* %135, i32 0, i32 0
  %137 = call i32 @SYSCTL_ADD_LONG(%struct.sysctl_ctx_list* %131, %struct.sysctl_oid_list* %132, i32 %133, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %134, i32* %136, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %138

138:                                              ; preds = %110, %84, %41, %24
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.armada_thermal_softc* @device_get_softc(i32) #1

declare dso_local i8* @bus_alloc_resource_any(i32, i32, i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i64 @armada_tsen_get_temp(%struct.armada_thermal_softc*, i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @callout_init_mtx(i32*, i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.armada_thermal_softc*) #1

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @device_get_sysctl_tree(i32) #1

declare dso_local i32 @SYSCTL_ADD_LONG(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
