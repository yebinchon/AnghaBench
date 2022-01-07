; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_set_transfer_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_set_transfer_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_trans_settings = type { i64, i64, i64, i64, i64, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_10__ }
%struct.TYPE_7__ = type { %struct.ccb_trans_settings_spi }
%struct.ccb_trans_settings_spi = type { i32, i32, i32, i32, i64, i64 }
%struct.TYPE_6__ = type { %struct.ccb_trans_settings_scsi }
%struct.ccb_trans_settings_scsi = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.cam_path = type { %struct.cam_ed* }
%struct.cam_ed = type { i64, i64, i64, i64, i32, i64, i32, i32, i32, %struct.scsi_inquiry_data }
%struct.scsi_inquiry_data = type { i32, i32 }
%struct.ccb_pathinq = type { i32, %struct.TYPE_9__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
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
@PROTO_SCSI = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@CAM_PRIORITY_NONE = common dso_local global i32 0, align 4
@XPT_PATH_INQ = common dso_local global i32 0, align 4
@PI_TAG_ABLE = common dso_local global i32 0, align 4
@SCP_QUEUE_DQUE = common dso_local global i32 0, align 4
@CTS_SCSI_FLAGS_TAG_ENB = common dso_local global i32 0, align 4
@XPT_GET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@CTS_SCSI_VALID_TQ = common dso_local global i32 0, align 4
@XPORT_SPI = common dso_local global i64 0, align 8
@CTS_SPI_VALID_SYNC_RATE = common dso_local global i32 0, align 4
@CTS_SPI_VALID_SYNC_OFFSET = common dso_local global i32 0, align 4
@CTS_SPI_VALID_PPR_OPTIONS = common dso_local global i32 0, align 4
@CTS_SPI_VALID_BUS_WIDTH = common dso_local global i32 0, align 4
@CTS_SPI_VALID_DISC = common dso_local global i32 0, align 4
@CTS_SPI_FLAGS_DISC_ENB = common dso_local global i32 0, align 4
@CAM_DEV_INQUIRY_DATA_VALID = common dso_local global i32 0, align 4
@SID_Sync = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i64 0, align 8
@PI_SDTR_ABLE = common dso_local global i32 0, align 4
@SID_WBus32 = common dso_local global i32 0, align 4
@CTS_TYPE_USER_SETTINGS = common dso_local global i64 0, align 8
@PI_WIDE_32 = common dso_local global i32 0, align 4
@SID_WBus16 = common dso_local global i32 0, align 4
@PI_WIDE_16 = common dso_local global i32 0, align 4
@SID_SPI_CLOCK_DT = common dso_local global i32 0, align 4
@MSG_EXT_PPR_DT_REQ = common dso_local global i32 0, align 4
@SID_SPI_IUS = common dso_local global i32 0, align 4
@MSG_EXT_PPR_IU_REQ = common dso_local global i32 0, align 4
@SID_SPI_QAS = common dso_local global i32 0, align 4
@MSG_EXT_PPR_QAS_REQ = common dso_local global i32 0, align 4
@SID_CmdQue = common dso_local global i32 0, align 4
@CAM_DEV_TAG_AFTER_COUNT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@CAM_TAG_DELAY_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccb_trans_settings*, %struct.cam_path*, i32)* @scsi_set_transfer_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_set_transfer_settings(%struct.ccb_trans_settings* %0, %struct.cam_path* %1, i32 %2) #0 {
  %4 = alloca %struct.ccb_trans_settings*, align 8
  %5 = alloca %struct.cam_path*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ccb_pathinq, align 4
  %8 = alloca %struct.ccb_trans_settings, align 8
  %9 = alloca %struct.ccb_trans_settings_scsi*, align 8
  %10 = alloca %struct.ccb_trans_settings_scsi*, align 8
  %11 = alloca %struct.scsi_inquiry_data*, align 8
  %12 = alloca %struct.cam_ed*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ccb_trans_settings_spi*, align 8
  %15 = alloca %struct.ccb_trans_settings_spi*, align 8
  %16 = alloca i32, align 4
  store %struct.ccb_trans_settings* %0, %struct.ccb_trans_settings** %4, align 8
  store %struct.cam_path* %1, %struct.cam_path** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %18 = icmp eq %struct.cam_path* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %3
  %20 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %21 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %20, i32 0, i32 0
  %22 = load %struct.cam_ed*, %struct.cam_ed** %21, align 8
  store %struct.cam_ed* %22, %struct.cam_ed** %12, align 8
  %23 = icmp eq %struct.cam_ed* %22, null
  br i1 %23, label %24, label %32

