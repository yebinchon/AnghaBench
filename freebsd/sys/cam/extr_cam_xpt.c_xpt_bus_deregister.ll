; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_bus_deregister.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_bus_deregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }

@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@AC_LOST_DEVICE = common dso_local global i32 0, align 4
@AC_PATH_DEREGISTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @xpt_bus_deregister(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_path, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %8 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %9 = call i64 @xpt_compile_path(%struct.cam_path* %4, i32* null, i32 %6, i32 %7, i32 %8)
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @CAM_REQ_CMP, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i64, i64* %5, align 8
  store i64 %14, i64* %2, align 8
  br label %25

15:                                               ; preds = %1
  %16 = load i32, i32* @AC_LOST_DEVICE, align 4
  %17 = call i32 @xpt_async(i32 %16, %struct.cam_path* %4, i32* null)
  %18 = load i32, i32* @AC_PATH_DEREGISTERED, align 4
  %19 = call i32 @xpt_async(i32 %18, %struct.cam_path* %4, i32* null)
  %20 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %4, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @xpt_release_bus(i32 %21)
  %23 = call i32 @xpt_release_path(%struct.cam_path* %4)
  %24 = load i64, i64* @CAM_REQ_CMP, align 8
  store i64 %24, i64* %2, align 8
  br label %25

25:                                               ; preds = %15, %13
  %26 = load i64, i64* %2, align 8
  ret i64 %26
}

declare dso_local i64 @xpt_compile_path(%struct.cam_path*, i32*, i32, i32, i32) #1

declare dso_local i32 @xpt_async(i32, %struct.cam_path*, i32*) #1

declare dso_local i32 @xpt_release_bus(i32) #1

declare dso_local i32 @xpt_release_path(%struct.cam_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
