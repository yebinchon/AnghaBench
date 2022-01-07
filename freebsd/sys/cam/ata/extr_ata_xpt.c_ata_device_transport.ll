; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_device_transport.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ata/extr_ata_xpt.c_ata_device_transport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i64, i8*, i32, i8*, %struct.ata_params, %struct.scsi_inquiry_data }
%struct.ata_params = type { i32, i32 }
%struct.scsi_inquiry_data = type { i32 }
%struct.ccb_pathinq = type { i8*, i8*, i32 }
%struct.ccb_trans_settings = type { i64, i8*, %struct.TYPE_11__, %struct.TYPE_7__, i8*, i32, i32, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_12__ = type { i32 }
%union.ccb = type { i32 }

@CAM_DEV_INQUIRY_DATA_VALID = common dso_local global i32 0, align 4
@CAM_DEV_IDENTIFY_DATA_VALID = common dso_local global i32 0, align 4
@PROTO_ATA = common dso_local global i64 0, align 8
@PROTO_SCSI = common dso_local global i64 0, align 8
@CAM_PRIORITY_NONE = common dso_local global i32 0, align 4
@XPT_SET_TRAN_SETTINGS = common dso_local global i32 0, align 4
@CTS_TYPE_CURRENT_SETTINGS = common dso_local global i32 0, align 4
@XPORT_ATA = common dso_local global i32 0, align 4
@ATA_PROTO_CFA = common dso_local global i32 0, align 4
@ATA_PROTO_MASK = common dso_local global i32 0, align 4
@ATA_PROTO_ATAPI_16 = common dso_local global i32 0, align 4
@ATA_PROTO_ATAPI_12 = common dso_local global i32 0, align 4
@CTS_ATA_VALID_ATAPI = common dso_local global i32 0, align 4
@CTS_SATA_VALID_ATAPI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_path*)* @ata_device_transport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_device_transport(%struct.cam_path* %0) #0 {
  %2 = alloca %struct.cam_path*, align 8
  %3 = alloca %struct.ccb_pathinq, align 8
  %4 = alloca %struct.ccb_trans_settings, align 8
  %5 = alloca %struct.scsi_inquiry_data*, align 8
  %6 = alloca %struct.ata_params*, align 8
  store %struct.cam_path* %0, %struct.cam_path** %2, align 8
  store %struct.scsi_inquiry_data* null, %struct.scsi_inquiry_data** %5, align 8
  store %struct.ata_params* null, %struct.ata_params** %6, align 8
  %7 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %8 = call i32 @xpt_path_inq(%struct.ccb_pathinq* %3, %struct.cam_path* %7)
  %9 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %3, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %12 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %11, i32 0, i32 0
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  store i32 %10, i32* %14, align 8
  %15 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %16 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @CAM_DEV_INQUIRY_DATA_VALID, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %25 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 6
  store %struct.scsi_inquiry_data* %27, %struct.scsi_inquiry_data** %5, align 8
  br label %28

28:                                               ; preds = %23, %1
  %29 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %30 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @CAM_DEV_IDENTIFY_DATA_VALID, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %28
  %38 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %39 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %38, i32 0, i32 0
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 5
  store %struct.ata_params* %41, %struct.ata_params** %6, align 8
  br label %42

42:                                               ; preds = %37, %28
  %43 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %44 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @PROTO_ATA, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %42
  %51 = load %struct.ata_params*, %struct.ata_params** %6, align 8
  %52 = icmp ne %struct.ata_params* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load %struct.ata_params*, %struct.ata_params** %6, align 8
  %55 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i8* @ata_version(i32 %56)
  br label %61

58:                                               ; preds = %50
  %59 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %3, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  br label %61

61:                                               ; preds = %58, %53
  %62 = phi i8* [ %57, %53 ], [ %60, %58 ]
  %63 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %64 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %63, i32 0, i32 0
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  store i8* %62, i8** %66, align 8
  br label %91

67:                                               ; preds = %42
  %68 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %69 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %68, i32 0, i32 0
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @PROTO_SCSI, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %90

75:                                               ; preds = %67
  %76 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %77 = icmp ne %struct.scsi_inquiry_data* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %80 = call i8* @SID_ANSI_REV(%struct.scsi_inquiry_data* %79)
  br label %84

81:                                               ; preds = %75
  %82 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %3, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  br label %84

84:                                               ; preds = %81, %78
  %85 = phi i8* [ %80, %78 ], [ %83, %81 ]
  %86 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %87 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %86, i32 0, i32 0
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  store i8* %85, i8** %89, align 8
  br label %90

90:                                               ; preds = %84, %67
  br label %91

91:                                               ; preds = %90, %61
  %92 = load %struct.ata_params*, %struct.ata_params** %6, align 8
  %93 = icmp ne %struct.ata_params* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load %struct.ata_params*, %struct.ata_params** %6, align 8
  %96 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @ata_version(i32 %97)
  br label %102

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct.ccb_pathinq, %struct.ccb_pathinq* %3, i32 0, i32 1
  %101 = load i8*, i8** %100, align 8
  br label %102

