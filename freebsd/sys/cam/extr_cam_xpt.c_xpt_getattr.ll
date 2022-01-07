; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_getattr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/extr_cam_xpt.c_xpt_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_path = type { i32 }
%struct.ccb_dev_advinfo = type { i64, i8*, i32, i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.scsi_vpd_device_id = type { i32 }
%struct.scsi_vpd_id_descriptor = type { i32, i64, i8*, i32 }
%union.ccb = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_PRIORITY_NORMAL = common dso_local global i32 0, align 4
@XPT_DEV_ADVINFO = common dso_local global i32 0, align 4
@CDAI_FLAG_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"GEOM::ident\00", align 1
@CDAI_TYPE_SERIAL_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"GEOM::physpath\00", align 1
@CDAI_TYPE_PHYS_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"GEOM::lunid\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"GEOM::lunname\00", align 1
@CAM_SCSI_DEVID_MAXLEN = common dso_local global i64 0, align 8
@M_CAMXPT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@scsi_devid_is_lun_naa = common dso_local global i32 0, align 4
@scsi_devid_is_lun_eui64 = common dso_local global i32 0, align 4
@scsi_devid_is_lun_uuid = common dso_local global i32 0, align 4
@scsi_devid_is_lun_md5 = common dso_local global i32 0, align 4
@scsi_devid_is_lun_t10 = common dso_local global i32 0, align 4
@scsi_devid_is_lun_name = common dso_local global i32 0, align 4
@SVPD_ID_CODESET_MASK = common dso_local global i32 0, align 4
@SVPD_ID_CODESET_ASCII = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@SVPD_ID_CODESET_UTF8 = common dso_local global i32 0, align 4
@SVPD_ID_TYPE_MASK = common dso_local global i32 0, align 4
@SVPD_ID_TYPE_UUID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xpt_getattr(i8* %0, i64 %1, i8* %2, %struct.cam_path* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cam_path*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ccb_dev_advinfo, align 8
  %13 = alloca %struct.scsi_vpd_device_id*, align 8
  %14 = alloca %struct.scsi_vpd_id_descriptor*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.cam_path* %3, %struct.cam_path** %8, align 8
  store i32 -1, i32* %9, align 4
  %15 = load %struct.cam_path*, %struct.cam_path** %8, align 8
  %16 = load i32, i32* @MA_OWNED, align 4
  %17 = call i32 @xpt_path_assert(%struct.cam_path* %15, i32 %16)
  %18 = call i32 @memset(%struct.ccb_dev_advinfo* %12, i32 0, i32 48)
  %19 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 4
  %20 = load %struct.cam_path*, %struct.cam_path** %8, align 8
  %21 = load i32, i32* @CAM_PRIORITY_NORMAL, align 4
  %22 = call i32 @xpt_setup_ccb(%struct.TYPE_2__* %19, %struct.cam_path* %20, i32 %21)
  %23 = load i32, i32* @XPT_DEV_ADVINFO, align 4
  %24 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 4
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* @CDAI_FLAG_NONE, align 4
  %27 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 5
  store i32 %26, i32* %27, align 4
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 0
  store i64 %28, i64* %29, align 8
  %30 = load i8*, i8** %5, align 8
  %31 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %7, align 8
  %33 = call i64 @strcmp(i8* %32, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %4
  %36 = load i32, i32* @CDAI_TYPE_SERIAL_NUM, align 4
  %37 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  br label %72

38:                                               ; preds = %4
  %39 = load i8*, i8** %7, align 8
  %40 = call i64 @strcmp(i8* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* @CDAI_TYPE_PHYS_PATH, align 4
  %44 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 2
  store i32 %43, i32* %44, align 8
  br label %71

45:                                               ; preds = %38
  %46 = load i8*, i8** %7, align 8
  %47 = call i64 @strcmp(i8* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = load i8*, i8** %7, align 8
  %51 = call i64 @strcmp(i8* %50, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %49, %45
  %54 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 2
  store i32 128, i32* %54, align 8
  %55 = load i64, i64* @CAM_SCSI_DEVID_MAXLEN, align 8
  %56 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 0
  store i64 %55, i64* %56, align 8
  %57 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* @M_CAMXPT, align 4
  %60 = load i32, i32* @M_NOWAIT, align 4
  %61 = call i8* @malloc(i64 %58, i32 %59, i32 %60)
  %62 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 1
  store i8* %61, i8** %62, align 8
  %63 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = icmp eq i8* %64, null
  br i1 %65, label %66, label %68

66:                                               ; preds = %53
  %67 = load i32, i32* @ENOMEM, align 4
  store i32 %67, i32* %9, align 4
  br label %380

68:                                               ; preds = %53
  br label %70

69:                                               ; preds = %49
  br label %380

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %70, %42
  br label %72

72:                                               ; preds = %71, %35
  %73 = bitcast %struct.ccb_dev_advinfo* %12 to %union.ccb*
  %74 = call i32 @xpt_action(%union.ccb* %73)
  %75 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %72
  %82 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @FALSE, align 4
  %86 = call i32 @cam_release_devq(i32 %84, i32 0, i32 0, i32 0, i32 %85)
  br label %87

87:                                               ; preds = %81, %72
  %88 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %87
  br label %380

92:                                               ; preds = %87
  %93 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  switch i32 %94, label %365 [
    i32 128, label %95
  ]

95:                                               ; preds = %92
  %96 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 1
  %97 = load i8*, i8** %96, align 8
  %98 = bitcast i8* %97 to %struct.scsi_vpd_device_id*
  store %struct.scsi_vpd_device_id* %98, %struct.scsi_vpd_device_id** %13, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call i64 @strcmp(i8* %99, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %135

102:                                              ; preds = %95
  %103 = load %struct.scsi_vpd_device_id*, %struct.scsi_vpd_device_id** %13, align 8
  %104 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i32, i32* @scsi_devid_is_lun_naa, align 4
  %107 = call %struct.scsi_vpd_id_descriptor* @scsi_get_devid(%struct.scsi_vpd_device_id* %103, i64 %105, i32 %106)
  store %struct.scsi_vpd_id_descriptor* %107, %struct.scsi_vpd_id_descriptor** %14, align 8
  %108 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %109 = icmp eq %struct.scsi_vpd_id_descriptor* %108, null
  br i1 %109, label %110, label %116

110:                                              ; preds = %102
  %111 = load %struct.scsi_vpd_device_id*, %struct.scsi_vpd_device_id** %13, align 8
  %112 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* @scsi_devid_is_lun_eui64, align 4
  %115 = call %struct.scsi_vpd_id_descriptor* @scsi_get_devid(%struct.scsi_vpd_device_id* %111, i64 %113, i32 %114)
  store %struct.scsi_vpd_id_descriptor* %115, %struct.scsi_vpd_id_descriptor** %14, align 8
  br label %116

116:                                              ; preds = %110, %102
  %117 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %118 = icmp eq %struct.scsi_vpd_id_descriptor* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %116
  %120 = load %struct.scsi_vpd_device_id*, %struct.scsi_vpd_device_id** %13, align 8
  %121 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load i32, i32* @scsi_devid_is_lun_uuid, align 4
  %124 = call %struct.scsi_vpd_id_descriptor* @scsi_get_devid(%struct.scsi_vpd_device_id* %120, i64 %122, i32 %123)
  store %struct.scsi_vpd_id_descriptor* %124, %struct.scsi_vpd_id_descriptor** %14, align 8
  br label %125

125:                                              ; preds = %119, %116
  %126 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %127 = icmp eq %struct.scsi_vpd_id_descriptor* %126, null
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load %struct.scsi_vpd_device_id*, %struct.scsi_vpd_device_id** %13, align 8
  %130 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* @scsi_devid_is_lun_md5, align 4
  %133 = call %struct.scsi_vpd_id_descriptor* @scsi_get_devid(%struct.scsi_vpd_device_id* %129, i64 %131, i32 %132)
  store %struct.scsi_vpd_id_descriptor* %133, %struct.scsi_vpd_id_descriptor** %14, align 8
  br label %134

134:                                              ; preds = %128, %125
  br label %136

135:                                              ; preds = %95
  store %struct.scsi_vpd_id_descriptor* null, %struct.scsi_vpd_id_descriptor** %14, align 8
  br label %136

136:                                              ; preds = %135, %134
  %137 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %138 = icmp eq %struct.scsi_vpd_id_descriptor* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load %struct.scsi_vpd_device_id*, %struct.scsi_vpd_device_id** %13, align 8
  %141 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @scsi_devid_is_lun_t10, align 4
  %144 = call %struct.scsi_vpd_id_descriptor* @scsi_get_devid(%struct.scsi_vpd_device_id* %140, i64 %142, i32 %143)
  store %struct.scsi_vpd_id_descriptor* %144, %struct.scsi_vpd_id_descriptor** %14, align 8
  br label %145

145:                                              ; preds = %139, %136
  %146 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %147 = icmp eq %struct.scsi_vpd_id_descriptor* %146, null
  br i1 %147, label %148, label %154

148:                                              ; preds = %145
  %149 = load %struct.scsi_vpd_device_id*, %struct.scsi_vpd_device_id** %13, align 8
  %150 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = load i32, i32* @scsi_devid_is_lun_name, align 4
  %153 = call %struct.scsi_vpd_id_descriptor* @scsi_get_devid(%struct.scsi_vpd_device_id* %149, i64 %151, i32 %152)
  store %struct.scsi_vpd_id_descriptor* %153, %struct.scsi_vpd_id_descriptor** %14, align 8
  br label %154

154:                                              ; preds = %148, %145
  %155 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %156 = icmp eq %struct.scsi_vpd_id_descriptor* %155, null
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %379

158:                                              ; preds = %154
  store i32 0, i32* %9, align 4
  %159 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %160 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @SVPD_ID_CODESET_MASK, align 4
  %163 = and i32 %161, %162
  %164 = load i32, i32* @SVPD_ID_CODESET_ASCII, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %218

166:                                              ; preds = %158
  %167 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %168 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* %6, align 8
  %171 = icmp ult i64 %169, %170
  br i1 %171, label %172, label %215

172:                                              ; preds = %166
  store i32 0, i32* %10, align 4
  br label %173

173:                                              ; preds = %207, %172
  %174 = load i32, i32* %10, align 4
  %175 = sext i32 %174 to i64
  %176 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %177 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp ult i64 %175, %178
  br i1 %179, label %180, label %210

180:                                              ; preds = %173
  %181 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %182 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %181, i32 0, i32 2
  %183 = load i8*, i8** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = sext i8 %187 to i32
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %180
  %191 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %192 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %191, i32 0, i32 2
  %193 = load i8*, i8** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i8, i8* %193, i64 %195
  %197 = load i8, i8* %196, align 1
  %198 = sext i8 %197 to i32
  br label %200

199:                                              ; preds = %180
  br label %200

200:                                              ; preds = %199, %190
  %201 = phi i32 [ %198, %190 ], [ 32, %199 ]
  %202 = trunc i32 %201 to i8
  %203 = load i8*, i8** %5, align 8
  %204 = load i32, i32* %10, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i8, i8* %203, i64 %205
  store i8 %202, i8* %206, align 1
  br label %207

207:                                              ; preds = %200
  %208 = load i32, i32* %10, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %10, align 4
  br label %173

210:                                              ; preds = %173
  %211 = load i8*, i8** %5, align 8
  %212 = load i32, i32* %10, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i8, i8* %211, i64 %213
  store i8 0, i8* %214, align 1
  br label %217

215:                                              ; preds = %166
  %216 = load i32, i32* @EFAULT, align 4
  store i32 %216, i32* %9, align 4
  br label %217

217:                                              ; preds = %215, %210
  br label %379

218:                                              ; preds = %158
  %219 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %220 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @SVPD_ID_CODESET_MASK, align 4
  %223 = and i32 %221, %222
  %224 = load i32, i32* @SVPD_ID_CODESET_UTF8, align 4
  %225 = icmp eq i32 %223, %224
  br i1 %225, label %226, label %253

226:                                              ; preds = %218
  %227 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %228 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %227, i32 0, i32 2
  %229 = load i8*, i8** %228, align 8
  %230 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %231 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = trunc i64 %232 to i32
  %234 = call i32 @strnlen(i8* %229, i32 %233)
  store i32 %234, i32* %10, align 4
  %235 = load i32, i32* %10, align 4
  %236 = sext i32 %235 to i64
  %237 = load i64, i64* %6, align 8
  %238 = icmp ult i64 %236, %237
  br i1 %238, label %239, label %250

239:                                              ; preds = %226
  %240 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %241 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %240, i32 0, i32 2
  %242 = load i8*, i8** %241, align 8
  %243 = load i8*, i8** %5, align 8
  %244 = load i32, i32* %10, align 4
  %245 = call i32 @bcopy(i8* %242, i8* %243, i32 %244)
  %246 = load i8*, i8** %5, align 8
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i8, i8* %246, i64 %248
  store i8 0, i8* %249, align 1
  br label %252

250:                                              ; preds = %226
  %251 = load i32, i32* @EFAULT, align 4
  store i32 %251, i32* %9, align 4
  br label %252

252:                                              ; preds = %250, %239
  br label %379

253:                                              ; preds = %218
  %254 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %255 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %254, i32 0, i32 3
  %256 = load i32, i32* %255, align 8
  %257 = load i32, i32* @SVPD_ID_TYPE_MASK, align 4
  %258 = and i32 %256, %257
  %259 = load i32, i32* @SVPD_ID_TYPE_UUID, align 4
  %260 = icmp eq i32 %258, %259
  br i1 %260, label %261, label %328

261:                                              ; preds = %253
  %262 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %263 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %262, i32 0, i32 2
  %264 = load i8*, i8** %263, align 8
  %265 = getelementptr inbounds i8, i8* %264, i64 0
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp eq i32 %267, 16
  br i1 %268, label %269, label %328

269:                                              ; preds = %261
  %270 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %271 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %270, i32 0, i32 1
  %272 = load i64, i64* %271, align 8
  %273 = sub i64 %272, 2
  %274 = mul i64 %273, 2
  %275 = add i64 %274, 4
  %276 = load i64, i64* %6, align 8
  %277 = icmp uge i64 %275, %276
  br i1 %277, label %278, label %280

278:                                              ; preds = %269
  %279 = load i32, i32* @EFAULT, align 4
  store i32 %279, i32* %9, align 4
  br label %379

280:                                              ; preds = %269
  store i32 2, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %281

281:                                              ; preds = %324, %280
  %282 = load i32, i32* %10, align 4
  %283 = sext i32 %282 to i64
  %284 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %285 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %284, i32 0, i32 1
  %286 = load i64, i64* %285, align 8
  %287 = icmp ult i64 %283, %286
  br i1 %287, label %288, label %327

288:                                              ; preds = %281
  %289 = load i32, i32* %10, align 4
  %290 = icmp eq i32 %289, 6
  br i1 %290, label %300, label %291

291:                                              ; preds = %288
  %292 = load i32, i32* %10, align 4
  %293 = icmp eq i32 %292, 8
  br i1 %293, label %300, label %294

294:                                              ; preds = %291
  %295 = load i32, i32* %10, align 4
  %296 = icmp eq i32 %295, 10
  br i1 %296, label %300, label %297

297:                                              ; preds = %294
  %298 = load i32, i32* %10, align 4
  %299 = icmp eq i32 %298, 12
  br i1 %299, label %300, label %308

300:                                              ; preds = %297, %294, %291, %288
  %301 = load i8*, i8** %5, align 8
  %302 = load i32, i32* %11, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i8, i8* %301, i64 %303
  %305 = call i32 (i8*, i8*, ...) @sprintf(i8* %304, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %306 = load i32, i32* %11, align 4
  %307 = add nsw i32 %306, %305
  store i32 %307, i32* %11, align 4
  br label %308

308:                                              ; preds = %300, %297
  %309 = load i8*, i8** %5, align 8
  %310 = load i32, i32* %11, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8, i8* %309, i64 %311
  %313 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %314 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %313, i32 0, i32 2
  %315 = load i8*, i8** %314, align 8
  %316 = load i32, i32* %10, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds i8, i8* %315, i64 %317
  %319 = load i8, i8* %318, align 1
  %320 = sext i8 %319 to i32
  %321 = call i32 (i8*, i8*, ...) @sprintf(i8* %312, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %320)
  %322 = load i32, i32* %11, align 4
  %323 = add nsw i32 %322, %321
  store i32 %323, i32* %11, align 4
  br label %324

324:                                              ; preds = %308
  %325 = load i32, i32* %10, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %10, align 4
  br label %281

327:                                              ; preds = %281
  br label %379

328:                                              ; preds = %261, %253
  %329 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %330 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %329, i32 0, i32 1
  %331 = load i64, i64* %330, align 8
  %332 = mul i64 %331, 2
  %333 = load i64, i64* %6, align 8
  %334 = icmp ult i64 %332, %333
  br i1 %334, label %335, label %362

335:                                              ; preds = %328
  store i32 0, i32* %10, align 4
  br label %336

336:                                              ; preds = %358, %335
  %337 = load i32, i32* %10, align 4
  %338 = sext i32 %337 to i64
  %339 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %340 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %339, i32 0, i32 1
  %341 = load i64, i64* %340, align 8
  %342 = icmp ult i64 %338, %341
  br i1 %342, label %343, label %361

343:                                              ; preds = %336
  %344 = load i8*, i8** %5, align 8
  %345 = load i32, i32* %10, align 4
  %346 = mul nsw i32 %345, 2
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds i8, i8* %344, i64 %347
  %349 = load %struct.scsi_vpd_id_descriptor*, %struct.scsi_vpd_id_descriptor** %14, align 8
  %350 = getelementptr inbounds %struct.scsi_vpd_id_descriptor, %struct.scsi_vpd_id_descriptor* %349, i32 0, i32 2
  %351 = load i8*, i8** %350, align 8
  %352 = load i32, i32* %10, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i8, i8* %351, i64 %353
  %355 = load i8, i8* %354, align 1
  %356 = sext i8 %355 to i32
  %357 = call i32 (i8*, i8*, ...) @sprintf(i8* %348, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %356)
  br label %358

358:                                              ; preds = %343
  %359 = load i32, i32* %10, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %10, align 4
  br label %336

361:                                              ; preds = %336
  br label %364

362:                                              ; preds = %328
  %363 = load i32, i32* @EFAULT, align 4
  store i32 %363, i32* %9, align 4
  br label %364

364:                                              ; preds = %362, %361
  br label %379

365:                                              ; preds = %92
  %366 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 3
  %367 = load i64, i64* %366, align 8
  %368 = load i64, i64* %6, align 8
  %369 = icmp ult i64 %367, %368
  br i1 %369, label %370, label %376

370:                                              ; preds = %365
  %371 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 1
  %372 = load i8*, i8** %371, align 8
  %373 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 3
  %374 = load i64, i64* %373, align 8
  %375 = getelementptr inbounds i8, i8* %372, i64 %374
  store i8 0, i8* %375, align 1
  store i32 0, i32* %9, align 4
  br label %378

376:                                              ; preds = %365
  %377 = load i32, i32* @EFAULT, align 4
  store i32 %377, i32* %9, align 4
  br label %378

378:                                              ; preds = %376, %370
  br label %379

379:                                              ; preds = %378, %364, %327, %278, %252, %217, %157
  br label %380

380:                                              ; preds = %379, %91, %69, %66
  %381 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 1
  %382 = load i8*, i8** %381, align 8
  %383 = load i8*, i8** %5, align 8
  %384 = icmp ne i8* %382, %383
  br i1 %384, label %385, label %390

385:                                              ; preds = %380
  %386 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %12, i32 0, i32 1
  %387 = load i8*, i8** %386, align 8
  %388 = load i32, i32* @M_CAMXPT, align 4
  %389 = call i32 @free(i8* %387, i32 %388)
  br label %390

390:                                              ; preds = %385, %380
  %391 = load i32, i32* %9, align 4
  ret i32 %391
}

declare dso_local i32 @xpt_path_assert(%struct.cam_path*, i32) #1

declare dso_local i32 @memset(%struct.ccb_dev_advinfo*, i32, i32) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_2__*, %struct.cam_path*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @cam_release_devq(i32, i32, i32, i32, i32) #1

declare dso_local %struct.scsi_vpd_id_descriptor* @scsi_get_devid(%struct.scsi_vpd_device_id*, i64, i32) #1

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
