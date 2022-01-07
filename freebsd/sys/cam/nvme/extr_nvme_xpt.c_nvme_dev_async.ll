; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_xpt.c_nvme_dev_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/nvme/extr_nvme_xpt.c_nvme_dev_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_eb = type { i32 }
%struct.cam_et = type { i64 }
%struct.cam_ed = type { i64, i32 }

@CAM_TARGET_WILDCARD = common dso_local global i64 0, align 8
@CAM_LUN_WILDCARD = common dso_local global i64 0, align 8
@AC_LOST_DEVICE = common dso_local global i64 0, align 8
@CAM_DEV_UNCONFIGURED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.cam_eb*, %struct.cam_et*, %struct.cam_ed*, i8*)* @nvme_dev_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_dev_async(i64 %0, %struct.cam_eb* %1, %struct.cam_et* %2, %struct.cam_ed* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.cam_eb*, align 8
  %8 = alloca %struct.cam_et*, align 8
  %9 = alloca %struct.cam_ed*, align 8
  %10 = alloca i8*, align 8
  store i64 %0, i64* %6, align 8
  store %struct.cam_eb* %1, %struct.cam_eb** %7, align 8
  store %struct.cam_et* %2, %struct.cam_et** %8, align 8
  store %struct.cam_ed* %3, %struct.cam_ed** %9, align 8
  store i8* %4, i8** %10, align 8
  %11 = load %struct.cam_et*, %struct.cam_et** %8, align 8
  %12 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %5
  %17 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %18 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CAM_LUN_WILDCARD, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %16, %5
  br label %42

23:                                               ; preds = %16
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @AC_LOST_DEVICE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %23
  %28 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %29 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @CAM_DEV_UNCONFIGURED, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %27
  %35 = load i32, i32* @CAM_DEV_UNCONFIGURED, align 4
  %36 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %37 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %41 = call i32 @xpt_release_device(%struct.cam_ed* %40)
  br label %42

42:                                               ; preds = %22, %34, %27, %23
  ret void
}

declare dso_local i32 @xpt_release_device(%struct.cam_ed*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
