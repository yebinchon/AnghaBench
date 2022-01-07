; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsigetopcodes.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/camcontrol/extr_camcontrol.c_scsigetopcodes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_device = type { i32 }
%union.ccb = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.scsi_report_supported_opcodes_all = type { i32 }
%struct.scsi_report_supported_opcodes_one = type { i32, i32 }
%struct.scsi_report_supported_opcodes_timeout = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"couldn't allocate CCB\00", align 1
@RSO_OPTIONS_OC = common dso_local global i32 0, align 4
@CAM_MAX_CDBLEN = common dso_local global i32 0, align 4
@RSO_RCTD = common dso_local global i32 0, align 4
@RSO_OPTIONS_OC_SA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Unable to allocate %u bytes\00", align 1
@SSD_FULL_SIZE = common dso_local global i32 0, align 4
@CAM_DEV_QFRZDIS = common dso_local global i32 0, align 4
@CAM_PASS_ERR_RECOVER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"error sending REPORT SUPPORTED OPERATION CODES command\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_ESF_ALL = common dso_local global i32 0, align 4
@CAM_EPF_ALL = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@RSO_OPTIONS_MASK = common dso_local global i32 0, align 4
@RSO_OPTIONS_ALL = common dso_local global i32 0, align 4
@RSO_ONE_CTDP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsigetopcodes(%struct.cam_device* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32* %11, i32** %12) #0 {
  %14 = alloca %struct.cam_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32**, align 8
  %27 = alloca %union.ccb*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca %struct.scsi_report_supported_opcodes_all*, align 8
  %34 = alloca %struct.scsi_report_supported_opcodes_one*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca %struct.scsi_report_supported_opcodes_timeout*, align 8
  store %struct.cam_device* %0, %struct.cam_device** %14, align 8
  store i32 %1, i32* %15, align 4
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32 %5, i32* %19, align 4
  store i32 %6, i32* %20, align 4
  store i32 %7, i32* %21, align 4
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 %10, i32* %24, align 4
  store i32* %11, i32** %25, align 8
  store i32** %12, i32*** %26, align 8
  store %union.ccb* null, %union.ccb** %27, align 8
  store i32* null, i32** %28, align 8
  store i32 0, i32* %29, align 4
  store i32 0, i32* %31, align 4
  store i32 0, i32* %32, align 4
  store i32 0, i32* %35, align 4
  store i32 0, i32* %36, align 4
  %39 = load i32*, i32** %25, align 8
  store i32 0, i32* %39, align 4
  %40 = load i32**, i32*** %26, align 8
  store i32* null, i32** %40, align 8
  %41 = load %struct.cam_device*, %struct.cam_device** %14, align 8
  %42 = call %union.ccb* @cam_getccb(%struct.cam_device* %41)
  store %union.ccb* %42, %union.ccb** %27, align 8
  %43 = load %union.ccb*, %union.ccb** %27, align 8
  %44 = icmp eq %union.ccb* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %13
  %46 = call i32 @warnx(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %36, align 4
  br label %276

47:                                               ; preds = %13
  %48 = load %union.ccb*, %union.ccb** %27, align 8
  %49 = bitcast %union.ccb* %48 to %struct.TYPE_5__*
  %50 = call i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_5__* %49)
  %51 = load i32, i32* %15, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %47
  %54 = load i32, i32* @RSO_OPTIONS_OC, align 4
  %55 = load i32, i32* %35, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %35, align 4
  store i32 1, i32* %30, align 4
  %57 = load i32, i32* @CAM_MAX_CDBLEN, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 8, %58
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %29, align 4
  br label %67

61:                                               ; preds = %47
  store i32 256, i32* %30, align 4
  %62 = load i32, i32* %30, align 4
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 4
  %65 = add i64 4, %64
  %66 = trunc i64 %65 to i32
  store i32 %66, i32* %29, align 4
  br label %67

