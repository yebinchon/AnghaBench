; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atahpa_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atahpa_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { i32 }
%struct.ata_set_max_pwd = type { i32 }

@AP_PROTO_PIO_OUT = common dso_local global i32 0, align 4
@ATA_SET_MAX_ADDRESS48 = common dso_local global i32 0, align 4
@ATA_SET_MAX_ADDRESS = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@AP_FLAG_BYT_BLOK_BLOCKS = common dso_local global i32 0, align 4
@AP_FLAG_TLEN_SECT_CNT = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@ATA_HPA_FEAT_UNLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, i32, i32, %union.ccb*, i32, %struct.ata_set_max_pwd*)* @atahpa_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atahpa_unlock(%struct.cam_device* %0, i32 %1, i32 %2, %union.ccb* %3, i32 %4, %struct.ata_set_max_pwd* %5) #0 {
  %7 = alloca %struct.cam_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %union.ccb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ata_set_max_pwd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %union.ccb* %3, %union.ccb** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.ata_set_max_pwd* %5, %struct.ata_set_max_pwd** %12, align 8
  %15 = load i32, i32* @AP_PROTO_PIO_OUT, align 4
  store i32 %15, i32* %14, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %6
  %19 = load i32, i32* @ATA_SET_MAX_ADDRESS48, align 4
  br label %22

20:                                               ; preds = %6
  %21 = load i32, i32* @ATA_SET_MAX_ADDRESS, align 4
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi i32 [ %19, %18 ], [ %21, %20 ]
  store i32 %23, i32* %13, align 4
  %24 = load %struct.cam_device*, %struct.cam_device** %7, align 8
  %25 = load %union.ccb*, %union.ccb** %10, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @CAM_DIR_OUT, align 4
  %28 = load i32, i32* %14, align 4
  %29 = load i32, i32* @AP_FLAG_BYT_BLOK_BLOCKS, align 4
  %30 = load i32, i32* @AP_FLAG_TLEN_SECT_CNT, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @ATA_HPA_FEAT_UNLOCK, align 4
  %35 = load %struct.ata_set_max_pwd*, %struct.ata_set_max_pwd** %12, align 8
  %36 = bitcast %struct.ata_set_max_pwd* %35 to i32*
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %22
  %40 = load i32, i32* %9, align 4
  br label %42

41:                                               ; preds = %22
  br label %42

42:                                               ; preds = %41, %39
  %43 = phi i32 [ %40, %39 ], [ 1000, %41 ]
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @ata_do_cmd(%struct.cam_device* %24, %union.ccb* %25, i32 %26, i32 %27, i32 %28, i32 %31, i32 %32, i32 %33, i32 %34, i32 0, i32 0, i32* %36, i32 4, i32 %43, i32 %44)
  ret i32 %45
}

declare dso_local i32 @ata_do_cmd(%struct.cam_device*, %union.ccb*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
