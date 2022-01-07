; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ataama_freeze.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_ataama_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { i32 }

@CAM_DIR_NONE = common dso_local global i32 0, align 4
@AP_PROTO_NON_DATA = common dso_local global i32 0, align 4
@AP_EXTEND = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@ATA_AMAX_ADDR = common dso_local global i32 0, align 4
@ATA_AMAX_ADDR_FREEZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32, %union.ccb*)* @ataama_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ataama_freeze(%struct.cam_device* %0, i32 %1, i32 %2, %union.ccb* %3) #0 {
  %5 = alloca %struct.cam_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ccb*, align 8
  store %struct.cam_device* %0, %struct.cam_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %union.ccb* %3, %union.ccb** %8, align 8
  %9 = load %struct.cam_device*, %struct.cam_device** %5, align 8
  %10 = load %union.ccb*, %union.ccb** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @CAM_DIR_NONE, align 4
  %13 = load i32, i32* @AP_PROTO_NON_DATA, align 4
  %14 = load i32, i32* @AP_EXTEND, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %17 = load i32, i32* @ATA_AMAX_ADDR, align 4
  %18 = load i32, i32* @ATA_AMAX_ADDR_FREEZE, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i32 [ %22, %21 ], [ 30000, %23 ]
  %26 = call i32 @ata_do_cmd(%struct.cam_device* %9, %union.ccb* %10, i32 %11, i32 %12, i32 %15, i32 0, i32 %16, i32 %17, i32 %18, i32 0, i32 0, i32* null, i32 0, i32 %25, i32 1)
  ret i32 %26
}

declare dso_local i32 @ata_do_cmd(%struct.cam_device*, %union.ccb*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