24:                                               ; preds = %19, %3
  %25 = load i32, i32* @CAM_PATH_INVALID, align 4
  %26 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %27 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %30 = bitcast %struct.ccb_trans_settings* %29 to %union.ccb*
  %31 = call i32 @xpt_done(%union.ccb* %30)
  br label %782

32:                                               ; preds = %19
  %33 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %34 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PROTO_UNKNOWN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %40 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PROTO_UNSPECIFIED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %55

44:                                               ; preds = %38, %32
  %45 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %46 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %49 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %51 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %54 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  br label %55

55:                                               ; preds = %44, %38
  %56 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %57 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PROTO_VERSION_UNKNOWN, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %67, label %61

61:                                               ; preds = %55
  %62 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %63 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PROTO_VERSION_UNSPECIFIED, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %61, %55
  %68 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %69 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %72 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %71, i32 0, i32 1
  store i64 %70, i64* %72, align 8
  br label %73

73:                                               ; preds = %67, %61
  %74 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %75 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %78 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %73
  %82 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %83 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %84 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %87 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = call i32 @xpt_print(%struct.cam_path* %82, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i64 %85, i64 %88)
  %90 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %91 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %94 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %81, %73
  %96 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %97 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %100 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp sgt i64 %98, %101
  br i1 %102, label %103, label %121

103:                                              ; preds = %95
  %104 = load i64, i64* @bootverbose, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %115

106:                                              ; preds = %103
  %107 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %108 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %109 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %112 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @xpt_print(%struct.cam_path* %107, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %110, i64 %113)
  br label %115

115:                                              ; preds = %106, %103
  %116 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %117 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %120 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %119, i32 0, i32 1
  store i64 %118, i64* %120, align 8
  br label %121

121:                                              ; preds = %115, %95
  %122 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %123 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @XPORT_UNKNOWN, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %133, label %127

127:                                              ; preds = %121
  %128 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %129 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %128, i32 0, i32 2
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @XPORT_UNSPECIFIED, align 8
  %132 = icmp eq i64 %130, %131
  br i1 %132, label %133, label %144

133:                                              ; preds = %127, %121
  %134 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %135 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %138 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %137, i32 0, i32 2
  store i64 %136, i64* %138, align 8
  %139 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %140 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %143 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %142, i32 0, i32 3
  store i64 %141, i64* %143, align 8
  br label %144

144:                                              ; preds = %133, %127
  %145 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %146 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %145, i32 0, i32 3
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @XPORT_VERSION_UNKNOWN, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %156, label %150

150:                                              ; preds = %144
  %151 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %152 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %151, i32 0, i32 3
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @XPORT_VERSION_UNSPECIFIED, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %150, %144
  %157 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %158 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %161 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %160, i32 0, i32 3
  store i64 %159, i64* %161, align 8
  br label %162

162:                                              ; preds = %156, %150
  %163 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %164 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %167 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %165, %168
  br i1 %169, label %170, label %184

170:                                              ; preds = %162
  %171 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %172 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %173 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %176 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %175, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = call i32 @xpt_print(%struct.cam_path* %171, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %174, i64 %177)
  %179 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %180 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %183 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %182, i32 0, i32 2
  store i64 %181, i64* %183, align 8
  br label %184

184:                                              ; preds = %170, %162
  %185 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %186 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %189 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %188, i32 0, i32 3
  %190 = load i64, i64* %189, align 8
  %191 = icmp sgt i64 %187, %190
  br i1 %191, label %192, label %210

192:                                              ; preds = %184
  %193 = load i64, i64* @bootverbose, align 8
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %204

195:                                              ; preds = %192
  %196 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %197 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %198 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %197, i32 0, i32 3
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %201 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = call i32 @xpt_print(%struct.cam_path* %196, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0), i64 %199, i64 %202)
  br label %204

204:                                              ; preds = %195, %192
  %205 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %206 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %205, i32 0, i32 3
  %207 = load i64, i64* %206, align 8
  %208 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %209 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %208, i32 0, i32 3
  store i64 %207, i64* %209, align 8
  br label %210

210:                                              ; preds = %204, %184
  %211 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %212 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @PROTO_SCSI, align 8
  %215 = icmp ne i64 %213, %214
  br i1 %215, label %216, label %225

