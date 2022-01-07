; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ata_read_native_max.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ata_read_native_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { i32 }
%struct.ata_params = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ATA_SUPPORT_ADDRESS48 = common dso_local global i32 0, align 4
@AP_PROTO_NON_DATA = common dso_local global i32 0, align 4
@ATA_READ_NATIVE_MAX_ADDRESS48 = common dso_local global i32 0, align 4
@AP_EXTEND = common dso_local global i32 0, align 4
@ATA_READ_NATIVE_MAX_ADDRESS = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@AP_FLAG_CHK_COND = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32, %union.ccb*, %struct.ata_params*, i32*)* @ata_read_native_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_read_native_max(%struct.cam_device* %0, i32 %1, i32 %2, %union.ccb* %3, %struct.ata_params* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.cam_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.ccb*, align 8
  %12 = alloca %struct.ata_params*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %union.ccb* %3, %union.ccb** %11, align 8
  store %struct.ata_params* %4, %struct.ata_params** %12, align 8
  store i32* %5, i32** %13, align 8
  %18 = load %struct.ata_params*, %struct.ata_params** %12, align 8
  %19 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ATA_SUPPORT_ADDRESS48, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* @AP_PROTO_NON_DATA, align 4
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %6
  %28 = load i32, i32* @ATA_READ_NATIVE_MAX_ADDRESS48, align 4
  store i32 %28, i32* %15, align 4
  %29 = load i32, i32* @AP_EXTEND, align 4
  %30 = load i32, i32* %17, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %17, align 4
  br label %34

32:                                               ; preds = %6
  %33 = load i32, i32* @ATA_READ_NATIVE_MAX_ADDRESS, align 4
  store i32 %33, i32* %15, align 4
  br label %34

34:                                               ; preds = %32, %27
  %35 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %36 = load %union.ccb*, %union.ccb** %11, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @CAM_DIR_NONE, align 4
  %39 = load i32, i32* %17, align 4
  %40 = load i32, i32* @AP_FLAG_CHK_COND, align 4
  %41 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %34
  %46 = load i32, i32* %10, align 4
  br label %48

47:                                               ; preds = %34
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 5000, %47 ]
  %50 = load i32, i32* %16, align 4
  %51 = call i32 @ata_do_cmd(%struct.cam_device* %35, %union.ccb* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 0, i32 0, i32 0, i32* null, i32 0, i32 %49, i32 %50)
  store i32 %51, i32* %14, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* %14, align 4
  store i32 %55, i32* %7, align 4
  br label %61

56:                                               ; preds = %48
  %57 = load %struct.cam_device*, %struct.cam_device** %8, align 8
  %58 = load %union.ccb*, %union.ccb** %11, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = call i32 @atahpa_proc_resp(%struct.cam_device* %57, %union.ccb* %58, i32* %59)
  store i32 %60, i32* %7, align 4
  br label %61

61:                                               ; preds = %56, %54
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @ata_do_cmd(%struct.cam_device*, %union.ccb*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @atahpa_proc_resp(%struct.cam_device*, %union.ccb*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
