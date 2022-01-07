; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atasecurity_erase.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_atasecurity_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { i32 }
%struct.ata_security_password = type { i32 }

@ATA_SECURITY_ERASE_PREPARE = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@AP_PROTO_NON_DATA = common dso_local global i32 0, align 4
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@ATA_SECURITY_ERASE_UNIT = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@AP_PROTO_PIO_OUT = common dso_local global i32 0, align 4
@AP_FLAG_BYT_BLOK_BLOCKS = common dso_local global i32 0, align 4
@AP_FLAG_TLEN_SECT_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"\0AErase Complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cam_device*, %union.ccb*, i32, i32, i32, %struct.ata_security_password*, i32)* @atasecurity_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atasecurity_erase(%struct.cam_device* %0, %union.ccb* %1, i32 %2, i32 %3, i32 %4, %struct.ata_security_password* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cam_device*, align 8
  %10 = alloca %union.ccb*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ata_security_password*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.cam_device* %0, %struct.cam_device** %9, align 8
  store %union.ccb* %1, %union.ccb** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.ata_security_password* %5, %struct.ata_security_password** %14, align 8
  store i32 %6, i32* %15, align 4
  %17 = load i32, i32* %15, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %7
  %20 = load i32, i32* @ATA_SECURITY_ERASE_PREPARE, align 4
  %21 = call i32 @atasecurity_notify(i32 %20, %struct.ata_security_password* null)
  br label %22

22:                                               ; preds = %19, %7
  %23 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %24 = load %union.ccb*, %union.ccb** %10, align 8
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @CAM_DIR_NONE, align 4
  %27 = load i32, i32* @AP_PROTO_NON_DATA, align 4
  %28 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %29 = load i32, i32* @ATA_SECURITY_ERASE_PREPARE, align 4
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @ata_do_cmd(%struct.cam_device* %23, %union.ccb* %24, i32 %25, i32 %26, i32 %27, i32 0, i32 %28, i32 %29, i32 0, i32 0, i32 0, i32* null, i32 0, i32 %30, i32 0)
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %22
  %35 = load i32, i32* %16, align 4
  store i32 %35, i32* %8, align 4
  br label %67

36:                                               ; preds = %22
  %37 = load i32, i32* %15, align 4
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* @ATA_SECURITY_ERASE_UNIT, align 4
  %41 = load %struct.ata_security_password*, %struct.ata_security_password** %14, align 8
  %42 = call i32 @atasecurity_notify(i32 %40, %struct.ata_security_password* %41)
  br label %43

43:                                               ; preds = %39, %36
  %44 = load %struct.cam_device*, %struct.cam_device** %9, align 8
  %45 = load %union.ccb*, %union.ccb** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @CAM_DIR_OUT, align 4
  %48 = load i32, i32* @AP_PROTO_PIO_OUT, align 4
  %49 = load i32, i32* @AP_FLAG_BYT_BLOK_BLOCKS, align 4
  %50 = load i32, i32* @AP_FLAG_TLEN_SECT_CNT, align 4
  %51 = or i32 %49, %50
  %52 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %53 = load i32, i32* @ATA_SECURITY_ERASE_UNIT, align 4
  %54 = load %struct.ata_security_password*, %struct.ata_security_password** %14, align 8
  %55 = bitcast %struct.ata_security_password* %54 to i32*
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @ata_do_cmd(%struct.cam_device* %44, %union.ccb* %45, i32 %46, i32 %47, i32 %48, i32 %51, i32 %52, i32 %53, i32 0, i32 0, i32 0, i32* %55, i32 4, i32 %56, i32 0)
  store i32 %57, i32* %16, align 4
  %58 = load i32, i32* %16, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %43
  %61 = load i32, i32* %15, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = call i32 @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %60, %43
  %66 = load i32, i32* %16, align 4
  store i32 %66, i32* %8, align 4
  br label %67

67:                                               ; preds = %65, %34
  %68 = load i32, i32* %8, align 4
  ret i32 %68
}

declare dso_local i32 @atasecurity_notify(i32, %struct.ata_security_password*) #1

declare dso_local i32 @ata_do_cmd(%struct.cam_device*, %union.ccb*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