216:                                              ; preds = %210
  %217 = load i32, i32* %6, align 4
  %218 = load i32, i32* @FALSE, align 4
  %219 = icmp eq i32 %217, %218
  br i1 %219, label %220, label %224

220:                                              ; preds = %216
  %221 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %222 = bitcast %struct.ccb_trans_settings* %221 to %union.ccb*
  %223 = call i32 @xpt_action_default(%union.ccb* %222)
  br label %224

224:                                              ; preds = %220, %216
  br label %782

225:                                              ; preds = %210
  %226 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %227 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %226, i32 0, i32 9
  store %struct.scsi_inquiry_data* %227, %struct.scsi_inquiry_data** %11, align 8
  %228 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %229 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %228, i32 0, i32 6
  %230 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %229, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %230, %struct.ccb_trans_settings_scsi** %9, align 8
  %231 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %7, i32 0, i32 2
  %232 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %233 = load i32, i32* @CAM_PRIORITY_NONE, align 4
  %234 = call i32 @xpt_setup_ccb(%struct.TYPE_10__* %231, %struct.cam_path* %232, i32 %233)
  %235 = load i32, i32* @XPT_PATH_INQ, align 4
  %236 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %7, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 4
  %238 = bitcast %struct.ccb_pathinq* %7 to %union.ccb*
  %239 = call i32 @xpt_action(%union.ccb* %238)
  %240 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %7, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @PI_TAG_ABLE, align 4
  %243 = and i32 %241, %242
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %261, label %245

245:                                              ; preds = %225
  %246 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %11, align 8
  %247 = call i64 @INQ_DATA_TQ_ENABLED(%struct.scsi_inquiry_data* %246)
  %248 = icmp eq i64 %247, 0
  br i1 %248, label %261, label %249

249:                                              ; preds = %245
  %250 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %251 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %250, i32 0, i32 4
  %252 = load i32, i32* %251, align 8
  %253 = load i32, i32* @SCP_QUEUE_DQUE, align 4
  %254 = and i32 %252, %253
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %261, label %256

256:                                              ; preds = %249
  %257 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %258 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %257, i32 0, i32 5
  %259 = load i64, i64* %258, align 8
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %261, label %268

261:                                              ; preds = %256, %249, %245, %225
  %262 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %263 = xor i32 %262, -1
  %264 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %265 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = and i32 %266, %263
  store i32 %267, i32* %265, align 4
  br label %268

268:                                              ; preds = %261, %256
  %269 = load i32, i32* %6, align 4
  %270 = load i32, i32* @FALSE, align 4
  %271 = icmp eq i32 %269, %270
  br i1 %271, label %272, label %331

272:                                              ; preds = %268
  %273 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %8, i32 0, i32 7
  %274 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %275 = load i32, i32* @CAM_PRIORITY_NONE, align 4
  %276 = call i32 @xpt_setup_ccb(%struct.TYPE_10__* %273, %struct.cam_path* %274, i32 %275)
  %277 = load i32, i32* @XPT_GET_TRAN_SETTINGS, align 4
  %278 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %8, i32 0, i32 7
  %279 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %278, i32 0, i32 0
  store i32 %277, i32* %279, align 8
  %280 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %281 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %280, i32 0, i32 4
  %282 = load i64, i64* %281, align 8
  %283 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %8, i32 0, i32 4
  store i64 %282, i64* %283, align 8
  %284 = bitcast %struct.ccb_trans_settings* %8 to %union.ccb*
  %285 = call i32 @xpt_action(%union.ccb* %284)
  %286 = bitcast %struct.ccb_trans_settings* %8 to %union.ccb*
  %287 = call i64 @cam_ccb_status(%union.ccb* %286)
  %288 = load i64, i64* @CAM_REQ_CMP, align 8
  %289 = icmp ne i64 %287, %288
  br i1 %289, label %290, label %291

290:                                              ; preds = %272
  br label %782

291:                                              ; preds = %272
  %292 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %8, i32 0, i32 6
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  store %struct.ccb_trans_settings_scsi* %293, %struct.ccb_trans_settings_scsi** %10, align 8
  %294 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %295 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %298 = and i32 %296, %297
  %299 = icmp eq i32 %298, 0
  br i1 %299, label %300, label %316

300:                                              ; preds = %291
  %301 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %302 = xor i32 %301, -1
  %303 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %304 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = and i32 %305, %302
  store i32 %306, i32* %304, align 4
  %307 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %10, align 8
  %308 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %311 = and i32 %309, %310
  %312 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %313 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = or i32 %314, %311
  store i32 %315, i32* %313, align 4
  br label %316

