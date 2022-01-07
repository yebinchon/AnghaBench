; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_probestart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_probestart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { %struct.cam_ed*, %struct.TYPE_9__* }
%struct.cam_ed = type { i32, i32, i8*, %struct.scsi_inquiry_data }
%struct.scsi_inquiry_data = type { i32 }
%struct.TYPE_9__ = type { i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i32* }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }
%struct.scsi_vpd_supported_page_list = type { i32 }
%struct.scsi_vpd_device_id = type { i32 }
%struct.scsi_vpd_extended_inquiry_data = type { i32 }
%struct.scsi_vpd_unit_serial_number = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32 }

@CAM_DEBUG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"probestart\0A\00", align 1
@MSG_SIMPLE_Q_TAG = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CAM_DEV_UNCONFIGURED = common dso_local global i32 0, align 4
@PROBE_INQUIRY_CKSUM = common dso_local global i32 0, align 4
@PROBE_SERIAL_CKSUM = common dso_local global i32 0, align 4
@SHORT_INQUIRY_LENGTH = common dso_local global i32 0, align 4
@M_CAMXPT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"malloc failure- skipping BasicDomain Validation\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SSD_MIN_SIZE = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Unable to alloc report luns storage\0A\00", align 1
@RPL_REPORT_DEFAULT = common dso_local global i32 0, align 4
@SMS_PAGE_CTRL_CURRENT = common dso_local global i32 0, align 4
@SMS_CONTROL_MODE_PAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [52 x i8] c"Unable to mode sense control page - malloc failure\0A\00", align 1
@CAM_QUIRK_NOVPDS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVPD_SUPPORTED_PAGE_LIST = common dso_local global i32 0, align 4
@SVPD_DEVICE_ID = common dso_local global i32 0, align 4
@SVPD_DEVICE_ID_MAX_SIZE = common dso_local global i32 0, align 4
@SVPD_EXTENDED_INQUIRY_DATA = common dso_local global i32 0, align 4
@SVPD_UNIT_SERIAL_NUMBER = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [39 x i8] c"probestart: invalid action state 0x%x\0A\00", align 1
@CAM_DEV_QFREEZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @probestart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @probestart(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.ccb_scsiio*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_inquiry_data*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.scsi_inquiry_data*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_vpd_supported_page_list*, align 8
  %14 = alloca %struct.cam_ed*, align 8
  %15 = alloca %struct.scsi_vpd_device_id*, align 8
  %16 = alloca %struct.scsi_vpd_extended_inquiry_data*, align 8
  %17 = alloca %struct.scsi_vpd_unit_serial_number*, align 8
  %18 = alloca %struct.cam_ed*, align 8
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %19 = load %union.ccb*, %union.ccb** %4, align 8
  %20 = bitcast %union.ccb* %19 to %struct.TYPE_8__*
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CAM_DEBUG_TRACE, align 4
  %24 = call i32 @CAM_DEBUG(i32 %22, i32 %23, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %26 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %6, align 8
  %29 = load %union.ccb*, %union.ccb** %4, align 8
  %30 = bitcast %union.ccb* %29 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %30, %struct.ccb_scsiio** %5, align 8
  br label %31

31:                                               ; preds = %202, %2
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %384 [
    i32 129, label %35
    i32 128, label %35
    i32 139, label %35
    i32 136, label %40
    i32 137, label %40
    i32 135, label %40
    i32 134, label %40
    i32 132, label %167
    i32 133, label %217
    i32 130, label %241
    i32 140, label %287
    i32 138, label %314
    i32 131, label %339
  ]

35:                                               ; preds = %31, %31, %31
  %36 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %37 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %38 = load i32, i32* @SSD_FULL_SIZE, align 4
  %39 = call i32 @scsi_test_unit_ready(%struct.ccb_scsiio* %36, i32 4, i32 (%struct.cam_periph*, %union.ccb*)* @probedone, i32 %37, i32 %38, i32 60000)
  br label %389

40:                                               ; preds = %31, %31, %31, %31
  %41 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %42 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %41, i32 0, i32 0
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load %struct.cam_ed*, %struct.cam_ed** %44, align 8
  %46 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %45, i32 0, i32 3
  store %struct.scsi_inquiry_data* %46, %struct.scsi_inquiry_data** %8, align 8
  %47 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %48 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %47, i32 0, i32 0
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load %struct.cam_ed*, %struct.cam_ed** %50, align 8
  %52 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @CAM_DEV_UNCONFIGURED, align 4
  %55 = and i32 %53, %54
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %116

57:                                               ; preds = %40
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PROBE_INQUIRY_CKSUM, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %116

64:                                               ; preds = %57
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 2
  %67 = call i32 @MD5Init(i32* %66)
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 2
  %70 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %8, align 8
  %71 = bitcast %struct.scsi_inquiry_data* %70 to i8*
  %72 = call i32 @MD5Update(i32* %69, i8* %71, i32 4)
  %73 = load i32, i32* @PROBE_INQUIRY_CKSUM, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 4
  %78 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %79 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %78, i32 0, i32 0
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.cam_ed*, %struct.cam_ed** %81, align 8
  %83 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %109

86:                                               ; preds = %64
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %90 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %89, i32 0, i32 0
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = load %struct.cam_ed*, %struct.cam_ed** %92, align 8
  %94 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %97 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %96, i32 0, i32 0
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load %struct.cam_ed*, %struct.cam_ed** %99, align 8
  %101 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @MD5Update(i32* %88, i8* %95, i32 %102)
  %104 = load i32, i32* @PROBE_SERIAL_CKSUM, align 4
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %86, %64
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 2
  %115 = call i32 @MD5Final(i32 %112, i32* %114)
  br label %116

116:                                              ; preds = %109, %57, %40
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 136
  br i1 %120, label %121, label %123

121:                                              ; preds = %116
  %122 = load i32, i32* @SHORT_INQUIRY_LENGTH, align 4
  store i32 %122, i32* %7, align 4
  br label %126

123:                                              ; preds = %116
  %124 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %8, align 8
  %125 = call i32 @SID_ADDITIONAL_LENGTH(%struct.scsi_inquiry_data* %124)
  store i32 %125, i32* %7, align 4
  br label %126

126:                                              ; preds = %123, %121
  %127 = load i32, i32* %7, align 4
  %128 = call i32 @roundup2(i32 %127, i32 2)
  store i32 %128, i32* %7, align 4
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp eq i32 %131, 135
  br i1 %132, label %138, label %133

133:                                              ; preds = %126
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = icmp eq i32 %136, 134
  br i1 %137, label %138, label %144

138:                                              ; preds = %133, %126
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @M_CAMXPT, align 4
  %141 = load i32, i32* @M_NOWAIT, align 4
  %142 = call i8* @malloc(i32 %139, i32 %140, i32 %141)
  %143 = bitcast i8* %142 to %struct.scsi_inquiry_data*
  store %struct.scsi_inquiry_data* %143, %struct.scsi_inquiry_data** %8, align 8
  br label %144

144:                                              ; preds = %138, %133
  %145 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %8, align 8
  %146 = icmp eq %struct.scsi_inquiry_data* %145, null
  br i1 %146, label %147, label %158

147:                                              ; preds = %144
  %148 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %149 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %148, i32 0, i32 0
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %149, align 8
  %151 = call i32 @xpt_print(%struct.TYPE_11__* %150, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %153 = call i32 @PROBE_SET_ACTION(%struct.TYPE_10__* %152, i32 139)
  %154 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %155 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %156 = load i32, i32* @SSD_FULL_SIZE, align 4
  %157 = call i32 @scsi_test_unit_ready(%struct.ccb_scsiio* %154, i32 4, i32 (%struct.cam_periph*, %union.ccb*)* @probedone, i32 %155, i32 %156, i32 60000)
  br label %389

158:                                              ; preds = %144
  %159 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %160 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %161 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %8, align 8
  %162 = bitcast %struct.scsi_inquiry_data* %161 to i32*
  %163 = load i32, i32* %7, align 4
  %164 = load i32, i32* @FALSE, align 4
  %165 = load i32, i32* @SSD_MIN_SIZE, align 4
  %166 = call i32 @scsi_inquiry(%struct.ccb_scsiio* %159, i32 4, i32 (%struct.cam_periph*, %union.ccb*)* @probedone, i32 %160, i32* %162, i32 %163, i32 %164, i32 0, i32 %165, i32 60000)
  br label %389

167:                                              ; preds = %31
  %168 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %169 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %168, i32 0, i32 0
  %170 = load %struct.TYPE_11__*, %struct.TYPE_11__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_9__*, %struct.TYPE_9__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* @M_CAMXPT, align 4
  %176 = load i32, i32* @M_NOWAIT, align 4
  %177 = load i32, i32* @M_ZERO, align 4
  %178 = or i32 %176, %177
  %179 = call i8* @malloc(i32 %174, i32 %175, i32 %178)
  store i8* %179, i8** %9, align 8
  %180 = load i8*, i8** %9, align 8
  %181 = icmp eq i8* %180, null
  br i1 %181, label %182, label %203

182:                                              ; preds = %167
  %183 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %184 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %183, i32 0, i32 0
  %185 = load %struct.TYPE_11__*, %struct.TYPE_11__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = load %struct.cam_ed*, %struct.cam_ed** %186, align 8
  %188 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %187, i32 0, i32 3
  store %struct.scsi_inquiry_data* %188, %struct.scsi_inquiry_data** %10, align 8
  %189 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %190 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %189, i32 0, i32 0
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %190, align 8
  %192 = call i32 @xpt_print(%struct.TYPE_11__* %191, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %193 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %10, align 8
  %194 = call i32 @INQ_DATA_TQ_ENABLED(%struct.scsi_inquiry_data* %193)
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %182
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %198 = call i32 @PROBE_SET_ACTION(%struct.TYPE_10__* %197, i32 133)
  br label %202

199:                                              ; preds = %182
  %200 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %201 = call i32 @PROBE_SET_ACTION(%struct.TYPE_10__* %200, i32 130)
  br label %202

202:                                              ; preds = %199, %196
  br label %31

203:                                              ; preds = %167
  %204 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %205 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %206 = load i32, i32* @RPL_REPORT_DEFAULT, align 4
  %207 = load i8*, i8** %9, align 8
  %208 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %209 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %208, i32 0, i32 0
  %210 = load %struct.TYPE_11__*, %struct.TYPE_11__** %209, align 8
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @SSD_FULL_SIZE, align 4
  %216 = call i32 @scsi_report_luns(%struct.ccb_scsiio* %204, i32 5, i32 (%struct.cam_periph*, %union.ccb*)* @probedone, i32 %205, i32 %206, i8* %207, i32 %214, i32 %215, i32 60000)
  br label %389

217:                                              ; preds = %31
  store i32 12, i32* %12, align 4
  %218 = load i32, i32* %12, align 4
  %219 = load i32, i32* @M_CAMXPT, align 4
  %220 = load i32, i32* @M_NOWAIT, align 4
  %221 = call i8* @malloc(i32 %218, i32 %219, i32 %220)
  store i8* %221, i8** %11, align 8
  %222 = load i8*, i8** %11, align 8
  %223 = icmp ne i8* %222, null
  br i1 %223, label %224, label %234

224:                                              ; preds = %217
  %225 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %226 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %227 = load i32, i32* @FALSE, align 4
  %228 = load i32, i32* @SMS_PAGE_CTRL_CURRENT, align 4
  %229 = load i32, i32* @SMS_CONTROL_MODE_PAGE, align 4
  %230 = load i8*, i8** %11, align 8
  %231 = load i32, i32* %12, align 4
  %232 = load i32, i32* @SSD_FULL_SIZE, align 4
  %233 = call i32 @scsi_mode_sense(%struct.ccb_scsiio* %225, i32 4, i32 (%struct.cam_periph*, %union.ccb*)* @probedone, i32 %226, i32 %227, i32 %228, i32 %229, i8* %230, i32 %231, i32 %232, i32 60000)
  br label %389

234:                                              ; preds = %217
  %235 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %236 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %235, i32 0, i32 0
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %236, align 8
  %238 = call i32 @xpt_print(%struct.TYPE_11__* %237, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %239 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %240 = call i32 @PROBE_SET_ACTION(%struct.TYPE_10__* %239, i32 130)
  br label %241

241:                                              ; preds = %31, %234
  store %struct.scsi_vpd_supported_page_list* null, %struct.scsi_vpd_supported_page_list** %13, align 8
  %242 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %243 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %242, i32 0, i32 0
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  %246 = load %struct.cam_ed*, %struct.cam_ed** %245, align 8
  store %struct.cam_ed* %246, %struct.cam_ed** %14, align 8
  %247 = load %struct.cam_ed*, %struct.cam_ed** %14, align 8
  %248 = call %struct.TYPE_12__* @SCSI_QUIRK(%struct.cam_ed* %247)
  %249 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 4
  %251 = load i32, i32* @CAM_QUIRK_NOVPDS, align 4
  %252 = and i32 %250, %251
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %261

254:                                              ; preds = %241
  %255 = load i32, i32* @M_CAMXPT, align 4
  %256 = load i32, i32* @M_NOWAIT, align 4
  %257 = load i32, i32* @M_ZERO, align 4
  %258 = or i32 %256, %257
  %259 = call i8* @malloc(i32 4, i32 %255, i32 %258)
  %260 = bitcast i8* %259 to %struct.scsi_vpd_supported_page_list*
  store %struct.scsi_vpd_supported_page_list* %260, %struct.scsi_vpd_supported_page_list** %13, align 8
  br label %261

261:                                              ; preds = %254, %241
  %262 = load %struct.scsi_vpd_supported_page_list*, %struct.scsi_vpd_supported_page_list** %13, align 8
  %263 = icmp ne %struct.scsi_vpd_supported_page_list* %262, null
  br i1 %263, label %264, label %273

264:                                              ; preds = %261
  %265 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %266 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %267 = load %struct.scsi_vpd_supported_page_list*, %struct.scsi_vpd_supported_page_list** %13, align 8
  %268 = bitcast %struct.scsi_vpd_supported_page_list* %267 to i32*
  %269 = load i32, i32* @TRUE, align 4
  %270 = load i32, i32* @SVPD_SUPPORTED_PAGE_LIST, align 4
  %271 = load i32, i32* @SSD_MIN_SIZE, align 4
  %272 = call i32 @scsi_inquiry(%struct.ccb_scsiio* %265, i32 4, i32 (%struct.cam_periph*, %union.ccb*)* @probedone, i32 %266, i32* %268, i32 4, i32 %269, i32 %270, i32 %271, i32 60000)
  br label %389

273:                                              ; preds = %261
  br label %274

274:                                              ; preds = %383, %338, %313, %273
  %275 = load %union.ccb*, %union.ccb** %4, align 8
  %276 = bitcast %union.ccb* %275 to %struct.ccb_scsiio*
  %277 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %276, i32 0, i32 0
  store i32* null, i32** %277, align 8
  %278 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %279 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %278, i32 0, i32 0
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %279, align 8
  %281 = call i32 @cam_freeze_devq(%struct.TYPE_11__* %280)
  %282 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %283 = call i32 @cam_periph_doacquire(%struct.cam_periph* %282)
  %284 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %285 = load %union.ccb*, %union.ccb** %4, align 8
  %286 = call i32 @probedone(%struct.cam_periph* %284, %union.ccb* %285)
  br label %400

287:                                              ; preds = %31
  store %struct.scsi_vpd_device_id* null, %struct.scsi_vpd_device_id** %15, align 8
  %288 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %289 = load i32, i32* @SVPD_DEVICE_ID, align 4
  %290 = call i32 @scsi_vpd_supported_page(%struct.cam_periph* %288, i32 %289)
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %300

292:                                              ; preds = %287
  %293 = load i32, i32* @SVPD_DEVICE_ID_MAX_SIZE, align 4
  %294 = load i32, i32* @M_CAMXPT, align 4
  %295 = load i32, i32* @M_NOWAIT, align 4
  %296 = load i32, i32* @M_ZERO, align 4
  %297 = or i32 %295, %296
  %298 = call i8* @malloc(i32 %293, i32 %294, i32 %297)
  %299 = bitcast i8* %298 to %struct.scsi_vpd_device_id*
  store %struct.scsi_vpd_device_id* %299, %struct.scsi_vpd_device_id** %15, align 8
  br label %300

300:                                              ; preds = %292, %287
  %301 = load %struct.scsi_vpd_device_id*, %struct.scsi_vpd_device_id** %15, align 8
  %302 = icmp ne %struct.scsi_vpd_device_id* %301, null
  br i1 %302, label %303, label %313

303:                                              ; preds = %300
  %304 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %305 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %306 = load %struct.scsi_vpd_device_id*, %struct.scsi_vpd_device_id** %15, align 8
  %307 = bitcast %struct.scsi_vpd_device_id* %306 to i32*
  %308 = load i32, i32* @SVPD_DEVICE_ID_MAX_SIZE, align 4
  %309 = load i32, i32* @TRUE, align 4
  %310 = load i32, i32* @SVPD_DEVICE_ID, align 4
  %311 = load i32, i32* @SSD_MIN_SIZE, align 4
  %312 = call i32 @scsi_inquiry(%struct.ccb_scsiio* %304, i32 4, i32 (%struct.cam_periph*, %union.ccb*)* @probedone, i32 %305, i32* %307, i32 %308, i32 %309, i32 %310, i32 %311, i32 60000)
  br label %389

313:                                              ; preds = %300
  br label %274

314:                                              ; preds = %31
  store %struct.scsi_vpd_extended_inquiry_data* null, %struct.scsi_vpd_extended_inquiry_data** %16, align 8
  %315 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %316 = load i32, i32* @SVPD_EXTENDED_INQUIRY_DATA, align 4
  %317 = call i32 @scsi_vpd_supported_page(%struct.cam_periph* %315, i32 %316)
  %318 = icmp ne i32 %317, 0
  br i1 %318, label %319, label %326

319:                                              ; preds = %314
  %320 = load i32, i32* @M_CAMXPT, align 4
  %321 = load i32, i32* @M_NOWAIT, align 4
  %322 = load i32, i32* @M_ZERO, align 4
  %323 = or i32 %321, %322
  %324 = call i8* @malloc(i32 4, i32 %320, i32 %323)
  %325 = bitcast i8* %324 to %struct.scsi_vpd_extended_inquiry_data*
  store %struct.scsi_vpd_extended_inquiry_data* %325, %struct.scsi_vpd_extended_inquiry_data** %16, align 8
  br label %326

326:                                              ; preds = %319, %314
  %327 = load %struct.scsi_vpd_extended_inquiry_data*, %struct.scsi_vpd_extended_inquiry_data** %16, align 8
  %328 = icmp ne %struct.scsi_vpd_extended_inquiry_data* %327, null
  br i1 %328, label %329, label %338

329:                                              ; preds = %326
  %330 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %331 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %332 = load %struct.scsi_vpd_extended_inquiry_data*, %struct.scsi_vpd_extended_inquiry_data** %16, align 8
  %333 = bitcast %struct.scsi_vpd_extended_inquiry_data* %332 to i32*
  %334 = load i32, i32* @TRUE, align 4
  %335 = load i32, i32* @SVPD_EXTENDED_INQUIRY_DATA, align 4
  %336 = load i32, i32* @SSD_MIN_SIZE, align 4
  %337 = call i32 @scsi_inquiry(%struct.ccb_scsiio* %330, i32 4, i32 (%struct.cam_periph*, %union.ccb*)* @probedone, i32 %331, i32* %333, i32 4, i32 %334, i32 %335, i32 %336, i32 60000)
  br label %389

338:                                              ; preds = %326
  br label %274

339:                                              ; preds = %31
  store %struct.scsi_vpd_unit_serial_number* null, %struct.scsi_vpd_unit_serial_number** %17, align 8
  %340 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %341 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %340, i32 0, i32 0
  %342 = load %struct.TYPE_11__*, %struct.TYPE_11__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %342, i32 0, i32 0
  %344 = load %struct.cam_ed*, %struct.cam_ed** %343, align 8
  store %struct.cam_ed* %344, %struct.cam_ed** %18, align 8
  %345 = load %struct.cam_ed*, %struct.cam_ed** %18, align 8
  %346 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %345, i32 0, i32 2
  %347 = load i8*, i8** %346, align 8
  %348 = icmp ne i8* %347, null
  br i1 %348, label %349, label %359

349:                                              ; preds = %339
  %350 = load %struct.cam_ed*, %struct.cam_ed** %18, align 8
  %351 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %350, i32 0, i32 2
  %352 = load i8*, i8** %351, align 8
  %353 = load i32, i32* @M_CAMXPT, align 4
  %354 = call i32 @free(i8* %352, i32 %353)
  %355 = load %struct.cam_ed*, %struct.cam_ed** %18, align 8
  %356 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %355, i32 0, i32 2
  store i8* null, i8** %356, align 8
  %357 = load %struct.cam_ed*, %struct.cam_ed** %18, align 8
  %358 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %357, i32 0, i32 1
  store i32 0, i32* %358, align 4
  br label %359

359:                                              ; preds = %349, %339
  %360 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %361 = load i32, i32* @SVPD_UNIT_SERIAL_NUMBER, align 4
  %362 = call i32 @scsi_vpd_supported_page(%struct.cam_periph* %360, i32 %361)
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %371

364:                                              ; preds = %359
  %365 = load i32, i32* @M_CAMXPT, align 4
  %366 = load i32, i32* @M_NOWAIT, align 4
  %367 = load i32, i32* @M_ZERO, align 4
  %368 = or i32 %366, %367
  %369 = call i8* @malloc(i32 4, i32 %365, i32 %368)
  %370 = bitcast i8* %369 to %struct.scsi_vpd_unit_serial_number*
  store %struct.scsi_vpd_unit_serial_number* %370, %struct.scsi_vpd_unit_serial_number** %17, align 8
  br label %371

371:                                              ; preds = %364, %359
  %372 = load %struct.scsi_vpd_unit_serial_number*, %struct.scsi_vpd_unit_serial_number** %17, align 8
  %373 = icmp ne %struct.scsi_vpd_unit_serial_number* %372, null
  br i1 %373, label %374, label %383

374:                                              ; preds = %371
  %375 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %376 = load i32, i32* @MSG_SIMPLE_Q_TAG, align 4
  %377 = load %struct.scsi_vpd_unit_serial_number*, %struct.scsi_vpd_unit_serial_number** %17, align 8
  %378 = bitcast %struct.scsi_vpd_unit_serial_number* %377 to i32*
  %379 = load i32, i32* @TRUE, align 4
  %380 = load i32, i32* @SVPD_UNIT_SERIAL_NUMBER, align 4
  %381 = load i32, i32* @SSD_MIN_SIZE, align 4
  %382 = call i32 @scsi_inquiry(%struct.ccb_scsiio* %375, i32 4, i32 (%struct.cam_periph*, %union.ccb*)* @probedone, i32 %376, i32* %378, i32 4, i32 %379, i32 %380, i32 %381, i32 60000)
  br label %389

383:                                              ; preds = %371
  br label %274

384:                                              ; preds = %31
  %385 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 0
  %387 = load i32, i32* %386, align 4
  %388 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %387)
  br label %389

389:                                              ; preds = %384, %374, %329, %303, %264, %224, %203, %158, %147, %35
  %390 = load i32, i32* @CAM_DEV_QFREEZE, align 4
  %391 = load %union.ccb*, %union.ccb** %4, align 8
  %392 = bitcast %union.ccb* %391 to %struct.TYPE_8__*
  %393 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %392, i32 0, i32 0
  %394 = load i32, i32* %393, align 8
  %395 = or i32 %394, %390
  store i32 %395, i32* %393, align 8
  %396 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %397 = call i32 @cam_periph_doacquire(%struct.cam_periph* %396)
  %398 = load %union.ccb*, %union.ccb** %4, align 8
  %399 = call i32 @xpt_action(%union.ccb* %398)
  br label %400

400:                                              ; preds = %389, %274
  ret void
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @scsi_test_unit_ready(%struct.ccb_scsiio*, i32, i32 (%struct.cam_periph*, %union.ccb*)*, i32, i32, i32) #1

declare dso_local i32 @probedone(%struct.cam_periph*, %union.ccb*) #1

declare dso_local i32 @MD5Init(i32*) #1

declare dso_local i32 @MD5Update(i32*, i8*, i32) #1

declare dso_local i32 @MD5Final(i32, i32*) #1

declare dso_local i32 @SID_ADDITIONAL_LENGTH(%struct.scsi_inquiry_data*) #1

declare dso_local i32 @roundup2(i32, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @xpt_print(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @PROBE_SET_ACTION(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @scsi_inquiry(%struct.ccb_scsiio*, i32, i32 (%struct.cam_periph*, %union.ccb*)*, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INQ_DATA_TQ_ENABLED(%struct.scsi_inquiry_data*) #1

declare dso_local i32 @scsi_report_luns(%struct.ccb_scsiio*, i32, i32 (%struct.cam_periph*, %union.ccb*)*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @scsi_mode_sense(%struct.ccb_scsiio*, i32, i32 (%struct.cam_periph*, %union.ccb*)*, i32, i32, i32, i32, i8*, i32, i32, i32) #1

declare dso_local %struct.TYPE_12__* @SCSI_QUIRK(%struct.cam_ed*) #1

declare dso_local i32 @cam_freeze_devq(%struct.TYPE_11__*) #1

declare dso_local i32 @cam_periph_doacquire(%struct.cam_periph*) #1

declare dso_local i32 @scsi_vpd_supported_page(%struct.cam_periph*, i32) #1

declare dso_local i32 @free(i8*, i32) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
