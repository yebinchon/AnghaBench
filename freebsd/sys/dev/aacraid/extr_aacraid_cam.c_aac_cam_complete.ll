; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_cam_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid_cam.c_aac_cam_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_command = type { i32, %struct.TYPE_5__*, %union.ccb*, %struct.aac_softc* }
%struct.TYPE_5__ = type { i32* }
%union.ccb = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32*, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i64*, i64* }
%struct.aac_softc = type { i32, i32, i32 }
%struct.aac_srb_response = type { i32, i64, i32*, i32, i32 }
%struct.TYPE_8__ = type { i64, i32, i64, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_CMD_FASTRESP = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@SCSI_STATUS_OK = common dso_local global i32 0, align 4
@AAC_CMD_RESET = common dso_local global i32 0, align 4
@CAM_SCSI_BUS_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Passthru FIB failed!\0A\00", align 1
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i64 0, align 8
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@INQUIRY = common dso_local global i64 0, align 8
@T_DIRECT = common dso_local global i64 0, align 8
@AAC_SUPPL_SUPPORTED_JBOD = common dso_local global i32 0, align 4
@T_PROCESSOR = common dso_local global i64 0, align 8
@T_NODEVICE = common dso_local global i64 0, align 8
@CAM_SEL_TIMEOUT = common dso_local global i32 0, align 4
@CAM_DEV_NOT_THERE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_command*)* @aac_cam_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_cam_complete(%struct.aac_command* %0) #0 {
  %2 = alloca %struct.aac_command*, align 8
  %3 = alloca %union.ccb*, align 8
  %4 = alloca %struct.aac_srb_response*, align 8
  %5 = alloca %struct.aac_softc*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.aac_command* %0, %struct.aac_command** %2, align 8
  %10 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %11 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %10, i32 0, i32 3
  %12 = load %struct.aac_softc*, %struct.aac_softc** %11, align 8
  store %struct.aac_softc* %12, %struct.aac_softc** %5, align 8
  %13 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %14 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %15 = call i32 @fwprintf(%struct.aac_softc* %13, i8* %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %17 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %16, i32 0, i32 2
  %18 = load %union.ccb*, %union.ccb** %17, align 8
  store %union.ccb* %18, %union.ccb** %3, align 8
  %19 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %20 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %19, i32 0, i32 1
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = bitcast i32* %24 to %struct.aac_srb_response*
  store %struct.aac_srb_response* %25, %struct.aac_srb_response** %4, align 8
  %26 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %27 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @AAC_CMD_FASTRESP, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %1
  %33 = load i32, i32* @CAM_REQ_CMP, align 4
  %34 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %35 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @SCSI_STATUS_OK, align 4
  %37 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %38 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 8
  %39 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %40 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %32, %1
  %42 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %43 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @AAC_CMD_RESET, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32, i32* @CAM_SCSI_BUS_RESET, align 4
  %50 = load %union.ccb*, %union.ccb** %3, align 8
  %51 = bitcast %union.ccb* %50 to %struct.TYPE_8__*
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 8
  br label %256

53:                                               ; preds = %41
  %54 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %55 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %67

58:                                               ; preds = %53
  %59 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %60 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %64 = load %union.ccb*, %union.ccb** %3, align 8
  %65 = bitcast %union.ccb* %64 to %struct.TYPE_8__*
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  store i32 %63, i32* %66, align 8
  br label %255

67:                                               ; preds = %53
  %68 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %69 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %union.ccb*, %union.ccb** %3, align 8
  %72 = bitcast %union.ccb* %71 to %struct.TYPE_8__*
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 8
  %74 = load %union.ccb*, %union.ccb** %3, align 8
  %75 = bitcast %union.ccb* %74 to %struct.TYPE_8__*
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @XPT_SCSI_IO, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %254

80:                                               ; preds = %67
  %81 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %82 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = load %union.ccb*, %union.ccb** %3, align 8
  %85 = bitcast %union.ccb* %84 to %struct.TYPE_7__*
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 4
  store i32 %83, i32* %86, align 4
  %87 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %88 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %131

91:                                               ; preds = %80
  store i32 4, i32* %9, align 4
  %92 = load %union.ccb*, %union.ccb** %3, align 8
  %93 = bitcast %union.ccb* %92 to %struct.TYPE_7__*
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 3
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @bzero(i32* %94, i32 %95)
  %97 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %98 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %9, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %91
  %103 = load i32, i32* %9, align 4
  br label %108

104:                                              ; preds = %91
  %105 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %106 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  br label %108

108:                                              ; preds = %104, %102
  %109 = phi i32 [ %103, %102 ], [ %107, %104 ]
  store i32 %109, i32* %8, align 4
  %110 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %111 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load %union.ccb*, %union.ccb** %3, align 8
  %115 = bitcast %union.ccb* %114 to %struct.TYPE_7__*
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 3
  %117 = load %struct.aac_srb_response*, %struct.aac_srb_response** %4, align 8
  %118 = getelementptr inbounds %struct.aac_srb_response, %struct.aac_srb_response* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @bcopy(i32* %113, i32* %116, i32 %119)
  %121 = load i32, i32* %8, align 4
  %122 = load %union.ccb*, %union.ccb** %3, align 8
  %123 = bitcast %union.ccb* %122 to %struct.TYPE_7__*
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  store i32 %121, i32* %124, align 8
  %125 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %126 = load %union.ccb*, %union.ccb** %3, align 8
  %127 = bitcast %union.ccb* %126 to %struct.TYPE_8__*
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  %129 = load i32, i32* %128, align 8
  %130 = or i32 %129, %125
  store i32 %130, i32* %128, align 8
  br label %131

131:                                              ; preds = %108, %80
  %132 = load %union.ccb*, %union.ccb** %3, align 8
  %133 = bitcast %union.ccb* %132 to %struct.TYPE_8__*
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @CAM_CDB_POINTER, align 4
  %137 = and i32 %135, %136
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %147

139:                                              ; preds = %131
  %140 = load %union.ccb*, %union.ccb** %3, align 8
  %141 = bitcast %union.ccb* %140 to %struct.TYPE_7__*
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  %146 = load i64, i64* %145, align 8
  store i64 %146, i64* %6, align 8
  br label %155

147:                                              ; preds = %131
  %148 = load %union.ccb*, %union.ccb** %3, align 8
  %149 = bitcast %union.ccb* %148 to %struct.TYPE_7__*
  %150 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 1
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 0
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %6, align 8
  br label %155

155:                                              ; preds = %147, %139
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* @INQUIRY, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %253

159:                                              ; preds = %155
  %160 = load %union.ccb*, %union.ccb** %3, align 8
  %161 = bitcast %union.ccb* %160 to %struct.TYPE_8__*
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* @CAM_REQ_CMP, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %233

166:                                              ; preds = %159
  %167 = load %union.ccb*, %union.ccb** %3, align 8
  %168 = bitcast %union.ccb* %167 to %struct.TYPE_7__*
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = and i32 %172, 31
  %174 = sext i32 %173 to i64
  store i64 %174, i64* %7, align 8
  %175 = load i64, i64* %7, align 8
  %176 = load i64, i64* @T_DIRECT, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %166
  %179 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %180 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load i32, i32* @AAC_SUPPL_SUPPORTED_JBOD, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %189

185:                                              ; preds = %178, %166
  %186 = load i64, i64* %7, align 8
  %187 = load i64, i64* @T_PROCESSOR, align 8
  %188 = icmp eq i64 %186, %187
  br i1 %188, label %189, label %200

189:                                              ; preds = %185, %178
  %190 = load i64, i64* %7, align 8
  %191 = and i64 %190, 224
  %192 = load i64, i64* @T_NODEVICE, align 8
  %193 = or i64 %191, %192
  %194 = trunc i64 %193 to i32
  %195 = load %union.ccb*, %union.ccb** %3, align 8
  %196 = bitcast %union.ccb* %195 to %struct.TYPE_7__*
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  %198 = load i32*, i32** %197, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  store i32 %194, i32* %199, align 4
  br label %200

200:                                              ; preds = %189, %185
  %201 = load %union.ccb*, %union.ccb** %3, align 8
  %202 = bitcast %union.ccb* %201 to %struct.TYPE_7__*
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = load i32, i32* %205, align 4
  %207 = and i32 %206, 32
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %232

209:                                              ; preds = %200
  %210 = load %struct.aac_softc*, %struct.aac_softc** %5, align 8
  %211 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = and i32 %212, 8
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %209
  %216 = load %union.ccb*, %union.ccb** %3, align 8
  %217 = bitcast %union.ccb* %216 to %struct.TYPE_7__*
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 1
  %219 = load i32*, i32** %218, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 0
  %221 = load i32, i32* %220, align 4
  %222 = and i32 %221, 223
  store i32 %222, i32* %220, align 4
  br label %231

223:                                              ; preds = %209
  %224 = load %union.ccb*, %union.ccb** %3, align 8
  %225 = bitcast %union.ccb* %224 to %struct.TYPE_7__*
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %225, i32 0, i32 1
  %227 = load i32*, i32** %226, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 0
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, 16
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %223, %215
  br label %232

232:                                              ; preds = %231, %200
  br label %252

233:                                              ; preds = %159
  %234 = load %union.ccb*, %union.ccb** %3, align 8
  %235 = bitcast %union.ccb* %234 to %struct.TYPE_8__*
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 3
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %239 = icmp eq i32 %237, %238
  br i1 %239, label %240, label %251

240:                                              ; preds = %233
  %241 = load %union.ccb*, %union.ccb** %3, align 8
  %242 = bitcast %union.ccb* %241 to %struct.TYPE_8__*
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 2
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %240
  %247 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %248 = load %union.ccb*, %union.ccb** %3, align 8
  %249 = bitcast %union.ccb* %248 to %struct.TYPE_8__*
  %250 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %249, i32 0, i32 3
  store i32 %247, i32* %250, align 8
  br label %251

251:                                              ; preds = %246, %240, %233
  br label %252

252:                                              ; preds = %251, %232
  br label %253

253:                                              ; preds = %252, %155
  br label %254

254:                                              ; preds = %253, %67
  br label %255

255:                                              ; preds = %254, %58
  br label %256

256:                                              ; preds = %255, %48
  %257 = load %struct.aac_command*, %struct.aac_command** %2, align 8
  %258 = call i32 @aacraid_release_command(%struct.aac_command* %257)
  %259 = load %union.ccb*, %union.ccb** %3, align 8
  %260 = call i32 @xpt_done(%union.ccb* %259)
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @aacraid_release_command(%struct.aac_command*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