316:                                              ; preds = %300, %291
  %317 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %10, align 8
  %318 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %321 = and i32 %319, %320
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %330

323:                                              ; preds = %316
  %324 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %325 = xor i32 %324, -1
  %326 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %327 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  %329 = and i32 %328, %325
  store i32 %329, i32* %327, align 4
  br label %330

330:                                              ; preds = %323, %316
  br label %331

331:                                              ; preds = %330, %268
  %332 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %333 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = load i64, i64* @XPORT_SPI, align 8
  %336 = icmp eq i64 %334, %335
  br i1 %336, label %337, label %700

337:                                              ; preds = %331
  %338 = load i32, i32* %6, align 4
  %339 = load i32, i32* @FALSE, align 4
  %340 = icmp eq i32 %338, %339
  br i1 %340, label %341, label %700

341:                                              ; preds = %337
  %342 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %343 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %342, i32 0, i32 5
  %344 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %343, i32 0, i32 0
  store %struct.ccb_trans_settings_spi* %344, %struct.ccb_trans_settings_spi** %14, align 8
  %345 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %8, i32 0, i32 5
  %346 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i32 0, i32 0
  store %struct.ccb_trans_settings_spi* %346, %struct.ccb_trans_settings_spi** %15, align 8
  %347 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %348 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %347, i32 0, i32 0
  %349 = load i32, i32* %348, align 8
  %350 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %351 = and i32 %349, %350
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %341
  %354 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %15, align 8
  %355 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %354, i32 0, i32 5
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %358 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %357, i32 0, i32 5
  store i64 %356, i64* %358, align 8
  br label %359

359:                                              ; preds = %353, %341
  %360 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %15, align 8
  %361 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 8
  %363 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %364 = and i32 %362, %363
  %365 = icmp eq i32 %364, 0
  br i1 %365, label %366, label %369

366:                                              ; preds = %359
  %367 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %368 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %367, i32 0, i32 5
  store i64 0, i64* %368, align 8
  br label %369

369:                                              ; preds = %366, %359
  %370 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %371 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %374 = and i32 %372, %373
  %375 = icmp eq i32 %374, 0
  br i1 %375, label %376, label %382

376:                                              ; preds = %369
  %377 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %15, align 8
  %378 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %377, i32 0, i32 4
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %381 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %380, i32 0, i32 4
  store i64 %379, i64* %381, align 8
  br label %382

382:                                              ; preds = %376, %369
  %383 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %15, align 8
  %384 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %383, i32 0, i32 0
  %385 = load i32, i32* %384, align 8
  %386 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %387 = and i32 %385, %386
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %389, label %392

389:                                              ; preds = %382
  %390 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %391 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %390, i32 0, i32 4
  store i64 0, i64* %391, align 8
  br label %392

392:                                              ; preds = %389, %382
  %393 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %394 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %393, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = load i32, i32* @CTS_SPI_VALID_PPR_OPTIONS, align 4
  %397 = and i32 %395, %396
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %405

399:                                              ; preds = %392
  %400 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %15, align 8
  %401 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %400, i32 0, i32 3
  %402 = load i32, i32* %401, align 4
  %403 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %404 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %403, i32 0, i32 3
  store i32 %402, i32* %404, align 4
  br label %405

405:                                              ; preds = %399, %392
  %406 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %15, align 8
  %407 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @CTS_SPI_VALID_PPR_OPTIONS, align 4
  %410 = and i32 %408, %409
  %411 = icmp eq i32 %410, 0
  br i1 %411, label %412, label %415

412:                                              ; preds = %405
  %413 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %414 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %413, i32 0, i32 3
  store i32 0, i32* %414, align 4
  br label %415

415:                                              ; preds = %412, %405
  %416 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %417 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %420 = and i32 %418, %419
  %421 = icmp eq i32 %420, 0
  br i1 %421, label %422, label %428

422:                                              ; preds = %415
  %423 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %15, align 8
  %424 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %423, i32 0, i32 1
  %425 = load i32, i32* %424, align 4
  %426 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %427 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %426, i32 0, i32 1
  store i32 %425, i32* %427, align 4
  br label %428

428:                                              ; preds = %422, %415
  %429 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %15, align 8
  %430 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %429, i32 0, i32 0
  %431 = load i32, i32* %430, align 8
  %432 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %433 = and i32 %431, %432
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %438

435:                                              ; preds = %428
  %436 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %437 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %436, i32 0, i32 1
  store i32 0, i32* %437, align 4
  br label %438

