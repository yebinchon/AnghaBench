; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ata_get_native_max.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ata_get_native_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { i32 }

@CAM_DIR_NONE = common dso_local global i32 0, align 4
@AP_PROTO_NON_DATA = common dso_local global i32 0, align 4
@AP_EXTEND = common dso_local global i32 0, align 4
@AP_FLAG_CHK_COND = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@ATA_AMAX_ADDR = common dso_local global i32 0, align 4
@ATA_AMAX_ADDR_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32, %union.ccb*, i32*)* @ata_get_native_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_get_native_max(%struct.cam_device* %0, i32 %1, i32 %2, %union.ccb* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ccb*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %union.ccb* %3, %union.ccb** %10, align 8
  store i32* %4, i32** %11, align 8
  %13 = load %struct.cam_device*, %struct.cam_device** %7, align 8
  %14 = load %union.ccb*, %union.ccb** %10, align 8
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @CAM_DIR_NONE, align 4
  %17 = load i32, i32* @AP_PROTO_NON_DATA, align 4
  %18 = load i32, i32* @AP_EXTEND, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @AP_FLAG_CHK_COND, align 4
  %21 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %22 = load i32, i32* @ATA_AMAX_ADDR, align 4
  %23 = load i32, i32* @ATA_AMAX_ADDR_GET, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  br label %29

28:                                               ; preds = %5
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 30000, %28 ]
  %31 = call i32 @ata_do_cmd(%struct.cam_device* %13, %union.ccb* %14, i32 %15, i32 %16, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23, i32 0, i32 0, i32* null, i32 0, i32 %30, i32 1)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %12, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* %12, align 4
  store i32 %35, i32* %6, align 4
  br label %41

36:                                               ; preds = %29
  %37 = load %struct.cam_device*, %struct.cam_device** %7, align 8
  %38 = load %union.ccb*, %union.ccb** %10, align 8
  %39 = load i32*, i32** %11, align 8
  %40 = call i32 @atahpa_proc_resp(%struct.cam_device* %37, %union.ccb* %38, i32* %39)
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %36, %34
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i32 @ata_do_cmd(%struct.cam_device*, %union.ccb*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @atahpa_proc_resp(%struct.cam_device*, %union.ccb*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
