; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_set_transfer_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_set_transfer_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_trans_settings = type { i64, i64, i64, i64, i64, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_ata }
%struct.ccb_trans_settings_scsi = type { i32, i32 }
%struct.ccb_trans_settings_ata = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.cam_path = type { %struct.cam_ed* }
%struct.cam_ed = type { i64, i64, i64, i64, i32, i64, i32, i32, i32, %struct.scsi_inquiry_data, %struct.ata_params }
%struct.scsi_inquiry_data = type { i32 }
%struct.ata_params = type { i32 }
%struct.ccb_pathinq = type { i32 }
%union.ccb = type { i32 }

@CAM_PATH_INVALID = common dso_local global i32 0, align 4
@PROTO_UNKNOWN = common dso_local global i64 0, align 8
@PROTO_UNSPECIFIED = common dso_local global i64 0, align 8
@PROTO_VERSION_UNKNOWN = common dso_local global i64 0, align 8
@PROTO_VERSION_UNSPECIFIED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Uninitialized Protocol %x:%x?\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"Down reving Protocol Version from %d to %d?\0A\00", align 1
@XPORT_UNKNOWN = common dso_local global i64 0, align 8
@XPORT_UNSPECIFIED = common dso_local global i64 0, align 8
@XPORT_VERSION_UNKNOWN = common dso_local global i64 0, align 8
@XPORT_VERSION_UNSPECIFIED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"Uninitialized Transport %x:%x?\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"Down reving Transport Version from %d to %d?\0A\00", align 1
@PROTO_ATA = common dso_local global i64 0, align 8
@PROTO_SCSI = common dso_local global i64 0, align 8
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@ATA_SUPPORT_NCQ = common dso_local global i32 0, align 4
@SCP_QUEUE_DQUE = common dso_local global i32 0, align 4
@CTS_ATA_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i64 0, align 8
@CTS_ATA_VALID_TQ = common dso_local global i32 0, align 4
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@CAM_DEV_TAG_AFTER_COUNT = common dso_local global i32 0, align 4
@SID_CmdQue = common dso_local global i32 0, align 4
@CAM_TAG_DELAY_COUNT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccb_trans_settings*, %struct.cam_path*, i32)* @ata_set_transfer_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_set_transfer_settings(%struct.ccb_trans_settings* %0, %struct.cam_path* %1, i32 %2) #0 {
  %4 = alloca %struct.ccb_trans_settings*, align 8
  %5 = alloca %struct.cam_path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccb_pathinq, align 4
  %8 = alloca %struct.ccb_trans_settings_ata*, align 8
  %9 = alloca %struct.ccb_trans_settings_scsi*, align 8
  %10 = alloca %struct.ata_params*, align 8
  %11 = alloca %struct.scsi_inquiry_data*, align 8
  %12 = alloca %struct.cam_ed*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ccb_trans_settings* %0, %struct.ccb_trans_settings** %4, align 8
  store %struct.cam_path* %1, %struct.cam_path** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %16 = icmp eq %struct.cam_path* %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %19 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %18, i32 0, i32 0
  %20 = load %struct.cam_ed*, %struct.cam_ed** %19, align 8
  store %struct.cam_ed* %20, %struct.cam_ed** %12, align 8
  %21 = icmp eq %struct.cam_ed* %20, null
  br i1 %21, label %22, label %30

22:                                               ; preds = %17, %3
  %23 = load i32, i32* @CAM_PATH_INVALID, align 4
  %24 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %25 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %28 = bitcast %struct.ccb_trans_settings* %27 to %union.ccb*
  %29 = call i32 @xpt_done(%union.ccb* %28)
  br label %390

30:                                               ; preds = %17
  %31 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %32 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PROTO_UNKNOWN, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %38 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @PROTO_UNSPECIFIED, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %53

42:                                               ; preds = %36, %30
  %43 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %44 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %47 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %49 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %52 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %51, i32 0, i32 1
  store i64 %50, i64* %52, align 8
  br label %53

53:                                               ; preds = %42, %36
  %54 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %55 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PROTO_VERSION_UNKNOWN, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %65, label %59