438:                                              ; preds = %435, %428
  %439 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %440 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %439, i32 0, i32 0
  %441 = load i32, i32* %440, align 8
  %442 = load i32, i32* @CTS_SPI_VALID_DISC, align 4
  %443 = and i32 %441, %442
  %444 = icmp eq i32 %443, 0
  br i1 %444, label %445, label %461

445:                                              ; preds = %438
  %446 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %447 = xor i32 %446, -1
  %448 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %449 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %448, i32 0, i32 2
  %450 = load i32, i32* %449, align 8
  %451 = and i32 %450, %447
  store i32 %451, i32* %449, align 8
  %452 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %15, align 8
  %453 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %452, i32 0, i32 2
  %454 = load i32, i32* %453, align 8
  %455 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %456 = and i32 %454, %455
  %457 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %458 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %457, i32 0, i32 2
  %459 = load i32, i32* %458, align 8
  %460 = or i32 %459, %456
  store i32 %460, i32* %458, align 8
  br label %461

461:                                              ; preds = %445, %438
  %462 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %15, align 8
  %463 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %462, i32 0, i32 0
  %464 = load i32, i32* %463, align 8
  %465 = load i32, i32* @CTS_SPI_VALID_DISC, align 4
  %466 = and i32 %464, %465
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %468, label %475

468:                                              ; preds = %461
  %469 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %470 = xor i32 %469, -1
  %471 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %472 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 8
  %474 = and i32 %473, %470
  store i32 %474, i32* %472, align 8
  br label %475

475:                                              ; preds = %468, %461
  %476 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %477 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %476, i32 0, i32 6
  %478 = load i32, i32* %477, align 8
  %479 = load i32, i32* @CAM_DEV_INQUIRY_DATA_VALID, align 4
  %480 = and i32 %478, %479
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %495

482:                                              ; preds = %475
  %483 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %11, align 8
  %484 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %483, i32 0, i32 0
  %485 = load i32, i32* %484, align 4
  %486 = load i32, i32* @SID_Sync, align 4
  %487 = and i32 %485, %486
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %495

489:                                              ; preds = %482
  %490 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %491 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %490, i32 0, i32 4
  %492 = load i64, i64* %491, align 8
  %493 = load i64, i64* @CTS_TYPE_CURRENT_SETTINGS, align 8
  %494 = icmp eq i64 %492, %493
  br i1 %494, label %501, label %495

495:                                              ; preds = %489, %482, %475
  %496 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %7, i32 0, i32 0
  %497 = load i32, i32* %496, align 4
  %498 = load i32, i32* @PI_SDTR_ABLE, align 4
  %499 = and i32 %497, %498
  %500 = icmp eq i32 %499, 0
  br i1 %500, label %501, label %506

501:                                              ; preds = %495, %489
  %502 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %503 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %502, i32 0, i32 5
  store i64 0, i64* %503, align 8
  %504 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %505 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %504, i32 0, i32 4
  store i64 0, i64* %505, align 8
  br label %506

506:                                              ; preds = %501, %495
  %507 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %508 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %507, i32 0, i32 1
  %509 = load i32, i32* %508, align 4
  switch i32 %509, label %568 [
    i32 129, label %510
    i32 130, label %538
    i32 128, label %569
  ]

510:                                              ; preds = %506
  %511 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %512 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %511, i32 0, i32 6
  %513 = load i32, i32* %512, align 8
  %514 = load i32, i32* @CAM_DEV_INQUIRY_DATA_VALID, align 4
  %515 = and i32 %513, %514
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %530, label %517

517:                                              ; preds = %510
  %518 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %11, align 8
  %519 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %518, i32 0, i32 0
  %520 = load i32, i32* %519, align 4
  %521 = load i32, i32* @SID_WBus32, align 4
  %522 = and i32 %520, %521
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %530, label %524

524:                                              ; preds = %517
  %525 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %526 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %525, i32 0, i32 4
  %527 = load i64, i64* %526, align 8
  %528 = load i64, i64* @CTS_TYPE_USER_SETTINGS, align 8
  %529 = icmp eq i64 %527, %528
  br i1 %529, label %530, label %537

530:                                              ; preds = %524, %517, %510
  %531 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %7, i32 0, i32 0
  %532 = load i32, i32* %531, align 4
  %533 = load i32, i32* @PI_WIDE_32, align 4
  %534 = and i32 %532, %533
  %535 = icmp ne i32 %534, 0
  br i1 %535, label %536, label %537

