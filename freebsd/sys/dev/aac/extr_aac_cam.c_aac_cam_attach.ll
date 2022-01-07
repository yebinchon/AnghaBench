; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_cam.c_aac_cam_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_cam.c_aac_cam_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_devq = type { i32 }
%struct.cam_sim = type { i32 }
%struct.cam_path = type { i32 }
%struct.aac_cam = type { %struct.cam_path*, %struct.cam_sim*, %struct.aac_sim* }
%struct.aac_sim = type { %struct.TYPE_2__*, i32, %struct.aac_cam* }
%struct.TYPE_2__ = type { i32, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EIO = common dso_local global i32 0, align 4
@aac_cam_action = common dso_local global i32 0, align 4
@aac_cam_poll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"aacp\00", align 1
@CAM_SUCCESS = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@aac_cam_rescan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @aac_cam_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_cam_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_devq*, align 8
  %5 = alloca %struct.cam_sim*, align 8
  %6 = alloca %struct.cam_path*, align 8
  %7 = alloca %struct.aac_cam*, align 8
  %8 = alloca %struct.aac_sim*, align 8
  store i32 %0, i32* %3, align 4
  %9 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %10 = call i32 @fwprintf(i32* null, i8* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %3, align 4
  %12 = call i64 @device_get_softc(i32 %11)
  %13 = inttoptr i64 %12 to %struct.aac_cam*
  store %struct.aac_cam* %13, %struct.aac_cam** %7, align 8
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @device_get_ivars(i32 %14)
  %16 = inttoptr i64 %15 to %struct.aac_sim*
  store %struct.aac_sim* %16, %struct.aac_sim** %8, align 8
  %17 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %18 = load %struct.aac_cam*, %struct.aac_cam** %7, align 8
  %19 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %18, i32 0, i32 2
  store %struct.aac_sim* %17, %struct.aac_sim** %19, align 8
  %20 = load %struct.aac_cam*, %struct.aac_cam** %7, align 8
  %21 = load %struct.aac_cam*, %struct.aac_cam** %7, align 8
  %22 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %21, i32 0, i32 2
  %23 = load %struct.aac_sim*, %struct.aac_sim** %22, align 8
  %24 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %23, i32 0, i32 2
  store %struct.aac_cam* %20, %struct.aac_cam** %24, align 8
  %25 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %26 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.cam_devq* @cam_simq_alloc(i32 %27)
  store %struct.cam_devq* %28, %struct.cam_devq** %4, align 8
  %29 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %30 = icmp eq %struct.cam_devq* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* @EIO, align 4
  store i32 %32, i32* %2, align 4
  br label %110

33:                                               ; preds = %1
  %34 = load i32, i32* @aac_cam_action, align 4
  %35 = load i32, i32* @aac_cam_poll, align 4
  %36 = load %struct.aac_cam*, %struct.aac_cam** %7, align 8
  %37 = load i32, i32* %3, align 4
  %38 = call i32 @device_get_unit(i32 %37)
  %39 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %40 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %44 = call %struct.cam_sim* @cam_sim_alloc(i32 %34, i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), %struct.aac_cam* %36, i32 %38, i32* %42, i32 1, i32 1, %struct.cam_devq* %43)
  store %struct.cam_sim* %44, %struct.cam_sim** %5, align 8
  %45 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %46 = icmp eq %struct.cam_sim* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %49 = call i32 @cam_simq_free(%struct.cam_devq* %48)
  %50 = load i32, i32* @EIO, align 4
  store i32 %50, i32* %2, align 4
  br label %110

51:                                               ; preds = %33
  %52 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %53 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @mtx_lock(i32* %55)
  %57 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i64 @xpt_bus_register(%struct.cam_sim* %57, i32 %58, i32 0)
  %60 = load i64, i64* @CAM_SUCCESS, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %72

62:                                               ; preds = %51
  %63 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %64 = load i32, i32* @TRUE, align 4
  %65 = call i32 @cam_sim_free(%struct.cam_sim* %63, i32 %64)
  %66 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %67 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = call i32 @mtx_unlock(i32* %69)
  %71 = load i32, i32* @EIO, align 4
  store i32 %71, i32* %2, align 4
  br label %110

72:                                               ; preds = %51
  %73 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %74 = call i32 @cam_sim_path(%struct.cam_sim* %73)
  %75 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %76 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %77 = call i64 @xpt_create_path(%struct.cam_path** %6, i32* null, i32 %74, i32 %75, i32 %76)
  %78 = load i64, i64* @CAM_REQ_CMP, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %93

80:                                               ; preds = %72
  %81 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %82 = call i32 @cam_sim_path(%struct.cam_sim* %81)
  %83 = call i32 @xpt_bus_deregister(i32 %82)
  %84 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %85 = load i32, i32* @TRUE, align 4
  %86 = call i32 @cam_sim_free(%struct.cam_sim* %84, i32 %85)
  %87 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %88 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = call i32 @mtx_unlock(i32* %90)
  %92 = load i32, i32* @EIO, align 4
  store i32 %92, i32* %2, align 4
  br label %110

93:                                               ; preds = %72
  %94 = load i32, i32* @aac_cam_rescan, align 4
  %95 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %96 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  store i32 %94, i32* %98, align 4
  %99 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %100 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %99, i32 0, i32 0
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = call i32 @mtx_unlock(i32* %102)
  %104 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %105 = load %struct.aac_cam*, %struct.aac_cam** %7, align 8
  %106 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %105, i32 0, i32 1
  store %struct.cam_sim* %104, %struct.cam_sim** %106, align 8
  %107 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %108 = load %struct.aac_cam*, %struct.aac_cam** %7, align 8
  %109 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %108, i32 0, i32 0
  store %struct.cam_path* %107, %struct.cam_path** %109, align 8
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %93, %80, %62, %47, %31
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @fwprintf(i32*, i8*, i8*) #1

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i64 @device_get_ivars(i32) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local %struct.cam_sim* @cam_sim_alloc(i32, i32, i8*, %struct.aac_cam*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @xpt_bus_register(%struct.cam_sim*, i32, i32) #1

declare dso_local i32 @cam_sim_free(%struct.cam_sim*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i64 @xpt_create_path(%struct.cam_path**, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_sim_path(%struct.cam_sim*) #1

declare dso_local i32 @xpt_bus_deregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
