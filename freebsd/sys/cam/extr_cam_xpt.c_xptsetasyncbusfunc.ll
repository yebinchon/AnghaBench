; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptsetasyncbusfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptsetasyncbusfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_eb = type { i32 }
%struct.cam_path = type { i32 }
%struct.ccb_pathinq = type { i32 }
%struct.ccb_setasync = type { i32, i32 (i32, i32, %struct.cam_path.0*, %struct.ccb_pathinq.1*)* }
%struct.cam_path.0 = type opaque
%struct.ccb_pathinq.1 = type opaque

@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@AC_PATH_REGISTERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_eb*, i8*)* @xptsetasyncbusfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xptsetasyncbusfunc(%struct.cam_eb* %0, i8* %1) #0 {
  %3 = alloca %struct.cam_eb*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.cam_path, align 4
  %6 = alloca %struct.ccb_pathinq, align 4
  %7 = alloca %struct.ccb_setasync*, align 8
  store %struct.cam_eb* %0, %struct.cam_eb** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ccb_setasync*
  store %struct.ccb_setasync* %9, %struct.ccb_setasync** %7, align 8
  %10 = load %struct.cam_eb*, %struct.cam_eb** %3, align 8
  %11 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %14 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %15 = call i32 @xpt_compile_path(%struct.cam_path* %5, i32* null, i32 %12, i32 %13, i32 %14)
  %16 = call i32 @xpt_path_lock(%struct.cam_path* %5)
  %17 = call i32 @xpt_path_inq(%struct.ccb_pathinq* %6, %struct.cam_path* %5)
  %18 = load %struct.ccb_setasync*, %struct.ccb_setasync** %7, align 8
  %19 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %18, i32 0, i32 1
  %20 = load i32 (i32, i32, %struct.cam_path.0*, %struct.ccb_pathinq.1*)*, i32 (i32, i32, %struct.cam_path.0*, %struct.ccb_pathinq.1*)** %19, align 8
  %21 = load %struct.ccb_setasync*, %struct.ccb_setasync** %7, align 8
  %22 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @AC_PATH_REGISTERED, align 4
  %25 = bitcast %struct.cam_path* %5 to %struct.cam_path.0*
  %26 = bitcast %struct.ccb_pathinq* %6 to %struct.ccb_pathinq.1*
  %27 = call i32 %20(i32 %23, i32 %24, %struct.cam_path.0* %25, %struct.ccb_pathinq.1* %26)
  %28 = call i32 @xpt_path_unlock(%struct.cam_path* %5)
  %29 = call i32 @xpt_release_path(%struct.cam_path* %5)
  ret i32 1
}

declare dso_local i32 @xpt_compile_path(%struct.cam_path*, i32*, i32, i32, i32) #1

declare dso_local i32 @xpt_path_lock(%struct.cam_path*) #1

declare dso_local i32 @xpt_path_inq(%struct.ccb_pathinq*, %struct.cam_path*) #1

declare dso_local i32 @xpt_path_unlock(%struct.cam_path*) #1

declare dso_local i32 @xpt_release_path(%struct.cam_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