59:                                               ; preds = %53
  %60 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %61 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PROTO_VERSION_UNSPECIFIED, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %59, %53
  %66 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %67 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %70 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %65, %59
  %72 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %73 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %76 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %74, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %71
  %80 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %81 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %82 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %85 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @xpt_print(%struct.cam_path* %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %83, i64 %86)
  %88 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %89 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %92 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %79, %71
  %94 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %95 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %98 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp sgt i64 %96, %99
  br i1 %100, label %101, label %119

101:                                              ; preds = %93
  %102 = load i64, i64* @bootverbose, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %101
  %105 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %106 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %107 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %110 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @xpt_print(%struct.cam_path* %105, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %108, i64 %111)
  br label %113

113:                                              ; preds = %104, %101
  %114 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %115 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %118 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %117, i32 0, i32 1
  store i64 %116, i64* %118, align 8
  br label %119

119:                                              ; preds = %113, %93
  %120 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %121 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @XPORT_UNKNOWN, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %131, label %125

125:                                              ; preds = %119
  %126 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %127 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @XPORT_UNSPECIFIED, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %125, %119
  %132 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %133 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %132, i32 0, i32 2
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %136 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %135, i32 0, i32 2
  store i64 %134, i64* %136, align 8
  %137 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %138 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %137, i32 0, i32 3
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %141 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %140, i32 0, i32 3
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %131, %125
  %143 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %144 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @XPORT_VERSION_UNKNOWN, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %154, label %148

148:                                              ; preds = %142
  %149 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %150 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @XPORT_VERSION_UNSPECIFIED, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %160

154:                                              ; preds = %148, %142
  %155 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %156 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %155, i32 0, i32 3
  %157 = load i64, i64* %156, align 8
  %158 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %159 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %158, i32 0, i32 3
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %154, %148
  %161 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %162 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %165 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %164, i32 0, i32 2
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %163, %166
  br i1 %167, label %168, label %182

168:                                              ; preds = %160
  %169 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %170 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %171 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %174 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = call i32 @xpt_print(%struct.cam_path* %169, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %172, i64 %175)
  %177 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %178 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %177, i32 0, i32 2
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %181 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %180, i32 0, i32 2
  store i64 %179, i64* %181, align 8
  br label %182

182:                                              ; preds = %168, %160
  %183 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %184 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %187 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = icmp sgt i64 %185, %188
  br i1 %189, label %190, label %208

190:                                              ; preds = %182
  %191 = load i64, i64* @bootverbose, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %202

193:                                              ; preds = %190
  %194 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %195 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %196 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %199 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %198, i32 0, i32 3
  %200 = load i64, i64* %199, align 8
  %201 = call i32 @xpt_print(%struct.cam_path* %194, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %197, i64 %200)
  br label %202

202:                                              ; preds = %193, %190
  %203 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %204 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %207 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %206, i32 0, i32 3
  store i64 %205, i64* %207, align 8
  br label %208

208:                                              ; preds = %202, %182
  %209 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %210 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %209, i32 0, i32 10
  store %struct.ata_params* %210, %struct.ata_params** %10, align 8
  %211 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %212 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %211, i32 0, i32 9
  store %struct.scsi_inquiry_data* %212, %struct.scsi_inquiry_data** %11, align 8
  %213 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %214 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @PROTO_ATA, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %222

218:                                              ; preds = %208
  %219 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %220 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %219, i32 0, i32 5
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  store %struct.ccb_trans_settings_ata* %221, %struct.ccb_trans_settings_ata** %8, align 8
  br label %223

222:                                              ; preds = %208
  store %struct.ccb_trans_settings_ata* null, %struct.ccb_trans_settings_ata** %8, align 8
  br label %223

223:                                              ; preds = %222, %218
  %224 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %225 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @PROTO_SCSI, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %233

229:                                              ; preds = %223
  %230 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %231 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %231, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %232, %struct.ccb_trans_settings_scsi** %9, align 8
  br label %234

233:                                              ; preds = %223
  store %struct.ccb_trans_settings_scsi* null, %struct.ccb_trans_settings_scsi** %9, align 8
  br label %234

