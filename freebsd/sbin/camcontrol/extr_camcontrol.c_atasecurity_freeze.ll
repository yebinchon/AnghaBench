; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atasecurity_freeze.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atasecurity_freeze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { i32 }

@ATA_SECURITY_FREEZE_LOCK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@AP_PROTO_NON_DATA = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, %union.ccb*, i32, i32, i32)* @atasecurity_freeze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atasecurity_freeze(%struct.cam_device* %0, %union.ccb* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cam_device*, align 8
  %7 = alloca %union.ccb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %6, align 8
  store %union.ccb* %1, %union.ccb** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %5
  %14 = load i32, i32* @ATA_SECURITY_FREEZE_LOCK, align 4
  %15 = call i32 @atasecurity_notify(i32 %14, i32* null)
  br label %16

16:                                               ; preds = %13, %5
  %17 = load %struct.cam_device*, %struct.cam_device** %6, align 8
  %18 = load %union.ccb*, %union.ccb** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @CAM_DIR_NONE, align 4
  %21 = load i32, i32* @AP_PROTO_NON_DATA, align 4
  %22 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %23 = load i32, i32* @ATA_SECURITY_FREEZE_LOCK, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @ata_do_cmd(%struct.cam_device* %17, %union.ccb* %18, i32 %19, i32 %20, i32 %21, i32 0, i32 %22, i32 %23, i32 0, i32 0, i32 0, i32* null, i32 0, i32 %24, i32 0)
  ret i32 %25
}

declare dso_local i32 @atasecurity_notify(i32, i32*) #1

declare dso_local i32 @ata_do_cmd(%struct.cam_device*, %union.ccb*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
