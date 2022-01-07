; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptsetasyncfunc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xptsetasyncfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_ed = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.cam_path = type { i32 }
%struct.ccb_getdev = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.ccb_setasync = type { i32, i32 (i32, i32, %struct.cam_path.0*, %struct.ccb_getdev.1*)* }
%struct.cam_path.0 = type opaque
%struct.ccb_getdev.1 = type opaque
%union.ccb = type { i32 }

@CAM_DEV_UNCONFIGURED = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_GDEV_TYPE = common dso_local global i32 0, align 4
@AC_FOUND_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_ed*, i8*)* @xptsetasyncfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xptsetasyncfunc(%struct.cam_ed* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_ed*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.cam_path, align 4
  %7 = alloca %struct.ccb_getdev, align 4
  %8 = alloca %struct.ccb_setasync*, align 8
  store %struct.cam_ed* %0, %struct.cam_ed** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.ccb_setasync*
  store %struct.ccb_setasync* %10, %struct.ccb_setasync** %8, align 8
  %11 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %12 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CAM_DEV_UNCONFIGURED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %20 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %27 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.cam_ed*, %struct.cam_ed** %4, align 8
  %32 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @xpt_compile_path(%struct.cam_path* %6, i32* null, i32 %25, i32 %30, i32 %33)
  %35 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %7, i32 0, i32 0
  %36 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %37 = call i32 @xpt_setup_ccb(%struct.TYPE_6__* %35, %struct.cam_path* %6, i32 %36)
  %38 = load i32, i32* @XPT_GDEV_TYPE, align 4
  %39 = getelementptr inbounds %struct.ccb_getdev, %struct.ccb_getdev* %7, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = bitcast %struct.ccb_getdev* %7 to %union.ccb*
  %42 = call i32 @xpt_action(%union.ccb* %41)
  %43 = load %struct.ccb_setasync*, %struct.ccb_setasync** %8, align 8
  %44 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %43, i32 0, i32 1
  %45 = load i32 (i32, i32, %struct.cam_path.0*, %struct.ccb_getdev.1*)*, i32 (i32, i32, %struct.cam_path.0*, %struct.ccb_getdev.1*)** %44, align 8
  %46 = load %struct.ccb_setasync*, %struct.ccb_setasync** %8, align 8
  %47 = getelementptr inbounds %struct.ccb_setasync, %struct.ccb_setasync* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @AC_FOUND_DEVICE, align 4
  %50 = bitcast %struct.cam_path* %6 to %struct.cam_path.0*
  %51 = bitcast %struct.ccb_getdev* %7 to %struct.ccb_getdev.1*
  %52 = call i32 %45(i32 %48, i32 %49, %struct.cam_path.0* %50, %struct.ccb_getdev.1* %51)
  %53 = call i32 @xpt_release_path(%struct.cam_path* %6)
  store i32 1, i32* %3, align 4
  br label %54

54:                                               ; preds = %18, %17
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @xpt_compile_path(%struct.cam_path*, i32*, i32, i32, i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_6__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @xpt_release_path(%struct.cam_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
