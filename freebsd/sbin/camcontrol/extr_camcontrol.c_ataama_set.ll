; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ataama_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ataama_set.c"
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
@ATA_AMAX_ADDR_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32, %union.ccb*, i64)* @ataama_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ataama_set(%struct.cam_device* %0, i32 %1, i32 %2, %union.ccb* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cam_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ccb*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %union.ccb* %3, %union.ccb** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %11, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %5
  %16 = load i64, i64* %11, align 8
  %17 = add nsw i64 %16, -1
  store i64 %17, i64* %11, align 8
  br label %18

18:                                               ; preds = %15, %5
  %19 = load %struct.cam_device*, %struct.cam_device** %7, align 8
  %20 = load %union.ccb*, %union.ccb** %10, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @CAM_DIR_NONE, align 4
  %23 = load i32, i32* @AP_PROTO_NON_DATA, align 4
  %24 = load i32, i32* @AP_EXTEND, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AP_FLAG_CHK_COND, align 4
  %27 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %28 = load i32, i32* @ATA_AMAX_ADDR, align 4
  %29 = load i32, i32* @ATA_AMAX_ADDR_SET, align 4
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %18
  %34 = load i32, i32* %9, align 4
  br label %36

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 30000, %35 ]
  %38 = call i32 @ata_do_cmd(%struct.cam_device* %19, %union.ccb* %20, i32 %21, i32 %22, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29, i64 %30, i32 0, i32* null, i32 0, i32 %37, i32 1)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i32, i32* %12, align 4
  store i32 %42, i32* %6, align 4
  br label %47

43:                                               ; preds = %36
  %44 = load %struct.cam_device*, %struct.cam_device** %7, align 8
  %45 = load %union.ccb*, %union.ccb** %10, align 8
  %46 = call i32 @atahpa_proc_resp(%struct.cam_device* %44, %union.ccb* %45, i32* null)
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %41
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @ata_do_cmd(%struct.cam_device*, %union.ccb*, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @atahpa_proc_resp(%struct.cam_device*, %union.ccb*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
