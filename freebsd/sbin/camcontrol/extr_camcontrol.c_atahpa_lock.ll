; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atahpa_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atahpa_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { i32 }

@AP_PROTO_NON_DATA = common dso_local global i32 0, align 4
@ATA_SET_MAX_ADDRESS48 = common dso_local global i32 0, align 4
@ATA_SET_MAX_ADDRESS = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@ATA_HPA_FEAT_LOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32, %union.ccb*, i32)* @atahpa_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atahpa_lock(%struct.cam_device* %0, i32 %1, i32 %2, %union.ccb* %3, i32 %4) #0 {
  %6 = alloca %struct.cam_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.ccb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %union.ccb* %3, %union.ccb** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @AP_PROTO_NON_DATA, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @ATA_SET_MAX_ADDRESS48, align 4
  br label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @ATA_SET_MAX_ADDRESS, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  store i32 %21, i32* %11, align 4
  %22 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %23 = load %union.ccb*, %union.ccb** %9, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @CAM_DIR_NONE, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @ATA_HPA_FEAT_LOCK, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* %8, align 4
  br label %35

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %32
  %36 = phi i32 [ %33, %32 ], [ 1000, %34 ]
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @ata_do_cmd(%struct.cam_device* %22, %union.ccb* %23, i32 %24, i32 %25, i32 %26, i32 0, i32 %27, i32 %28, i32 %29, i32 0, i32 0, i32* null, i32 0, i32 %36, i32 %37)
  ret i32 %38
}

declare dso_local i32 @ata_do_cmd(%struct.cam_device*, %union.ccb*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
