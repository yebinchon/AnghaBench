; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_get_transfer_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_get_transfer_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_trans_settings = type { i64, i32, i32, %struct.TYPE_6__, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_ata }
%struct.ccb_trans_settings_scsi = type { i32, i32 }
%struct.ccb_trans_settings_ata = type { i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.cam_ed* }
%struct.cam_ed = type { i32, i32, i32, i32, i32, i32 }
%union.ccb = type { i32 }

@PROTO_UNKNOWN = common dso_local global i32 0, align 4
@PROTO_UNSPECIFIED = common dso_local global i32 0, align 4
@PROTO_ATA = common dso_local global i32 0, align 4
@CTS_ATA_VALID_TQ = common dso_local global i32 0, align 4
@CTS_TYPE_USER_SETTINGS = common dso_local global i64 0, align 8
@CAM_DEV_TAG_AFTER_COUNT = common dso_local global i32 0, align 4
@SID_CmdQue = common dso_local global i32 0, align 4
@CTS_ATA_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@PROTO_SCSI = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@XPORT_UNKNOWN = common dso_local global i32 0, align 4
@XPORT_UNSPECIFIED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccb_trans_settings*)* @ata_get_transfer_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_get_transfer_settings(%struct.ccb_trans_settings* %0) #0 {
  %2 = alloca %struct.ccb_trans_settings*, align 8
  %3 = alloca %struct.ccb_trans_settings_ata*, align 8
  %4 = alloca %struct.ccb_trans_settings_scsi*, align 8
  %5 = alloca %struct.cam_ed*, align 8
  store %struct.ccb_trans_settings* %0, %struct.ccb_trans_settings** %2, align 8
  %6 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %2, align 8
  %7 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %6, i32 0, i32 6
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.cam_ed*, %struct.cam_ed** %10, align 8
  store %struct.cam_ed* %11, %struct.cam_ed** %5, align 8
  %12 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %2, align 8
  %13 = bitcast %struct.ccb_trans_settings* %12 to %union.ccb*
  %14 = call i32 @xpt_action_default(%union.ccb* %13)
  %15 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %2, align 8
  %16 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PROTO_UNKNOWN, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %2, align 8
  %22 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @PROTO_UNSPECIFIED, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20, %1
  %27 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %28 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %2, align 8
  %31 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %33 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %2, align 8
  %36 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %26, %20
  %38 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %2, align 8
  %39 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @PROTO_ATA, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %86

43:                                               ; preds = %37
  %44 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %2, align 8
  %45 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store %struct.ccb_trans_settings_ata* %46, %struct.ccb_trans_settings_ata** %3, align 8
  %47 = load %struct.ccb_trans_settings_ata*, %struct.ccb_trans_settings_ata** %3, align 8
  %48 = getelementptr inbounds %struct.ccb_trans_settings_ata, %struct.ccb_trans_settings_ata* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @CTS_ATA_VALID_TQ, align 4
  %51 = and i32 %49, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %85

53:                                               ; preds = %43
  %54 = load i32, i32* @CTS_ATA_VALID_TQ, align 4
  %55 = load %struct.ccb_trans_settings_ata*, %struct.ccb_trans_settings_ata** %3, align 8
  %56 = getelementptr inbounds %struct.ccb_trans_settings_ata, %struct.ccb_trans_settings_ata* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  %59 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %2, align 8
  %60 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CTS_TYPE_USER_SETTINGS, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %78, label %64

64:                                               ; preds = %53
  %65 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %66 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CAM_DEV_TAG_AFTER_COUNT, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %73 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @SID_CmdQue, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71, %64, %53
  %79 = load i32, i32* @CTS_ATA_FLAGS_TAG_ENB, align 4
  %80 = load %struct.ccb_trans_settings_ata*, %struct.ccb_trans_settings_ata** %3, align 8
  %81 = getelementptr inbounds %struct.ccb_trans_settings_ata, %struct.ccb_trans_settings_ata* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %78, %71
  br label %85

85:                                               ; preds = %84, %43
  br label %86

86:                                               ; preds = %85, %37
  %87 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %2, align 8
  %88 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @PROTO_SCSI, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %135

92:                                               ; preds = %86
  %93 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %2, align 8
  %94 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %95, %struct.ccb_trans_settings_scsi** %4, align 8
  %96 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %4, align 8
  %97 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %100 = and i32 %98, %99
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %134

102:                                              ; preds = %92
  %103 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %104 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %4, align 8
  %105 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %2, align 8
  %109 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @CTS_TYPE_USER_SETTINGS, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %127, label %113

113:                                              ; preds = %102
  %114 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %115 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @CAM_DEV_TAG_AFTER_COUNT, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %127, label %120

120:                                              ; preds = %113
  %121 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %122 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @SID_CmdQue, align 4
  %125 = and i32 %123, %124
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %120, %113, %102
  %128 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %129 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %4, align 8
  %130 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %127, %120
  br label %134

134:                                              ; preds = %133, %92
  br label %135

135:                                              ; preds = %134, %86
  %136 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %2, align 8
  %137 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @XPORT_UNKNOWN, align 4
  %140 = icmp eq i32 %138, %139
  br i1 %140, label %147, label %141

141:                                              ; preds = %135
  %142 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %2, align 8
  %143 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @XPORT_UNSPECIFIED, align 4
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %158

147:                                              ; preds = %141, %135
  %148 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %149 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %2, align 8
  %152 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %151, i32 0, i32 2
  store i32 %150, i32* %152, align 4
  %153 = load %struct.cam_ed*, %struct.cam_ed** %5, align 8
  %154 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %2, align 8
  %157 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %156, i32 0, i32 1
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %147, %141
  ret void
}

declare dso_local i32 @xpt_action_default(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