536:                                              ; preds = %530
  br label %572

537:                                              ; preds = %530, %524
  br label %538

538:                                              ; preds = %506, %537
  %539 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %540 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %539, i32 0, i32 6
  %541 = load i32, i32* %540, align 8
  %542 = load i32, i32* @CAM_DEV_INQUIRY_DATA_VALID, align 4
  %543 = and i32 %541, %542
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %558, label %545

545:                                              ; preds = %538
  %546 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %11, align 8
  %547 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 4
  %549 = load i32, i32* @SID_WBus16, align 4
  %550 = and i32 %548, %549
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %558, label %552

552:                                              ; preds = %545
  %553 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %554 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %553, i32 0, i32 4
  %555 = load i64, i64* %554, align 8
  %556 = load i64, i64* @CTS_TYPE_USER_SETTINGS, align 8
  %557 = icmp eq i64 %555, %556
  br i1 %557, label %558, label %567

558:                                              ; preds = %552, %545, %538
  %559 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %7, i32 0, i32 0
  %560 = load i32, i32* %559, align 4
  %561 = load i32, i32* @PI_WIDE_16, align 4
  %562 = and i32 %560, %561
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %564, label %567

564:                                              ; preds = %558
  %565 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %566 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %565, i32 0, i32 1
  store i32 130, i32* %566, align 4
  br label %572

567:                                              ; preds = %558, %552
  br label %568

568:                                              ; preds = %506, %567
  br label %569

569:                                              ; preds = %506, %568
  %570 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %571 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %570, i32 0, i32 1
  store i32 128, i32* %571, align 4
  br label %572

572:                                              ; preds = %569, %564, %536
  %573 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %7, i32 0, i32 1
  %574 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %573, i32 0, i32 0
  %575 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 4
  store i32 %576, i32* %13, align 4
  %577 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %578 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %577, i32 0, i32 6
  %579 = load i32, i32* %578, align 8
  %580 = load i32, i32* @CAM_DEV_INQUIRY_DATA_VALID, align 4
  %581 = and i32 %579, %580
  %582 = icmp ne i32 %581, 0
  br i1 %582, label %583, label %595

583:                                              ; preds = %572
  %584 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %585 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %584, i32 0, i32 4
  %586 = load i64, i64* %585, align 8
  %587 = load i64, i64* @CTS_TYPE_CURRENT_SETTINGS, align 8
  %588 = icmp eq i64 %586, %587
  br i1 %588, label %589, label %595

589:                                              ; preds = %583
  %590 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %11, align 8
  %591 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %590, i32 0, i32 1
  %592 = load i32, i32* %591, align 4
  %593 = load i32, i32* %13, align 4
  %594 = and i32 %593, %592
  store i32 %594, i32* %13, align 4
  br label %595

595:                                              ; preds = %589, %583, %572
  %596 = load i32, i32* %13, align 4
  %597 = load i32, i32* @SID_SPI_CLOCK_DT, align 4
  %598 = and i32 %596, %597
  %599 = icmp eq i32 %598, 0
  br i1 %599, label %600, label %607

600:                                              ; preds = %595
  %601 = load i32, i32* @MSG_EXT_PPR_DT_REQ, align 4
  %602 = xor i32 %601, -1
  %603 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %604 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %603, i32 0, i32 3
  %605 = load i32, i32* %604, align 4
  %606 = and i32 %605, %602
  store i32 %606, i32* %604, align 4
  br label %607

607:                                              ; preds = %600, %595
  %608 = load i32, i32* %13, align 4
  %609 = load i32, i32* @SID_SPI_IUS, align 4
  %610 = and i32 %608, %609
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %612, label %619

612:                                              ; preds = %607
  %613 = load i32, i32* @MSG_EXT_PPR_IU_REQ, align 4
  %614 = xor i32 %613, -1
  %615 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %616 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %615, i32 0, i32 3
  %617 = load i32, i32* %616, align 4
  %618 = and i32 %617, %614
  store i32 %618, i32* %616, align 4
  br label %619

619:                                              ; preds = %612, %607
  %620 = load i32, i32* %13, align 4
  %621 = load i32, i32* @SID_SPI_QAS, align 4
  %622 = and i32 %620, %621
  %623 = icmp eq i32 %622, 0
  br i1 %623, label %624, label %631