234:                                              ; preds = %233, %229
  %235 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %236 = call i32 @xpt_path_inq(%struct.ccb_pathinq* %7, %struct.cam_path* %235)
  %237 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %7, i32 0, i32 0
  %238 = load i32, i32* %237, align 4
  %239 = load i32, i32* @PI_TAG_ABLE, align 4
  %240 = and i32 %238, %239
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %271, label %242

242:                                              ; preds = %234
  %243 = load %struct.ccb_trans_settings_ata*, %struct.ccb_trans_settings_ata** %8, align 8
  %244 = icmp ne %struct.ccb_trans_settings_ata* %243, null
  br i1 %244, label %245, label %252

245:                                              ; preds = %242
  %246 = load %struct.ata_params*, %struct.ata_params** %10, align 8
  %247 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @ATA_SUPPORT_NCQ, align 4
  %250 = and i32 %248, %249
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %271, label %252

252:                                              ; preds = %245, %242
  %253 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %254 = icmp ne %struct.ccb_trans_settings_scsi* %253, null
  br i1 %254, label %255, label %259

255:                                              ; preds = %252
  %256 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %11, align 8
  %257 = call i64 @INQ_DATA_TQ_ENABLED(%struct.scsi_inquiry_data* %256)
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %271, label %259

259:                                              ; preds = %255, %252
  %260 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %261 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %260, i32 0, i32 4
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @SCP_QUEUE_DQUE, align 4
  %264 = and i32 %262, %263
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %271, label %266

266:                                              ; preds = %259
  %267 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %268 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %267, i32 0, i32 5
  %269 = load i64, i64* %268, align 8
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %292

271:                                              ; preds = %266, %259, %255, %245, %234
  %272 = load %struct.ccb_trans_settings_ata*, %struct.ccb_trans_settings_ata** %8, align 8
  %273 = icmp ne %struct.ccb_trans_settings_ata* %272, null
  br i1 %273, label %274, label %281

274:                                              ; preds = %271
  %275 = load i32, i32* @CTS_ATA_FLAGS_TAG_ENB, align 4
  %276 = xor i32 %275, -1
  %277 = load %struct.ccb_trans_settings_ata*, %struct.ccb_trans_settings_ata** %8, align 8
  %278 = getelementptr inbounds %struct.ccb_trans_settings_ata, %struct.ccb_trans_settings_ata* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %279, %276
  store i32 %280, i32* %278, align 4
  br label %281

281:                                              ; preds = %274, %271
  %282 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %283 = icmp ne %struct.ccb_trans_settings_scsi* %282, null
  br i1 %283, label %284, label %291

284:                                              ; preds = %281
  %285 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %286 = xor i32 %285, -1
  %287 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %288 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = and i32 %289, %286
  store i32 %290, i32* %288, align 4
  br label %291

291:                                              ; preds = %284, %281
  br label %292

292:                                              ; preds = %291, %266
  %293 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %294 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %293, i32 0, i32 4
  %295 = load i64, i64* %294, align 8
  %296 = load i64, i64* @CTS_TYPE_CURRENT_SETTINGS, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %382

298:                                              ; preds = %292
  %299 = load %struct.ccb_trans_settings_ata*, %struct.ccb_trans_settings_ata** %8, align 8
  %300 = icmp ne %struct.ccb_trans_settings_ata* %299, null
  br i1 %300, label %301, label %308

301:                                              ; preds = %298
  %302 = load %struct.ccb_trans_settings_ata*, %struct.ccb_trans_settings_ata** %8, align 8
  %303 = getelementptr inbounds %struct.ccb_trans_settings_ata, %struct.ccb_trans_settings_ata* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load i32, i32* @CTS_ATA_VALID_TQ, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %318, label %308

308:                                              ; preds = %301, %298
  %309 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %310 = icmp ne %struct.ccb_trans_settings_scsi* %309, null
  br i1 %310, label %311, label %382

311:                                              ; preds = %308
  %312 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %313 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %312, i32 0, i32 1
  %314 = load i32, i32* %313, align 4
  %315 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %316 = and i32 %314, %315
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %382

