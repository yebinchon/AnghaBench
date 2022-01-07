; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_async_process_tgt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_async_process_tgt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_et = type { i64, i32 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.cam_path = type { %struct.cam_et* }
%struct.TYPE_3__ = type { %struct.cam_path* }

@CAM_TARGET_WILDCARD = common dso_local global i64 0, align 8
@AC_SENT_BDR = common dso_local global i64 0, align 8
@xpt_async_process_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_et*, i8*)* @xpt_async_process_tgt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xpt_async_process_tgt(%struct.cam_et* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cam_et*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca %struct.cam_path*, align 8
  store %struct.cam_et* %0, %struct.cam_et** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %union.ccb*
  store %union.ccb* %9, %union.ccb** %6, align 8
  %10 = load %union.ccb*, %union.ccb** %6, align 8
  %11 = bitcast %union.ccb* %10 to %struct.TYPE_3__*
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.cam_path*, %struct.cam_path** %12, align 8
  store %struct.cam_path* %13, %struct.cam_path** %7, align 8
  %14 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %15 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %14, i32 0, i32 0
  %16 = load %struct.cam_et*, %struct.cam_et** %15, align 8
  %17 = load %struct.cam_et*, %struct.cam_et** %4, align 8
  %18 = icmp ne %struct.cam_et* %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %2
  %20 = load %struct.cam_path*, %struct.cam_path** %7, align 8
  %21 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %20, i32 0, i32 0
  %22 = load %struct.cam_et*, %struct.cam_et** %21, align 8
  %23 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %19
  %28 = load %struct.cam_et*, %struct.cam_et** %4, align 8
  %29 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CAM_TARGET_WILDCARD, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 1, i32* %3, align 4
  br label %50

34:                                               ; preds = %27, %19, %2
  %35 = load %union.ccb*, %union.ccb** %6, align 8
  %36 = bitcast %union.ccb* %35 to %struct.TYPE_4__*
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @AC_SENT_BDR, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.cam_et*, %struct.cam_et** %4, align 8
  %43 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %42, i32 0, i32 1
  %44 = call i32 @microtime(i32* %43)
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.cam_et*, %struct.cam_et** %4, align 8
  %47 = load i32, i32* @xpt_async_process_dev, align 4
  %48 = load %union.ccb*, %union.ccb** %6, align 8
  %49 = call i32 @xptdevicetraverse(%struct.cam_et* %46, i32* null, i32 %47, %union.ccb* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %33
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @microtime(i32*) #1

declare dso_local i32 @xptdevicetraverse(%struct.cam_et*, i32*, i32, %union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