624:                                              ; preds = %619
  %625 = load i32, i32* @MSG_EXT_PPR_QAS_REQ, align 4
  %626 = xor i32 %625, -1
  %627 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %628 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %627, i32 0, i32 3
  %629 = load i32, i32* %628, align 4
  %630 = and i32 %629, %626
  store i32 %630, i32* %628, align 4
  br label %631

631:                                              ; preds = %624, %619
  %632 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %633 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %632, i32 0, i32 1
  %634 = load i32, i32* %633, align 4
  %635 = icmp eq i32 %634, 0
  br i1 %635, label %636, label %639

636:                                              ; preds = %631
  %637 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %638 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %637, i32 0, i32 3
  store i32 0, i32* %638, align 4
  br label %639

639:                                              ; preds = %636, %631
  %640 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %641 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %640, i32 0, i32 0
  %642 = load i32, i32* %641, align 8
  %643 = load i32, i32* @CTS_SPI_VALID_DISC, align 4
  %644 = and i32 %642, %643
  %645 = icmp ne i32 %644, 0
  br i1 %645, label %646, label %665

646:                                              ; preds = %639
  %647 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %648 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %647, i32 0, i32 2
  %649 = load i32, i32* %648, align 8
  %650 = load i32, i32* @CTS_SPI_FLAGS_DISC_ENB, align 4
  %651 = and i32 %649, %650
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %653, label %665

653:                                              ; preds = %646
  %654 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %655 = xor i32 %654, -1
  %656 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %657 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %656, i32 0, i32 0
  %658 = load i32, i32* %657, align 4
  %659 = and i32 %658, %655
  store i32 %659, i32* %657, align 4
  %660 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %661 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %662 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %661, i32 0, i32 1
  %663 = load i32, i32* %662, align 4
  %664 = or i32 %663, %660
  store i32 %664, i32* %662, align 4
  br label %665

665:                                              ; preds = %653, %646, %639
  %666 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %667 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %666, i32 0, i32 4
  %668 = load i64, i64* %667, align 8
  %669 = load i64, i64* @CTS_TYPE_CURRENT_SETTINGS, align 8
  %670 = icmp eq i64 %668, %669
  br i1 %670, label %671, label %699

671:                                              ; preds = %665
  %672 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %673 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %672, i32 0, i32 7
  %674 = load i32, i32* %673, align 4
  %675 = load i32, i32* @SID_CmdQue, align 4
  %676 = and i32 %674, %675
  %677 = icmp ne i32 %676, 0
  br i1 %677, label %678, label %699

678:                                              ; preds = %671
  %679 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %680 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %679, i32 0, i32 0
  %681 = load i32, i32* %680, align 4
  %682 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %683 = and i32 %681, %682
  %684 = icmp ne i32 %683, 0
  br i1 %684, label %685, label %699

685:                                              ; preds = %678
  %686 = load %struct.ccb_trans_settings_spi*, %struct.ccb_trans_settings_spi** %14, align 8
  %687 = getelementptr inbounds %struct.ccb_trans_settings_spi, %struct.ccb_trans_settings_spi* %686, i32 0, i32 2
  %688 = load i32, i32* %687, align 8
  %689 = load i32, i32* @CTS_SPI_VALID_SYNC_RATE, align 4
  %690 = load i32, i32* @CTS_SPI_VALID_SYNC_OFFSET, align 4
  %691 = or i32 %689, %690
  %692 = load i32, i32* @CTS_SPI_VALID_BUS_WIDTH, align 4
  %693 = or i32 %691, %692
  %694 = and i32 %688, %693
  %695 = icmp ne i32 %694, 0
  br i1 %695, label %696, label %699

696:                                              ; preds = %685
  %697 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %698 = call i32 @scsi_toggle_tags(%struct.cam_path* %697)
  br label %699

699:                                              ; preds = %696, %685, %678, %671, %665
  br label %700

700:                                              ; preds = %699, %337, %331
  %701 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %702 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %701, i32 0, i32 4
  %703 = load i64, i64* %702, align 8
  %704 = load i64, i64* @CTS_TYPE_CURRENT_SETTINGS, align 8
  %705 = icmp eq i64 %703, %704
  br i1 %705, label %706, label %774

706:                                              ; preds = %700
  %707 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %708 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %707, i32 0, i32 1
  %709 = load i32, i32* %708, align 4
  %710 = load i32, i32* @CTS_SCSI_VALID_TQ, align 4
  %711 = and i32 %709, %710
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %713, label %774

