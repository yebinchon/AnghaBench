; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atahpa_set_max.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atahpa_set_max.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { i32 }

@AP_PROTO_NON_DATA = common dso_local global i32 0, align 4
@ATA_SET_MAX_ADDRESS48 = common dso_local global i32 0, align 4
@AP_EXTEND = common dso_local global i32 0, align 4
@ATA_SET_MAX_ADDRESS = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@AP_FLAG_CHK_COND = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@ATA_HPA_FEAT_MAX_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32, %union.ccb*, i32, i64, i32)* @atahpa_set_max to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atahpa_set_max(%struct.cam_device* %0, i32 %1, i32 %2, %union.ccb* %3, i32 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cam_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %union.ccb*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store %union.ccb* %3, %union.ccb** %12, align 8
  store i32 %4, i32* %13, align 4
  store i64 %5, i64* %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load i32, i32* @AP_PROTO_NON_DATA, align 4
  store i32 %19, i32* %18, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %7
  %23 = load i32, i32* @ATA_SET_MAX_ADDRESS48, align 4
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* @AP_EXTEND, align 4
  %25 = load i32, i32* %18, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %18, align 4
  br label %29

27:                                               ; preds = %7
  %28 = load i32, i32* @ATA_SET_MAX_ADDRESS, align 4
  store i32 %28, i32* %17, align 4
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i64, i64* %14, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i64, i64* %14, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %14, align 8
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %37 = load %union.ccb*, %union.ccb** %12, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @CAM_DIR_NONE, align 4
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* @AP_FLAG_CHK_COND, align 4
  %42 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* @ATA_HPA_FEAT_MAX_ADDR, align 4
  %45 = load i64, i64* %14, align 8
  %46 = load i32, i32* %15, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %35
  %50 = load i32, i32* %11, align 4
  br label %52

51:                                               ; preds = %35
  br label %52

52:                                               ; preds = %51, %49
  %53 = phi i32 [ %50, %49 ], [ 1000, %51 ]
  %54 = load i32, i32* %13, align 4
  %55 = call i32 @ata_do_cmd(%struct.cam_device* %36, %union.ccb* %37, i32 %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i64 %45, i32 %46, i32* null, i32 0, i32 %53, i32 %54)
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %52
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %8, align 4
  br label %64

60:                                               ; preds = %52
  %61 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %62 = load %union.ccb*, %union.ccb** %12, align 8
  %63 = call i32 @atahpa_proc_resp(%struct.cam_device* %61, %union.ccb* %62, i32* null)
  store i32 %63, i32* %8, align 4
  br label %64

64:                                               ; preds = %60, %58
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i32 @ata_do_cmd(%struct.cam_device*, %union.ccb*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @atahpa_proc_resp(%struct.cam_device*, %union.ccb*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