67:                                               ; preds = %61, %53
  %68 = load i32, i32* %20, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i32, i32* @RSO_RCTD, align 4
  %72 = load i32, i32* %35, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %35, align 4
  %74 = load i32, i32* %30, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = load i32, i32* %29, align 4
  %78 = sext i32 %77 to i64
  %79 = add i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %29, align 4
  br label %81

81:                                               ; preds = %70, %67
  %82 = load i32, i32* %18, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %81
  %85 = load i32, i32* @RSO_OPTIONS_OC_SA, align 4
  %86 = load i32, i32* %35, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %35, align 4
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %84
  %91 = load i32, i32* @RSO_OPTIONS_OC, align 4
  %92 = xor i32 %91, -1
  %93 = load i32, i32* %35, align 4
  %94 = and i32 %93, %92
  store i32 %94, i32* %35, align 4
  br label %95

95:                                               ; preds = %90, %84
  br label %96

96:                                               ; preds = %95, %81
  br label %97

97:                                               ; preds = %269, %96
  %98 = load i32*, i32** %28, align 8
  %99 = icmp ne i32* %98, null
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32*, i32** %28, align 8
  %102 = call i32 @free(i32* %101)
  store i32* null, i32** %28, align 8
  br label %103

103:                                              ; preds = %100, %97
  %104 = load i32, i32* %29, align 4
  %105 = call i32* @malloc(i32 %104)
  store i32* %105, i32** %28, align 8
  %106 = load i32*, i32** %28, align 8
  %107 = icmp eq i32* %106, null
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* %29, align 4
  %110 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  store i32 1, i32* %36, align 4
  br label %276

111:                                              ; preds = %103
  %112 = load i32*, i32** %28, align 8
  %113 = load i32, i32* %29, align 4
  %114 = call i32 @bzero(i32* %112, i32 %113)
  %115 = load %union.ccb*, %union.ccb** %27, align 8
  %116 = bitcast %union.ccb* %115 to %struct.TYPE_5__*
  %117 = load i32, i32* %22, align 4
  %118 = load i32, i32* %21, align 4
  %119 = load i32, i32* %35, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %19, align 4
  %122 = load i32*, i32** %28, align 8
  %123 = load i32, i32* %29, align 4
  %124 = load i32, i32* @SSD_FULL_SIZE, align 4
  %125 = load i32, i32* %23, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %111
  %128 = load i32, i32* %23, align 4
  br label %130

129:                                              ; preds = %111
  br label %130

130:                                              ; preds = %129, %127
  %131 = phi i32 [ %128, %127 ], [ 10000, %129 ]
  %132 = call i32 @scsi_report_supported_opcodes(%struct.TYPE_5__* %116, i32 %117, i32* null, i32 %118, i32 %119, i32 %120, i32 %121, i32* %122, i32 %123, i32 %124, i32 %131)
  %133 = load i32, i32* @CAM_DEV_QFRZDIS, align 4
  %134 = load %union.ccb*, %union.ccb** %27, align 8
  %135 = bitcast %union.ccb* %134 to %struct.TYPE_4__*
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %133
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* %22, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %148

141:                                              ; preds = %130
  %142 = load i32, i32* @CAM_PASS_ERR_RECOVER, align 4
  %143 = load %union.ccb*, %union.ccb** %27, align 8
  %144 = bitcast %union.ccb* %143 to %struct.TYPE_4__*
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %142
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %141, %130
  %149 = load %struct.cam_device*, %struct.cam_device** %14, align 8
  %150 = load %union.ccb*, %union.ccb** %27, align 8
  %151 = call i64 @cam_send_ccb(%struct.cam_device* %149, %union.ccb* %150)
  %152 = icmp slt i64 %151, 0
  br i1 %152, label %153, label %155

