; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_cam.c_aac_cam_fix_inquiry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_cam.c_aac_cam_fix_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.scsi_inquiry_data = type { i32 }
%struct.TYPE_5__ = type { i64*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64*, i64* }

@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i64 0, align 8
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@T_DIRECT = common dso_local global i64 0, align 8
@T_PROCESSOR = common dso_local global i64 0, align 8
@AAC_FLAGS_CAM_PASSONLY = common dso_local global i32 0, align 4
@SI_EVPD = common dso_local global i64 0, align 8
@SID_QUAL_LU_OFFLINE = common dso_local global i64 0, align 8
@SID_QUAL_LU_CONNECTED = common dso_local global i64 0, align 8
@T_NODEVICE = common dso_local global i64 0, align 8
@CAM_SEL_TIMEOUT = common dso_local global i64 0, align 8
@CAM_DEV_NOT_THERE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*, %union.ccb*)* @aac_cam_fix_inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_cam_fix_inquiry(%struct.aac_softc* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.scsi_inquiry_data*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %9 = load %union.ccb*, %union.ccb** %4, align 8
  %10 = bitcast %union.ccb* %9 to %struct.TYPE_6__*
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @CAM_CDB_POINTER, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %union.ccb*, %union.ccb** %4, align 8
  %18 = bitcast %union.ccb* %17 to %struct.TYPE_5__*
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %6, align 8
  br label %28

22:                                               ; preds = %2
  %23 = load %union.ccb*, %union.ccb** %4, align 8
  %24 = bitcast %union.ccb* %23 to %struct.TYPE_5__*
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  store i64* %27, i64** %6, align 8
  br label %28

28:                                               ; preds = %22, %16
  %29 = load i64*, i64** %6, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @INQUIRY, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %113

35:                                               ; preds = %28
  %36 = load %union.ccb*, %union.ccb** %4, align 8
  %37 = bitcast %union.ccb* %36 to %struct.TYPE_6__*
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CAM_REQ_CMP, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %94

42:                                               ; preds = %35
  %43 = load %union.ccb*, %union.ccb** %4, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_5__*
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = bitcast i64* %46 to %struct.scsi_inquiry_data*
  store %struct.scsi_inquiry_data* %47, %struct.scsi_inquiry_data** %5, align 8
  %48 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %49 = call i64 @SID_TYPE(%struct.scsi_inquiry_data* %48)
  store i64 %49, i64* %7, align 8
  %50 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %51 = call i64 @SID_QUAL(%struct.scsi_inquiry_data* %50)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load i64, i64* @T_DIRECT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %66, label %55

55:                                               ; preds = %42
  %56 = load i64, i64* %7, align 8
  %57 = load i64, i64* @T_PROCESSOR, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %66, label %59

59:                                               ; preds = %55
  %60 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %61 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @AAC_FLAGS_CAM_PASSONLY, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %59, %55, %42
  %67 = load i64*, i64** %6, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @SI_EVPD, align 8
  %71 = and i64 %69, %70
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %66
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* @T_DIRECT, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* @SID_QUAL_LU_OFFLINE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %77
  %82 = load i64, i64* @SID_QUAL_LU_CONNECTED, align 8
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %81, %77, %73, %66
  %84 = load i64, i64* %8, align 8
  %85 = shl i64 %84, 5
  %86 = load i64, i64* @T_NODEVICE, align 8
  %87 = or i64 %85, %86
  %88 = load %union.ccb*, %union.ccb** %4, align 8
  %89 = bitcast %union.ccb* %88 to %struct.TYPE_5__*
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i64*, i64** %90, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 0
  store i64 %87, i64* %92, align 8
  br label %93

93:                                               ; preds = %83, %59
  br label %113

94:                                               ; preds = %35
  %95 = load %union.ccb*, %union.ccb** %4, align 8
  %96 = bitcast %union.ccb* %95 to %struct.TYPE_6__*
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @CAM_SEL_TIMEOUT, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %94
  %102 = load %union.ccb*, %union.ccb** %4, align 8
  %103 = bitcast %union.ccb* %102 to %struct.TYPE_6__*
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load i64, i64* @CAM_DEV_NOT_THERE, align 8
  %109 = load %union.ccb*, %union.ccb** %4, align 8
  %110 = bitcast %union.ccb* %109 to %struct.TYPE_6__*
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  store i64 %108, i64* %111, align 8
  br label %112

112:                                              ; preds = %107, %101, %94
  br label %113

113:                                              ; preds = %34, %112, %93
  ret void
}

declare dso_local i64 @SID_TYPE(%struct.scsi_inquiry_data*) #1

declare dso_local i64 @SID_QUAL(%struct.scsi_inquiry_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