713:                                              ; preds = %706
  %714 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %715 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %714, i32 0, i32 6
  %716 = load i32, i32* %715, align 8
  %717 = load i32, i32* @CAM_DEV_TAG_AFTER_COUNT, align 4
  %718 = and i32 %716, %717
  %719 = icmp ne i32 %718, 0
  br i1 %719, label %727, label %720

720:                                              ; preds = %713
  %721 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %722 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %721, i32 0, i32 7
  %723 = load i32, i32* %722, align 4
  %724 = load i32, i32* @SID_CmdQue, align 4
  %725 = and i32 %723, %724
  %726 = icmp ne i32 %725, 0
  br i1 %726, label %727, label %729

727:                                              ; preds = %720, %713
  %728 = load i32, i32* @TRUE, align 4
  store i32 %728, i32* %16, align 4
  br label %731

729:                                              ; preds = %720
  %730 = load i32, i32* @FALSE, align 4
  store i32 %730, i32* %16, align 4
  br label %731

731:                                              ; preds = %729, %727
  %732 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %733 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %732, i32 0, i32 0
  %734 = load i32, i32* %733, align 4
  %735 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %736 = and i32 %734, %735
  %737 = icmp ne i32 %736, 0
  br i1 %737, label %738, label %742

738:                                              ; preds = %731
  %739 = load i32, i32* %16, align 4
  %740 = load i32, i32* @FALSE, align 4
  %741 = icmp eq i32 %739, %740
  br i1 %741, label %753, label %742

742:                                              ; preds = %738, %731
  %743 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %744 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %743, i32 0, i32 0
  %745 = load i32, i32* %744, align 4
  %746 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %747 = and i32 %745, %746
  %748 = icmp eq i32 %747, 0
  br i1 %748, label %749, label %773

749:                                              ; preds = %742
  %750 = load i32, i32* %16, align 4
  %751 = load i32, i32* @TRUE, align 4
  %752 = icmp eq i32 %750, %751
  br i1 %752, label %753, label %773

753:                                              ; preds = %749, %738
  %754 = load %struct.ccb_trans_settings_scsi*, %struct.ccb_trans_settings_scsi** %9, align 8
  %755 = getelementptr inbounds %struct.ccb_trans_settings_scsi, %struct.ccb_trans_settings_scsi* %754, i32 0, i32 0
  %756 = load i32, i32* %755, align 4
  %757 = load i32, i32* @CTS_SCSI_FLAGS_TAG_ENB, align 4
  %758 = and i32 %756, %757
  %759 = icmp ne i32 %758, 0
  br i1 %759, label %760, label %769

760:                                              ; preds = %753
  %761 = load i32, i32* @CAM_TAG_DELAY_COUNT, align 4
  %762 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %763 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %762, i32 0, i32 8
  store i32 %761, i32* %763, align 8
  %764 = load i32, i32* @CAM_DEV_TAG_AFTER_COUNT, align 4
  %765 = load %struct.cam_ed*, %struct.cam_ed** %12, align 8
  %766 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %765, i32 0, i32 6
  %767 = load i32, i32* %766, align 8
  %768 = or i32 %767, %764
  store i32 %768, i32* %766, align 8
  br label %772

769:                                              ; preds = %753
  %770 = load %struct.cam_path*, %struct.cam_path** %5, align 8
  %771 = call i32 @xpt_stop_tags(%struct.cam_path* %770)
  br label %772

772:                                              ; preds = %769, %760
  br label %773

773:                                              ; preds = %772, %749, %742
  br label %774

774:                                              ; preds = %773, %706, %700
  %775 = load i32, i32* %6, align 4
  %776 = load i32, i32* @FALSE, align 4
  %777 = icmp eq i32 %775, %776
  br i1 %777, label %778, label %782

778:                                              ; preds = %774
  %779 = load %struct.ccb_trans_settings*, %struct.ccb_trans_settings** %4, align 8
  %780 = bitcast %struct.ccb_trans_settings* %779 to %union.ccb*
  %781 = call i32 @xpt_action_default(%union.ccb* %780)
  br label %782

782:                                              ; preds = %24, %224, %290, %778, %774
  ret void
}

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @xpt_print(%struct.cam_path*, i8*, i64, i64) #1

declare dso_local i32 @xpt_action_default(%union.ccb*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_10__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i64 @INQ_DATA_TQ_ENABLED(%struct.scsi_inquiry_data*) #1

declare dso_local i64 @cam_ccb_status(%union.ccb*) #1

declare dso_local i32 @scsi_toggle_tags(%struct.cam_path*) #1

declare dso_local i32 @xpt_stop_tags(%struct.cam_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