153:                                              ; preds = %148
  %154 = call i32 (i8*, ...) @warn(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %36, align 4
  br label %276

155:                                              ; preds = %148
  %156 = load %union.ccb*, %union.ccb** %27, align 8
  %157 = bitcast %union.ccb* %156 to %struct.TYPE_4__*
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load i32, i32* @CAM_STATUS_MASK, align 4
  %161 = and i32 %159, %160
  %162 = load i32, i32* @CAM_REQ_CMP, align 4
  %163 = icmp ne i32 %161, %162
  br i1 %163, label %164, label %175

164:                                              ; preds = %155
  %165 = load i32, i32* %24, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %174

167:                                              ; preds = %164
  %168 = load %struct.cam_device*, %struct.cam_device** %14, align 8
  %169 = load %union.ccb*, %union.ccb** %27, align 8
  %170 = load i32, i32* @CAM_ESF_ALL, align 4
  %171 = load i32, i32* @CAM_EPF_ALL, align 4
  %172 = load i32, i32* @stderr, align 4
  %173 = call i32 @cam_error_print(%struct.cam_device* %168, %union.ccb* %169, i32 %170, i32 %171, i32 %172)
  br label %174

174:                                              ; preds = %167, %164
  store i32 1, i32* %36, align 4
  br label %276

175:                                              ; preds = %155
  %176 = load %union.ccb*, %union.ccb** %27, align 8
  %177 = bitcast %union.ccb* %176 to %struct.TYPE_5__*
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %union.ccb*, %union.ccb** %27, align 8
  %181 = bitcast %union.ccb* %180 to %struct.TYPE_5__*
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = sub nsw i32 %179, %183
  store i32 %184, i32* %31, align 4
  %185 = load i32, i32* %35, align 4
  %186 = load i32, i32* @RSO_OPTIONS_MASK, align 4
  %187 = and i32 %185, %186
  %188 = load i32, i32* @RSO_OPTIONS_ALL, align 4
  %189 = icmp eq i32 %187, %188
  br i1 %189, label %190, label %204

190:                                              ; preds = %175
  %191 = load i32, i32* %31, align 4
  %192 = sext i32 %191 to i64
  %193 = icmp uge i64 %192, 4
  br i1 %193, label %194, label %204

194:                                              ; preds = %190
  %195 = load i32*, i32** %28, align 8
  %196 = bitcast i32* %195 to %struct.scsi_report_supported_opcodes_all*
  store %struct.scsi_report_supported_opcodes_all* %196, %struct.scsi_report_supported_opcodes_all** %33, align 8
  %197 = load %struct.scsi_report_supported_opcodes_all*, %struct.scsi_report_supported_opcodes_all** %33, align 8
  %198 = getelementptr inbounds %struct.scsi_report_supported_opcodes_all, %struct.scsi_report_supported_opcodes_all* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @scsi_4btoul(i32 %199)
  %201 = sext i32 %200 to i64
  %202 = add i64 %201, 4
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %32, align 4
  br label %262

204:                                              ; preds = %190, %175
  %205 = load i32, i32* %35, align 4
  %206 = load i32, i32* @RSO_OPTIONS_MASK, align 4
  %207 = and i32 %205, %206
  %208 = load i32, i32* @RSO_OPTIONS_ALL, align 4
  %209 = icmp ne i32 %207, %208
  br i1 %209, label %210, label %261

210:                                              ; preds = %204
  %211 = load i32, i32* %31, align 4
  %212 = sext i32 %211 to i64
  %213 = icmp uge i64 %212, 8
  br i1 %213, label %214, label %261

214:                                              ; preds = %210
  %215 = load i32*, i32** %28, align 8
  %216 = bitcast i32* %215 to %struct.scsi_report_supported_opcodes_one*
  store %struct.scsi_report_supported_opcodes_one* %216, %struct.scsi_report_supported_opcodes_one** %34, align 8
  %217 = load %struct.scsi_report_supported_opcodes_one*, %struct.scsi_report_supported_opcodes_one** %34, align 8
  %218 = getelementptr inbounds %struct.scsi_report_supported_opcodes_one, %struct.scsi_report_supported_opcodes_one* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @scsi_2btoul(i32 %219)
  store i32 %220, i32* %37, align 4
  %221 = load i32, i32* %37, align 4
  %222 = sext i32 %221 to i64
  %223 = add i64 8, %222
  %224 = trunc i64 %223 to i32
  store i32 %224, i32* %32, align 4
  %225 = load %struct.scsi_report_supported_opcodes_one*, %struct.scsi_report_supported_opcodes_one** %34, align 8
  %226 = getelementptr inbounds %struct.scsi_report_supported_opcodes_one, %struct.scsi_report_supported_opcodes_one* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* @RSO_ONE_CTDP, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %260

231:                                              ; preds = %214
  %232 = load i32*, i32** %28, align 8
  %233 = load i32, i32* %32, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32, i32* %232, i64 %234
  %236 = bitcast i32* %235 to %struct.scsi_report_supported_opcodes_timeout*
  store %struct.scsi_report_supported_opcodes_timeout* %236, %struct.scsi_report_supported_opcodes_timeout** %38, align 8
  %237 = load i32, i32* %31, align 4
  %238 = sext i32 %237 to i64
  %239 = load i32, i32* %32, align 4
  %240 = sext i32 %239 to i64
  %241 = add i64 %240, 4
  %242 = icmp uge i64 %238, %241
  br i1 %242, label %243, label %254

243:                                              ; preds = %231
  %244 = load %struct.scsi_report_supported_opcodes_timeout*, %struct.scsi_report_supported_opcodes_timeout** %38, align 8
  %245 = getelementptr inbounds %struct.scsi_report_supported_opcodes_timeout, %struct.scsi_report_supported_opcodes_timeout* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @scsi_2btoul(i32 %246)
  %248 = sext i32 %247 to i64
  %249 = add i64 %248, 4
  %250 = load i32, i32* %32, align 4
  %251 = sext i32 %250 to i64
  %252 = add i64 %251, %249
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %32, align 4
  br label %259

254:                                              ; preds = %231
  %255 = load i32, i32* %32, align 4
  %256 = sext i32 %255 to i64
  %257 = add i64 %256, 4
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %32, align 4
  br label %259

259:                                              ; preds = %254, %243
  br label %260

260:                                              ; preds = %259, %214
  br label %261

261:                                              ; preds = %260, %210, %204
  br label %262

262:                                              ; preds = %261, %194
  %263 = load i32, i32* %32, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %262
  %266 = load i32, i32* %32, align 4
  %267 = load i32, i32* %31, align 4
  %268 = icmp sgt i32 %266, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %265
  %270 = load i32, i32* %32, align 4
  store i32 %270, i32* %29, align 4
  br label %97

271:                                              ; preds = %265, %262
  %272 = load i32, i32* %31, align 4
  %273 = load i32*, i32** %25, align 8
  store i32 %272, i32* %273, align 4
  %274 = load i32*, i32** %28, align 8
  %275 = load i32**, i32*** %26, align 8
  store i32* %274, i32** %275, align 8
  br label %276

276:                                              ; preds = %271, %174, %153, %108, %45
  %277 = load i32, i32* %36, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %279, label %282

279:                                              ; preds = %276
  %280 = load i32*, i32** %28, align 8
  %281 = call i32 @free(i32* %280)
  br label %282

282:                                              ; preds = %279, %276
  %283 = load %union.ccb*, %union.ccb** %27, align 8
  %284 = call i32 @cam_freeccb(%union.ccb* %283)
  %285 = load i32, i32* %36, align 4
  ret i32 %285
}

declare dso_local %union.ccb* @cam_getccb(%struct.cam_device*) #1

declare dso_local i32 @warnx(i8*) #1

declare dso_local i32 @CCB_CLEAR_ALL_EXCEPT_HDR(%struct.TYPE_5__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @warn(i8*, ...) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @scsi_report_supported_opcodes(%struct.TYPE_5__*, i32, i32*, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i64 @cam_send_ccb(%struct.cam_device*, %union.ccb*) #1

declare dso_local i32 @cam_error_print(%struct.cam_device*, %union.ccb*, i32, i32, i32) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @cam_freeccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
