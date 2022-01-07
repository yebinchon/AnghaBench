; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_dev_async.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_dev_async.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_eb = type { i32 }
%struct.cam_et = type { i32 }
%struct.cam_ed = type { i32, i32 }
%struct.cam_path = type { i32 }
%struct.ccb_trans_settings = type { i32 }

@CAM_TARGET_WILDCARD = common dso_local global i32 0, align 4
@CAM_LUN_WILDCARD = common dso_local global i32 0, align 4
@AC_SENT_BDR = common dso_local global i64 0, align 8
@AC_BUS_RESET = common dso_local global i64 0, align 8
@AC_INQ_CHANGED = common dso_local global i64 0, align 8
@CAM_REQ_CMP_ERR = common dso_local global i64 0, align 8
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@RELSIM_RELEASE_AFTER_TIMEOUT = common dso_local global i32 0, align 4
@scsi_delay = common dso_local global i32 0, align 4
@CAM_EXPECT_INQ_CHANGE = common dso_local global i32 0, align 4
@AC_LOST_DEVICE = common dso_local global i64 0, align 8
@CAM_DEV_UNCONFIGURED = common dso_local global i32 0, align 4
@AC_TRANSFER_NEG = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.cam_eb*, %struct.cam_et*, %struct.cam_ed*, i8*)* @scsi_dev_async to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_dev_async(i64 %0, %struct.cam_eb* %1, %struct.cam_et* %2, %struct.cam_ed* %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.cam_eb*, align 8
  %8 = alloca %struct.cam_et*, align 8
  %9 = alloca %struct.cam_ed*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.cam_path, align 4
  %13 = alloca %struct.ccb_trans_settings*, align 8
  %14 = alloca %struct.cam_path, align 4
  store i64 %0, i64* %6, align 8
  store %struct.cam_eb* %1, %struct.cam_eb** %7, align 8
  store %struct.cam_et* %2, %struct.cam_et** %8, align 8
  store %struct.cam_ed* %3, %struct.cam_ed** %9, align 8
  store i8* %4, i8** %10, align 8
  %15 = load %struct.cam_et*, %struct.cam_et** %8, align 8
  %16 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @CAM_TARGET_WILDCARD, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %5
  %21 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %22 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CAM_LUN_WILDCARD, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20, %5
  br label %123

27:                                               ; preds = %20
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* @AC_SENT_BDR, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %39, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @AC_BUS_RESET, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %6, align 8
  %37 = load i64, i64* @AC_INQ_CHANGED, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %35, %31, %27
  %40 = load %struct.cam_eb*, %struct.cam_eb** %7, align 8
  %41 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cam_et*, %struct.cam_et** %8, align 8
  %44 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %47 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @xpt_compile_path(%struct.cam_path* %12, i32* null, i32 %42, i32 %45, i32 %48)
  store i64 %49, i64* %11, align 8
  br label %52

50:                                               ; preds = %35
  %51 = load i64, i64* @CAM_REQ_CMP_ERR, align 8
  store i64 %51, i64* %11, align 8
  br label %52

52:                                               ; preds = %50, %39
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @CAM_REQ_CMP, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %52
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @AC_SENT_BDR, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %56
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* @AC_BUS_RESET, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60, %56
  %65 = call i32 @cam_freeze_devq(%struct.cam_path* %12)
  %66 = load i32, i32* @RELSIM_RELEASE_AFTER_TIMEOUT, align 4
  %67 = load i32, i32* @scsi_delay, align 4
  %68 = call i32 @cam_release_devq(%struct.cam_path* %12, i32 %66, i32 0, i32 %67, i32 0)
  %69 = call i32 @scsi_toggle_tags(%struct.cam_path* %12)
  br label %70

70:                                               ; preds = %64, %60
  %71 = load i64, i64* %6, align 8
  %72 = load i64, i64* @AC_INQ_CHANGED, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %12, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @CAM_EXPECT_INQ_CHANGE, align 4
  %78 = call i32 @scsi_scan_lun(i32 %76, %struct.cam_path* %12, i32 %77, i32* null)
  br label %79

79:                                               ; preds = %74, %70
  %80 = call i32 @xpt_release_path(%struct.cam_path* %12)
  br label %123

81:                                               ; preds = %52
  %82 = load i64, i64* %6, align 8
  %83 = load i64, i64* @AC_LOST_DEVICE, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %100

85:                                               ; preds = %81
  %86 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %87 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @CAM_DEV_UNCONFIGURED, align 4
  %90 = and i32 %88, %89
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %85
  %93 = load i32, i32* @CAM_DEV_UNCONFIGURED, align 4
  %94 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %95 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %99 = call i32 @xpt_release_device(%struct.cam_ed* %98)
  br label %122

100:                                              ; preds = %85, %81
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* @AC_TRANSFER_NEG, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %121

104:                                              ; preds = %100
  %105 = load i8*, i8** %10, align 8
  %106 = bitcast i8* %105 to %struct.ccb_trans_settings*
  store %struct.ccb_trans_settings* %106, %struct.ccb_trans_settings** %13, align 8
  %107 = load %struct.cam_eb*, %struct.cam_eb** %7, align 8
  %108 = getelementptr inbounds %struct.cam_eb, %struct.cam_eb* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.cam_et*, %struct.cam_et** %8, align 8
  %111 = getelementptr inbounds %struct.cam_et, %struct.cam_et* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.cam_ed*, %struct.cam_ed** %9, align 8
  %114 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i64 @xpt_compile_path(%struct.cam_path* %14, i32* null, i32 %109, i32 %112, i32 %115)
  %117 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %13, align 8
  %118 = load i32, i32* @TRUE, align 4
  %119 = call i32 @scsi_set_transfer_settings(%struct.ccb_trans_settings* %117, %struct.cam_path* %14, i32 %118)
  %120 = call i32 @xpt_release_path(%struct.cam_path* %14)
  br label %121

121:                                              ; preds = %104, %100
  br label %122

122:                                              ; preds = %121, %92
  br label %123

123:                                              ; preds = %26, %122, %79
  ret void
}

declare dso_local i64 @xpt_compile_path(%struct.cam_path*, i32*, i32, i32, i32) #1

declare dso_local i32 @cam_freeze_devq(%struct.cam_path*) #1

declare dso_local i32 @cam_release_devq(%struct.cam_path*, i32, i32, i32, i32) #1

declare dso_local i32 @scsi_toggle_tags(%struct.cam_path*) #1

declare dso_local i32 @scsi_scan_lun(i32, %struct.cam_path*, i32, i32*) #1

declare dso_local i32 @xpt_release_path(%struct.cam_path*) #1

declare dso_local i32 @xpt_release_device(%struct.cam_ed*) #1

declare dso_local i32 @scsi_set_transfer_settings(%struct.ccb_trans_settings*, %struct.cam_path*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
