; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atasecurity_set_password.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atasecurity_set_password.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { i32 }
%struct.ata_security_password = type { i32 }

@ATA_SECURITY_SET_PASSWORD = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@AP_PROTO_PIO_OUT = common dso_local global i32 0, align 4
@AP_FLAG_BYT_BLOK_BLOCKS = common dso_local global i32 0, align 4
@AP_FLAG_TLEN_SECT_CNT = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, %union.ccb*, i32, i32, %struct.ata_security_password*, i32)* @atasecurity_set_password to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atasecurity_set_password(%struct.cam_device* %0, %union.ccb* %1, i32 %2, i32 %3, %struct.ata_security_password* %4, i32 %5) #0 {
  %7 = alloca %struct.cam_device*, align 8
  %8 = alloca %union.ccb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ata_security_password*, align 8
  %12 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %7, align 8
  store %union.ccb* %1, %union.ccb** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.ata_security_password* %4, %struct.ata_security_password** %11, align 8
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %6
  %16 = load i32, i32* @ATA_SECURITY_SET_PASSWORD, align 4
  %17 = load %struct.ata_security_password*, %struct.ata_security_password** %11, align 8
  %18 = call i32 @atasecurity_notify(i32 %16, %struct.ata_security_password* %17)
  br label %19

19:                                               ; preds = %15, %6
  %20 = load %struct.cam_device*, %struct.cam_device** %7, align 8
  %21 = load %union.ccb*, %union.ccb** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @CAM_DIR_OUT, align 4
  %24 = load i32, i32* @AP_PROTO_PIO_OUT, align 4
  %25 = load i32, i32* @AP_FLAG_BYT_BLOK_BLOCKS, align 4
  %26 = load i32, i32* @AP_FLAG_TLEN_SECT_CNT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %29 = load i32, i32* @ATA_SECURITY_SET_PASSWORD, align 4
  %30 = load %struct.ata_security_password*, %struct.ata_security_password** %11, align 8
  %31 = bitcast %struct.ata_security_password* %30 to i32*
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @ata_do_cmd(%struct.cam_device* %20, %union.ccb* %21, i32 %22, i32 %23, i32 %24, i32 %27, i32 %28, i32 %29, i32 0, i32 0, i32 0, i32* %31, i32 4, i32 %32, i32 0)
  ret i32 %33
}

declare dso_local i32 @atasecurity_notify(i32, %struct.ata_security_password*) #1

declare dso_local i32 @ata_do_cmd(%struct.cam_device*, %union.ccb*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