318:                                              ; preds = %311, %301
  store i32 0, i32* %14, align 4
  %319 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %320 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %319, i32 0, i32 6
  %321 = load i32, i32* %320, align 8
  %322 = load i32, i32* @CAM_DEV_TAG_AFTER_COUNT, align 4
  %323 = and i32 %321, %322
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %332, label %325

325:                                              ; preds = %318
  %326 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %327 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %326, i32 0, i32 7
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* @SID_CmdQue, align 4
  %330 = and i32 %328, %329
  %331 = icmp ne i32 %330, 0
  br label %332

332:                                              ; preds = %325, %318
  %333 = phi i1 [ true, %318 ], [ %331, %325 ]
  %334 = zext i1 %333 to i32
  store i32 %334, i32* %13, align 4
  %335 = load %struct.ccb_trans_settings_ata*, %struct.ccb_trans_settings_ata** %8, align 8
  %336 = icmp ne %struct.ccb_trans_settings_ata* %335, null
  br i1 %336, label %337, label %345

337:                                              ; preds = %332
  %338 = load %struct.ccb_trans_settings_ata*, %struct.ccb_trans_settings_ata** %8, align 8
  %339 = getelementptr inbounds %struct.ccb_trans_settings_ata, %struct.ccb_trans_settings_ata* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @CTS_ATA_FLAGS_TAG_ENB, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  %344 = zext i1 %343 to i32
  store i32 %344, i32* %14, align 4
  br label %345

345:                                              ; preds = %337, %332
  %346 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %347 = icmp ne %struct.ccb_trans_settings_scsi* %346, null
  br i1 %347, label %348, label %356

348:                                              ; preds = %345
  %349 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %350 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %349, i32 0, i32 0
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %353 = and i32 %351, %352
  %354 = icmp ne i32 %353, 0
  %355 = zext i1 %354 to i32
  store i32 %355, i32* %14, align 4
  br label %356

356:                                              ; preds = %348, %345
  %357 = load i32, i32* %14, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %371

359:                                              ; preds = %356
  %360 = load i32, i32* %13, align 4
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %371, label %362

362:                                              ; preds = %359
  %363 = load i32, i32* @CAM_TAG_DELAY_COUNT, align 4
  %364 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %365 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %364, i32 0, i32 8
  store i32 %363, i32* %365, align 8
  %366 = load i32, i32* @CAM_DEV_TAG_AFTER_COUNT, align 4
  %367 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %368 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %367, i32 0, i32 6
  %369 = load i32, i32* %368, align 8
  %370 = or i32 %369, %366
  store i32 %370, i32* %368, align 8
  br label %381

371:                                              ; preds = %359, %356
  %372 = load i32, i32* %13, align 4
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %374, label %380

374:                                              ; preds = %371
  %375 = load i32, i32* %14, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %380, label %377

377:                                              ; preds = %374
  %378 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %379 = call i32 @xpt_stop_tags(%struct.cam_path* %378)
  br label %380

380:                                              ; preds = %377, %374, %371
  br label %381

381:                                              ; preds = %380, %362
  br label %382

382:                                              ; preds = %381, %311, %308, %292
  %383 = load i32, i32* %6, align 4
  %384 = load i32, i32* @FALSE, align 4
  %385 = icmp eq i32 %383, %384
  br i1 %385, label %386, label %390

386:                                              ; preds = %382
  %387 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %388 = bitcast %struct.ccb_trans_settings* %387 to %union.ccb*
  %389 = call i32 @xpt_action_default(%union.ccb* %388)
  br label %390

390:                                              ; preds = %22, %386, %382
  ret void
}

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @xpt_print(%struct.cam_path*, i8*, i64, i64) #1

declare dso_local i32 @xpt_path_inq(%struct.ccb_pathinq*, %struct.cam_path*) #1

declare dso_local i64 @INQ_DATA_TQ_ENABLED(%struct.scsi_inquiry_data*) #1

declare dso_local i32 @xpt_stop_tags(%struct.cam_path*) #1

declare dso_local i32 @xpt_action_default(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
