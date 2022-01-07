; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_cam_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_cam_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_devq = type { i32 }
%struct.cam_sim = type { i32 }
%struct.cam_path = type { i32 }
%struct.aac_cam = type { %struct.cam_path*, %struct.cam_sim*, %struct.aac_sim* }
%struct.aac_sim = type { %struct.TYPE_2__*, i32, %struct.aac_cam* }
%struct.TYPE_2__ = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@aac_cam_action = common dso_local global i32 0, align 4
@aac_cam_poll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"aacraidp\00", align 1
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
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @device_get_softc(i32 %9)
  %11 = inttoptr i64 %10 to %struct.aac_cam*
  store %struct.aac_cam* %11, %struct.aac_cam** %7, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @device_get_ivars(i32 %12)
  %14 = inttoptr i64 %13 to %struct.aac_sim*
  store %struct.aac_sim* %14, %struct.aac_sim** %8, align 8
  %15 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %16 = icmp ne %struct.aac_sim* %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @EIO, align 4
  store i32 %18, i32* %2, align 4
  br label %113

19:                                               ; preds = %1
  %20 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %21 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %24 = call i32 @fwprintf(%struct.TYPE_2__* %22, i8* %23, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %26 = load %struct.aac_cam*, %struct.aac_cam** %7, align 8
  %27 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %26, i32 0, i32 2
  store %struct.aac_sim* %25, %struct.aac_sim** %27, align 8
  %28 = load %struct.aac_cam*, %struct.aac_cam** %7, align 8
  %29 = load %struct.aac_cam*, %struct.aac_cam** %7, align 8
  %30 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %29, i32 0, i32 2
  %31 = load %struct.aac_sim*, %struct.aac_sim** %30, align 8
  %32 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %31, i32 0, i32 2
  store %struct.aac_cam* %28, %struct.aac_cam** %32, align 8
  %33 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %34 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call %struct.cam_devq* @cam_simq_alloc(i32 %35)
  store %struct.cam_devq* %36, %struct.cam_devq** %4, align 8
  %37 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %38 = icmp eq %struct.cam_devq* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %19
  %40 = load i32, i32* @EIO, align 4
  store i32 %40, i32* %2, align 4
  br label %113

41:                                               ; preds = %19
  %42 = load i32, i32* @aac_cam_action, align 4
  %43 = load i32, i32* @aac_cam_poll, align 4
  %44 = load %struct.aac_cam*, %struct.aac_cam** %7, align 8
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @device_get_unit(i32 %45)
  %47 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %48 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %52 = call %struct.cam_sim* @aac_sim_alloc(i32 %42, i32 %43, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), %struct.aac_cam* %44, i32 %46, i32* %50, i32 1, i32 1, %struct.cam_devq* %51)
  store %struct.cam_sim* %52, %struct.cam_sim** %5, align 8
  %53 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %54 = icmp eq %struct.cam_sim* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %41
  %56 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %57 = call i32 @cam_simq_free(%struct.cam_devq* %56)
  %58 = load i32, i32* @EIO, align 4
  store i32 %58, i32* %2, align 4
  br label %113

59:                                               ; preds = %41
  %60 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %61 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @mtx_lock(i32* %63)
  %65 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i64 @aac_xpt_bus_register(%struct.cam_sim* %65, i32 %66, i32 0)
  %68 = load i64, i64* @CAM_SUCCESS, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %59
  %71 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %72 = load i32, i32* @TRUE, align 4
  %73 = call i32 @cam_sim_free(%struct.cam_sim* %71, i32 %72)
  %74 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %75 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @mtx_unlock(i32* %77)
  %79 = load i32, i32* @EIO, align 4
  store i32 %79, i32* %2, align 4
  br label %113

80:                                               ; preds = %59
  %81 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %82 = call i32 @cam_sim_path(%struct.cam_sim* %81)
  %83 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %84 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %85 = call i64 @xpt_create_path(%struct.cam_path** %6, i32* null, i32 %82, i32 %83, i32 %84)
  %86 = load i64, i64* @CAM_REQ_CMP, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %101

88:                                               ; preds = %80
  %89 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %90 = call i32 @cam_sim_path(%struct.cam_sim* %89)
  %91 = call i32 @xpt_bus_deregister(i32 %90)
  %92 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %93 = load i32, i32* @TRUE, align 4
  %94 = call i32 @cam_sim_free(%struct.cam_sim* %92, i32 %93)
  %95 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %96 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %95, i32 0, i32 0
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = call i32 @mtx_unlock(i32* %98)
  %100 = load i32, i32* @EIO, align 4
  store i32 %100, i32* %2, align 4
  br label %113

101:                                              ; preds = %80
  %102 = load %struct.aac_sim*, %struct.aac_sim** %8, align 8
  %103 = getelementptr inbounds %struct.aac_sim, %struct.aac_sim* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 @mtx_unlock(i32* %105)
  %107 = load %struct.cam_sim*, %struct.cam_sim** %5, align 8
  %108 = load %struct.aac_cam*, %struct.aac_cam** %7, align 8
  %109 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %108, i32 0, i32 1
  store %struct.cam_sim* %107, %struct.cam_sim** %109, align 8
  %110 = load %struct.cam_path*, %struct.cam_path** %6, align 8
  %111 = load %struct.aac_cam*, %struct.aac_cam** %7, align 8
  %112 = getelementptr inbounds %struct.aac_cam, %struct.aac_cam* %111, i32 0, i32 0
  store %struct.cam_path* %110, %struct.cam_path** %112, align 8
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %101, %88, %70, %55, %39, %17
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i64 @device_get_softc(i32) #1

declare dso_local i64 @device_get_ivars(i32) #1

declare dso_local i32 @fwprintf(%struct.TYPE_2__*, i8*, i8*) #1

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local %struct.cam_sim* @aac_sim_alloc(i32, i32, i8*, %struct.aac_cam*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @aac_xpt_bus_register(%struct.cam_sim*, i32, i32) #1

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
