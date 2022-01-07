; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_xpt.c_nvme_probe_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_xpt.c_nvme_probe_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i32, i64 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.cam_path* }
%struct.cam_path = type { i32 }
%struct.ccb_nvmeio = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i64 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"nvme_probe_start\0A\00", align 1
@nvme_probe_done = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@NVME_OPC_IDENTIFY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"nvme_probe_start: invalid action state 0x%x\0A\00", align 1
@CAM_DEV_QFREEZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @nvme_probe_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_probe_start(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ccb_nvmeio*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca %struct.cam_path*, align 8
  %8 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %9 = load %union.ccb*, %union.ccb** %4, align 8
  %10 = bitcast %union.ccb* %9 to %struct.TYPE_4__*
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.cam_path*, %struct.cam_path** %11, align 8
  %13 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %14 = call i32 @CAM_DEBUG(%struct.cam_path* %12, i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %16 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %18, %struct.TYPE_5__** %6, align 8
  %19 = load %union.ccb*, %union.ccb** %4, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_4__*
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load %struct.cam_path*, %struct.cam_path** %21, align 8
  store %struct.cam_path* %22, %struct.cam_path** %7, align 8
  %23 = load %union.ccb*, %union.ccb** %4, align 8
  %24 = bitcast %union.ccb* %23 to %struct.ccb_nvmeio*
  store %struct.ccb_nvmeio* %24, %struct.ccb_nvmeio** %5, align 8
  %25 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %26 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @xpt_path_lun_id(i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = call i32 @NVME_PROBE_SET_ACTION(%struct.TYPE_5__* %36, i32 129)
  br label %38

38:                                               ; preds = %33, %2
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %63 [
    i32 129, label %42
    i32 128, label %52
  ]

42:                                               ; preds = %38
  %43 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %5, align 8
  %44 = load i32, i32* @nvme_probe_done, align 4
  %45 = load i32, i32* @CAM_DIR_IN, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = call i32 @cam_fill_nvmeadmin(%struct.ccb_nvmeio* %43, i32 0, i32 %44, i32 %45, i32* %47, i32 4, i32 30000)
  %49 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %5, align 8
  %50 = load i32, i32* @NVME_OPC_IDENTIFY, align 4
  %51 = call i32 @nvme_ns_cmd(%struct.ccb_nvmeio* %49, i32 %50, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %68

52:                                               ; preds = %38
  %53 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %5, align 8
  %54 = load i32, i32* @nvme_probe_done, align 4
  %55 = load i32, i32* @CAM_DIR_IN, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = call i32 @cam_fill_nvmeadmin(%struct.ccb_nvmeio* %53, i32 0, i32 %54, i32 %55, i32* %57, i32 4, i32 30000)
  %59 = load %struct.ccb_nvmeio*, %struct.ccb_nvmeio** %5, align 8
  %60 = load i32, i32* @NVME_OPC_IDENTIFY, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @nvme_ns_cmd(%struct.ccb_nvmeio* %59, i32 %60, i32 %61, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0)
  br label %68

63:                                               ; preds = %38
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  br label %68

68:                                               ; preds = %63, %52, %42
  %69 = load i32, i32* @CAM_DEV_QFREEZE, align 4
  %70 = load %union.ccb*, %union.ccb** %4, align 8
  %71 = bitcast %union.ccb* %70 to %struct.TYPE_4__*
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %69
  store i32 %74, i32* %72, align 8
  %75 = load %union.ccb*, %union.ccb** %4, align 8
  %76 = call i32 @xpt_action(%union.ccb* %75)
  ret void
}

declare dso_local i32 @CAM_DEBUG(%struct.cam_path*, i32, i8*) #1

declare dso_local i32 @xpt_path_lun_id(i32) #1

declare dso_local i32 @NVME_PROBE_SET_ACTION(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @cam_fill_nvmeadmin(%struct.ccb_nvmeio*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @nvme_ns_cmd(%struct.ccb_nvmeio*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