102:                                              ; preds = %99, %94
  %103 = phi i8* [ %98, %94 ], [ %101, %99 ]
  %104 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %105 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %104, i32 0, i32 0
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 4
  store i8* %103, i8** %107, align 8
  %108 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 7
  %109 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %110 = load i32, i32* @CAM_PRIORITY_NONE, align 4
  %111 = call i32 @xpt_setup_ccb(%struct.TYPE_12__* %108, %struct.cam_path* %109, i32 %110)
  %112 = load i32, i32* @XPT_SET_TRAN_SETTINGS, align 4
  %113 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 8
  %115 = load i32, i32* @CTS_TYPE_CURRENT_SETTINGS, align 4
  %116 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 6
  store i32 %115, i32* %116, align 4
  %117 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %118 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %117, i32 0, i32 0
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 5
  store i32 %121, i32* %122, align 8
  %123 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %124 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 4
  %127 = load i8*, i8** %126, align 8
  %128 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 4
  store i8* %127, i8** %128, align 8
  %129 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %130 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 0
  store i64 %133, i64* %134, align 8
  %135 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %136 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %135, i32 0, i32 0
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 2
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 1
  store i8* %139, i8** %140, align 8
  %141 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 0
  store i64 0, i64* %142, align 8
  %143 = load %struct.ata_params*, %struct.ata_params** %6, align 8
  %144 = icmp ne %struct.ata_params* %143, null
  br i1 %144, label %145, label %228

145:                                              ; preds = %102
  %146 = load %struct.cam_path*, %struct.cam_path** %2, align 8
  %147 = getelementptr inbounds %struct.cam_path, %struct.cam_path* %146, i32 0, i32 0
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @XPORT_ATA, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %190

153:                                              ; preds = %145
  %154 = load %struct.ata_params*, %struct.ata_params** %6, align 8
  %155 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @ATA_PROTO_CFA, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %153
  br label %181

160:                                              ; preds = %153
  %161 = load %struct.ata_params*, %struct.ata_params** %6, align 8
  %162 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @ATA_PROTO_MASK, align 4
  %165 = and i32 %163, %164
  %166 = load i32, i32* @ATA_PROTO_ATAPI_16, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %169

168:                                              ; preds = %160
  br label %179

169:                                              ; preds = %160
  %170 = load %struct.ata_params*, %struct.ata_params** %6, align 8
  %171 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @ATA_PROTO_MASK, align 4
  %174 = and i32 %172, %173
  %175 = load i32, i32* @ATA_PROTO_ATAPI_12, align 4
  %176 = icmp eq i32 %174, %175
  %177 = zext i1 %176 to i64
  %178 = select i1 %176, i32 12, i32 0
  br label %179

179:                                              ; preds = %169, %168
  %180 = phi i32 [ 16, %168 ], [ %178, %169 ]
  br label %181

181:                                              ; preds = %179, %159
  %182 = phi i32 [ 0, %159 ], [ %180, %179 ]
  %183 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 2
  %185 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %184, i32 0, i32 0
  store i32 %182, i32* %185, align 8
  %186 = load i32, i32* @CTS_ATA_VALID_ATAPI, align 4
  %187 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 1
  store i32 %186, i32* %189, align 4
  br label %227

190:                                              ; preds = %145
  %191 = load %struct.ata_params*, %struct.ata_params** %6, align 8
  %192 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @ATA_PROTO_CFA, align 4
  %195 = icmp eq i32 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %190
  br label %218

197:                                              ; preds = %190
  %198 = load %struct.ata_params*, %struct.ata_params** %6, align 8
  %199 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @ATA_PROTO_MASK, align 4
  %202 = and i32 %200, %201
  %203 = load i32, i32* @ATA_PROTO_ATAPI_16, align 4
  %204 = icmp eq i32 %202, %203
  br i1 %204, label %205, label %206

205:                                              ; preds = %197
  br label %216

206:                                              ; preds = %197
  %207 = load %struct.ata_params*, %struct.ata_params** %6, align 8
  %208 = getelementptr inbounds %struct.ata_params, %struct.ata_params* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @ATA_PROTO_MASK, align 4
  %211 = and i32 %209, %210
  %212 = load i32, i32* @ATA_PROTO_ATAPI_12, align 4
  %213 = icmp eq i32 %211, %212
  %214 = zext i1 %213 to i64
  %215 = select i1 %213, i32 12, i32 0
  br label %216

216:                                              ; preds = %206, %205
  %217 = phi i32 [ 16, %205 ], [ %215, %206 ]
  br label %218

218:                                              ; preds = %216, %196
  %219 = phi i32 [ 0, %196 ], [ %217, %216 ]
  %220 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 2
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  store i32 %219, i32* %222, align 8
  %223 = load i32, i32* @CTS_SATA_VALID_ATAPI, align 4
  %224 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 1
  store i32 %223, i32* %226, align 4
  br label %227

227:                                              ; preds = %218, %181
  br label %231

228:                                              ; preds = %102
  %229 = getelementptr inbounds %struct.ccb_trans_settings, %struct.ccb_trans_settings* %4, i32 0, i32 2
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  store i64 0, i64* %230, align 8
  br label %231

231:                                              ; preds = %228, %227
  %232 = bitcast %struct.ccb_trans_settings* %4 to %union.ccb*
  %233 = call i32 @xpt_action(%union.ccb* %232)
  ret void
}

declare dso_local i32 @xpt_path_inq(%struct.ccb_pathinq*, %struct.cam_path*) #1

declare dso_local i8* @ata_version(i32) #1

declare dso_local i8* @SID_ANSI_REV(%struct.scsi_inquiry_data*) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_12__*, %struct.cam_path*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
