; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pass.c_passdoioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pass.c_passdoioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.cam_periph = type { i32, i64 }
%struct.pass_softc = type { i32, i32, i32, i32, i32 }
%union.ccb = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32, %struct.TYPE_9__, %struct.pass_io_req* }
%struct.TYPE_9__ = type { i32 }
%struct.pass_io_req = type { %union.ccb, i32, i32, %struct.TYPE_8__, %union.ccb* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_7__, i32* }
%struct.TYPE_7__ = type { %union.ccb*, %union.ccb* }

@CAM_UNLOCKED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@XPT_FC_XPT_ONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"CCB function code %#x is restricted to the XPT device\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@CAM_PRIORITY_OOB = common dso_local global i32 0, align 4
@XPT_FC_QUEUED = common dso_local global i32 0, align 4
@XPT_FC_USER_CCB = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unable to allocate CCB\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@PASS_FLAG_ZONE_VALID = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [63 x i8] c"Copy of user CCB %p to kernel address %p failed with error %d\0A\00", align 1
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@IOCDBLEN = common dso_local global i32 0, align 4
@passdone = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i32 0, align 4
@XPT_SMP_IO = common dso_local global i32 0, align 4
@XPT_DEV_MATCH = common dso_local global i32 0, align 4
@XPT_DEV_ADVINFO = common dso_local global i32 0, align 4
@XPT_NVME_ADMIN = common dso_local global i32 0, align 4
@XPT_NVME_IO = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"Copy to user CCB %p from kernel address %p failed with error %d\0A\00", align 1
@passerror = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@SV_ILP32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i64, i32, %struct.thread*)* @passdoioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @passdoioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.cam_periph*, align 8
  %12 = alloca %struct.pass_softc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %union.ccb*, align 8
  %16 = alloca %union.ccb*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.pass_io_req*, align 8
  %19 = alloca %union.ccb**, align 8
  %20 = alloca %union.ccb*, align 8
  %21 = alloca i32, align 4
  %22 = alloca %union.ccb**, align 8
  %23 = alloca %struct.pass_io_req*, align 8
  %24 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %25 = load %struct.cdev*, %struct.cdev** %6, align 8
  %26 = getelementptr inbounds %struct.cdev, %struct.cdev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.cam_periph*
  store %struct.cam_periph* %28, %struct.cam_periph** %11, align 8
  %29 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %30 = call i32 @cam_periph_lock(%struct.cam_periph* %29)
  %31 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %32 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.pass_softc*
  store %struct.pass_softc* %34, %struct.pass_softc** %12, align 8
  store i32 0, i32* %13, align 4
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %468 [
    i32 130, label %36
    i32 128, label %136
    i32 129, label %402
  ]

36:                                               ; preds = %5
  %37 = load i64, i64* %8, align 8
  %38 = inttoptr i64 %37 to %union.ccb*
  store %union.ccb* %38, %union.ccb** %15, align 8
  %39 = load %union.ccb*, %union.ccb** %15, align 8
  %40 = bitcast %union.ccb* %39 to %struct.TYPE_11__*
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @CAM_UNLOCKED, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i32, i32* @EINVAL, align 4
  store i32 %47, i32* %13, align 4
  br label %474

48:                                               ; preds = %36
  %49 = load %union.ccb*, %union.ccb** %15, align 8
  %50 = bitcast %union.ccb* %49 to %struct.TYPE_11__*
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @XPT_FC_XPT_ONLY, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %58 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %union.ccb*, %union.ccb** %15, align 8
  %61 = bitcast %union.ccb* %60 to %struct.TYPE_11__*
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i32, i8*, ...) @xpt_print(i32 %59, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* @ENODEV, align 4
  store i32 %65, i32* %13, align 4
  br label %474

66:                                               ; preds = %48
  %67 = load %union.ccb*, %union.ccb** %15, align 8
  %68 = bitcast %union.ccb* %67 to %struct.TYPE_11__*
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %14, align 4
  %73 = load i32, i32* @CAM_PRIORITY_OOB, align 4
  %74 = icmp sle i32 %72, %73
  br i1 %74, label %75, label %80

75:                                               ; preds = %66
  %76 = load i32, i32* @CAM_PRIORITY_OOB, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %78, %77
  store i32 %79, i32* %14, align 4
  br label %80

80:                                               ; preds = %75, %66
  %81 = load %union.ccb*, %union.ccb** %15, align 8
  %82 = bitcast %union.ccb* %81 to %struct.TYPE_11__*
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @XPT_FC_QUEUED, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %80
  %89 = load %union.ccb*, %union.ccb** %15, align 8
  %90 = bitcast %union.ccb* %89 to %struct.TYPE_11__*
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* @XPT_FC_USER_CCB, align 4
  %94 = and i32 %92, %93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %98 = load i32, i32* %14, align 4
  %99 = call %union.ccb* @cam_periph_getccb(%struct.cam_periph* %97, i32 %98)
  store %union.ccb* %99, %union.ccb** %16, align 8
  store i32 0, i32* %17, align 4
  br label %113

100:                                              ; preds = %88, %80
  %101 = call %union.ccb* (...) @xpt_alloc_ccb_nowait()
  store %union.ccb* %101, %union.ccb** %16, align 8
  %102 = load %union.ccb*, %union.ccb** %16, align 8
  %103 = icmp ne %union.ccb* %102, null
  br i1 %103, label %104, label %112

104:                                              ; preds = %100
  %105 = load %union.ccb*, %union.ccb** %16, align 8
  %106 = bitcast %union.ccb* %105 to %struct.TYPE_11__*
  %107 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %108 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = call i32 @xpt_setup_ccb(%struct.TYPE_11__* %106, i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %104, %100
  store i32 1, i32* %17, align 4
  br label %113

113:                                              ; preds = %112, %96
  %114 = load %union.ccb*, %union.ccb** %16, align 8
  %115 = icmp eq %union.ccb* %114, null
  br i1 %115, label %116, label %122

116:                                              ; preds = %113
  %117 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %118 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @xpt_print(i32 %119, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* @ENOMEM, align 4
  store i32 %121, i32* %13, align 4
  br label %474

122:                                              ; preds = %113
  %123 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %124 = load %union.ccb*, %union.ccb** %16, align 8
  %125 = load %union.ccb*, %union.ccb** %15, align 8
  %126 = call i32 @passsendccb(%struct.cam_periph* %123, %union.ccb* %124, %union.ccb* %125)
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %17, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %122
  %130 = load %union.ccb*, %union.ccb** %16, align 8
  %131 = call i32 @xpt_free_ccb(%union.ccb* %130)
  br label %135

132:                                              ; preds = %122
  %133 = load %union.ccb*, %union.ccb** %16, align 8
  %134 = call i32 @xpt_release_ccb(%union.ccb* %133)
  br label %135

135:                                              ; preds = %132, %129
  br label %474

136:                                              ; preds = %5
  %137 = load %struct.pass_softc*, %struct.pass_softc** %12, align 8
  %138 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @PASS_FLAG_ZONE_VALID, align 4
  %141 = and i32 %139, %140
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %136
  %144 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %145 = call i32 @passcreatezone(%struct.cam_periph* %144)
  store i32 %145, i32* %13, align 4
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %143
  br label %475

149:                                              ; preds = %143
  br label %150

150:                                              ; preds = %149, %136
  %151 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %152 = call i32 @cam_periph_unlock(%struct.cam_periph* %151)
  %153 = load %struct.pass_softc*, %struct.pass_softc** %12, align 8
  %154 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = load i32, i32* @M_WAITOK, align 4
  %157 = load i32, i32* @M_ZERO, align 4
  %158 = or i32 %156, %157
  %159 = call %struct.pass_io_req* @uma_zalloc(i32 %155, i32 %158)
  store %struct.pass_io_req* %159, %struct.pass_io_req** %18, align 8
  %160 = load %struct.pass_io_req*, %struct.pass_io_req** %18, align 8
  %161 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %160, i32 0, i32 0
  store %union.ccb* %161, %union.ccb** %20, align 8
  %162 = load i64, i64* %8, align 8
  %163 = inttoptr i64 %162 to %union.ccb**
  store %union.ccb** %163, %union.ccb*** %19, align 8
  %164 = load %union.ccb**, %union.ccb*** %19, align 8
  %165 = load %union.ccb*, %union.ccb** %164, align 8
  %166 = load %union.ccb*, %union.ccb** %20, align 8
  %167 = call i32 @copyin(%union.ccb* %165, %union.ccb* %166, i32 32)
  store i32 %167, i32* %13, align 4
  %168 = load i32, i32* %13, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %150
  %171 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %172 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %union.ccb**, %union.ccb*** %19, align 8
  %175 = load %union.ccb*, %union.ccb** %174, align 8
  %176 = load %union.ccb*, %union.ccb** %20, align 8
  %177 = load i32, i32* %13, align 4
  %178 = call i32 (i32, i8*, ...) @xpt_print(i32 %173, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), %union.ccb* %175, %union.ccb* %176, i32 %177)
  br label %394

179:                                              ; preds = %150
  %180 = load %union.ccb*, %union.ccb** %20, align 8
  %181 = bitcast %union.ccb* %180 to %struct.TYPE_11__*
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* @CAM_UNLOCKED, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %189

187:                                              ; preds = %179
  %188 = load i32, i32* @EINVAL, align 4
  store i32 %188, i32* %13, align 4
  br label %394

189:                                              ; preds = %179
  %190 = load %union.ccb*, %union.ccb** %20, align 8
  %191 = bitcast %union.ccb* %190 to %struct.TYPE_11__*
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @CAM_CDB_POINTER, align 4
  %195 = and i32 %193, %194
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %233

197:                                              ; preds = %189
  %198 = load %union.ccb*, %union.ccb** %20, align 8
  %199 = bitcast %union.ccb* %198 to %struct.TYPE_10__*
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @IOCDBLEN, align 4
  %203 = icmp sgt i32 %201, %202
  br i1 %203, label %204, label %206

204:                                              ; preds = %197
  %205 = load i32, i32* @EINVAL, align 4
  store i32 %205, i32* %13, align 4
  br label %394

206:                                              ; preds = %197
  %207 = load %union.ccb*, %union.ccb** %20, align 8
  %208 = bitcast %union.ccb* %207 to %struct.TYPE_10__*
  %209 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 1
  %211 = load %union.ccb*, %union.ccb** %210, align 8
  %212 = load %union.ccb*, %union.ccb** %20, align 8
  %213 = bitcast %union.ccb* %212 to %struct.TYPE_10__*
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i32 0, i32 0
  %216 = load %union.ccb*, %union.ccb** %215, align 8
  %217 = load %union.ccb*, %union.ccb** %20, align 8
  %218 = bitcast %union.ccb* %217 to %struct.TYPE_10__*
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = call i32 @copyin(%union.ccb* %211, %union.ccb* %216, i32 %220)
  store i32 %221, i32* %13, align 4
  %222 = load i32, i32* %13, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %206
  br label %394

225:                                              ; preds = %206
  %226 = load i32, i32* @CAM_CDB_POINTER, align 4
  %227 = xor i32 %226, -1
  %228 = load %union.ccb*, %union.ccb** %20, align 8
  %229 = bitcast %union.ccb* %228 to %struct.TYPE_11__*
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = and i32 %231, %227
  store i32 %232, i32* %230, align 4
  br label %233

233:                                              ; preds = %225, %189
  %234 = load %union.ccb*, %union.ccb** %20, align 8
  %235 = bitcast %union.ccb* %234 to %struct.TYPE_11__*
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* @XPT_FC_XPT_ONLY, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %251

241:                                              ; preds = %233
  %242 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %243 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = load %union.ccb*, %union.ccb** %20, align 8
  %246 = bitcast %union.ccb* %245 to %struct.TYPE_11__*
  %247 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 (i32, i8*, ...) @xpt_print(i32 %244, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %248)
  %250 = load i32, i32* @ENODEV, align 4
  store i32 %250, i32* %13, align 4
  br label %394

251:                                              ; preds = %233
  %252 = load %union.ccb**, %union.ccb*** %19, align 8
  %253 = load %union.ccb*, %union.ccb** %252, align 8
  %254 = load %struct.pass_io_req*, %struct.pass_io_req** %18, align 8
  %255 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %254, i32 0, i32 4
  store %union.ccb* %253, %union.ccb** %255, align 8
  %256 = load %union.ccb*, %union.ccb** %20, align 8
  %257 = bitcast %union.ccb* %256 to %struct.TYPE_11__*
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.pass_io_req*, %struct.pass_io_req** %18, align 8
  %261 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %260, i32 0, i32 2
  store i32 %259, i32* %261, align 4
  %262 = load %union.ccb*, %union.ccb** %20, align 8
  %263 = bitcast %union.ccb* %262 to %struct.TYPE_11__*
  %264 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = load %struct.pass_io_req*, %struct.pass_io_req** %18, align 8
  %267 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %266, i32 0, i32 1
  store i32 %265, i32* %267, align 8
  %268 = load %struct.pass_io_req*, %struct.pass_io_req** %18, align 8
  %269 = load %union.ccb*, %union.ccb** %20, align 8
  %270 = bitcast %union.ccb* %269 to %struct.TYPE_11__*
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 6
  store %struct.pass_io_req* %268, %struct.pass_io_req** %271, align 8
  %272 = load %union.ccb*, %union.ccb** %20, align 8
  %273 = bitcast %union.ccb* %272 to %struct.TYPE_11__*
  %274 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %273, i32 0, i32 5
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  store i32 %276, i32* %14, align 4
  %277 = load i32, i32* %14, align 4
  %278 = load i32, i32* @CAM_PRIORITY_OOB, align 4
  %279 = icmp sle i32 %277, %278
  br i1 %279, label %280, label %285

280:                                              ; preds = %251
  %281 = load i32, i32* @CAM_PRIORITY_OOB, align 4
  %282 = add nsw i32 %281, 1
  %283 = load i32, i32* %14, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* %14, align 4
  br label %285

285:                                              ; preds = %280, %251
  %286 = load %union.ccb*, %union.ccb** %20, align 8
  %287 = bitcast %union.ccb* %286 to %struct.TYPE_11__*
  %288 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %289 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %288, i32 0, i32 0
  %290 = load i32, i32* %289, align 8
  %291 = load i32, i32* %14, align 4
  %292 = load %union.ccb*, %union.ccb** %20, align 8
  %293 = bitcast %union.ccb* %292 to %struct.TYPE_11__*
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 4
  %296 = call i32 @xpt_setup_ccb_flags(%struct.TYPE_11__* %287, i32 %290, i32 %291, i32 %295)
  %297 = load i32, i32* @passdone, align 4
  %298 = load %union.ccb*, %union.ccb** %20, align 8
  %299 = bitcast %union.ccb* %298 to %struct.TYPE_11__*
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 4
  store i32 %297, i32* %300, align 8
  %301 = load %union.ccb*, %union.ccb** %20, align 8
  %302 = bitcast %union.ccb* %301 to %struct.TYPE_11__*
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  store i32 %304, i32* %21, align 4
  %305 = load i32, i32* %21, align 4
  %306 = load i32, i32* @XPT_SCSI_IO, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %332, label %308

308:                                              ; preds = %285
  %309 = load i32, i32* %21, align 4
  %310 = load i32, i32* @XPT_ATA_IO, align 4
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %332, label %312

312:                                              ; preds = %308
  %313 = load i32, i32* %21, align 4
  %314 = load i32, i32* @XPT_SMP_IO, align 4
  %315 = icmp eq i32 %313, %314
  br i1 %315, label %332, label %316

316:                                              ; preds = %312
  %317 = load i32, i32* %21, align 4
  %318 = load i32, i32* @XPT_DEV_MATCH, align 4
  %319 = icmp eq i32 %317, %318
  br i1 %319, label %332, label %320

320:                                              ; preds = %316
  %321 = load i32, i32* %21, align 4
  %322 = load i32, i32* @XPT_DEV_ADVINFO, align 4
  %323 = icmp eq i32 %321, %322
  br i1 %323, label %332, label %324

324:                                              ; preds = %320
  %325 = load i32, i32* %21, align 4
  %326 = load i32, i32* @XPT_NVME_ADMIN, align 4
  %327 = icmp eq i32 %325, %326
  br i1 %327, label %332, label %328

328:                                              ; preds = %324
  %329 = load i32, i32* %21, align 4
  %330 = load i32, i32* @XPT_NVME_IO, align 4
  %331 = icmp eq i32 %329, %330
  br i1 %331, label %332, label %340

332:                                              ; preds = %328, %324, %320, %316, %312, %308, %285
  %333 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %334 = load %struct.pass_io_req*, %struct.pass_io_req** %18, align 8
  %335 = call i32 @passmemsetup(%struct.cam_periph* %333, %struct.pass_io_req* %334)
  store i32 %335, i32* %13, align 4
  %336 = load i32, i32* %13, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %339

338:                                              ; preds = %332
  br label %394

339:                                              ; preds = %332
  br label %344

340:                                              ; preds = %328
  %341 = load %struct.pass_io_req*, %struct.pass_io_req** %18, align 8
  %342 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %341, i32 0, i32 3
  %343 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %342, i32 0, i32 0
  store i32 0, i32* %343, align 8
  br label %344

344:                                              ; preds = %340, %339
  %345 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %346 = call i32 @cam_periph_lock(%struct.cam_periph* %345)
  %347 = load %struct.pass_softc*, %struct.pass_softc** %12, align 8
  %348 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %347, i32 0, i32 4
  %349 = load %struct.pass_io_req*, %struct.pass_io_req** %18, align 8
  %350 = load i32, i32* @links, align 4
  %351 = call i32 @TAILQ_INSERT_TAIL(i32* %348, %struct.pass_io_req* %349, i32 %350)
  %352 = load i32, i32* %21, align 4
  %353 = load i32, i32* @XPT_FC_QUEUED, align 4
  %354 = and i32 %352, %353
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %356, label %365

356:                                              ; preds = %344
  %357 = load i32, i32* %21, align 4
  %358 = load i32, i32* @XPT_FC_USER_CCB, align 4
  %359 = and i32 %357, %358
  %360 = icmp eq i32 %359, 0
  br i1 %360, label %361, label %365

361:                                              ; preds = %356
  %362 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %363 = load i32, i32* %14, align 4
  %364 = call i32 @xpt_schedule(%struct.cam_periph* %362, i32 %363)
  br label %474

365:                                              ; preds = %356, %344
  %366 = load %struct.pass_softc*, %struct.pass_softc** %12, align 8
  %367 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %366, i32 0, i32 4
  %368 = load %struct.pass_io_req*, %struct.pass_io_req** %18, align 8
  %369 = load i32, i32* @links, align 4
  %370 = call i32 @TAILQ_REMOVE(i32* %367, %struct.pass_io_req* %368, i32 %369)
  %371 = load %struct.pass_softc*, %struct.pass_softc** %12, align 8
  %372 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %371, i32 0, i32 3
  %373 = load %struct.pass_io_req*, %struct.pass_io_req** %18, align 8
  %374 = load i32, i32* @links, align 4
  %375 = call i32 @TAILQ_INSERT_TAIL(i32* %372, %struct.pass_io_req* %373, i32 %374)
  %376 = load %union.ccb*, %union.ccb** %20, align 8
  %377 = call i32 @xpt_action(%union.ccb* %376)
  %378 = load i32, i32* %21, align 4
  %379 = load i32, i32* @XPT_FC_QUEUED, align 4
  %380 = and i32 %378, %379
  %381 = icmp eq i32 %380, 0
  br i1 %381, label %382, label %393

382:                                              ; preds = %365
  %383 = load %struct.pass_softc*, %struct.pass_softc** %12, align 8
  %384 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %383, i32 0, i32 3
  %385 = load %struct.pass_io_req*, %struct.pass_io_req** %18, align 8
  %386 = load i32, i32* @links, align 4
  %387 = call i32 @TAILQ_REMOVE(i32* %384, %struct.pass_io_req* %385, i32 %386)
  %388 = load %struct.pass_softc*, %struct.pass_softc** %12, align 8
  %389 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %388, i32 0, i32 2
  %390 = load %struct.pass_io_req*, %struct.pass_io_req** %18, align 8
  %391 = load i32, i32* @links, align 4
  %392 = call i32 @TAILQ_INSERT_TAIL(i32* %389, %struct.pass_io_req* %390, i32 %391)
  br label %393

393:                                              ; preds = %382, %365
  br label %474

394:                                              ; preds = %338, %241, %224, %204, %187, %170
  %395 = load %struct.pass_softc*, %struct.pass_softc** %12, align 8
  %396 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = load %struct.pass_io_req*, %struct.pass_io_req** %18, align 8
  %399 = call i32 @uma_zfree(i32 %397, %struct.pass_io_req* %398)
  %400 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %401 = call i32 @cam_periph_lock(%struct.cam_periph* %400)
  br label %474

402:                                              ; preds = %5
  %403 = load i64, i64* %8, align 8
  %404 = inttoptr i64 %403 to %union.ccb**
  store %union.ccb** %404, %union.ccb*** %22, align 8
  store i32 0, i32* %24, align 4
  %405 = load %struct.pass_softc*, %struct.pass_softc** %12, align 8
  %406 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %405, i32 0, i32 2
  %407 = call %struct.pass_io_req* @TAILQ_FIRST(i32* %406)
  store %struct.pass_io_req* %407, %struct.pass_io_req** %23, align 8
  %408 = load %struct.pass_io_req*, %struct.pass_io_req** %23, align 8
  %409 = icmp eq %struct.pass_io_req* %408, null
  br i1 %409, label %410, label %412

410:                                              ; preds = %402
  %411 = load i32, i32* @ENOENT, align 4
  store i32 %411, i32* %13, align 4
  br label %474

412:                                              ; preds = %402
  %413 = load %struct.pass_softc*, %struct.pass_softc** %12, align 8
  %414 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %413, i32 0, i32 2
  %415 = load %struct.pass_io_req*, %struct.pass_io_req** %23, align 8
  %416 = load i32, i32* @links, align 4
  %417 = call i32 @TAILQ_REMOVE(i32* %414, %struct.pass_io_req* %415, i32 %416)
  %418 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %419 = call i32 @cam_periph_unlock(%struct.cam_periph* %418)
  %420 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %421 = load %struct.pass_io_req*, %struct.pass_io_req** %23, align 8
  %422 = call i32 @passmemdone(%struct.cam_periph* %420, %struct.pass_io_req* %421)
  store i32 %422, i32* %13, align 4
  %423 = load i32, i32* %13, align 4
  store i32 %423, i32* %24, align 4
  %424 = load %struct.pass_io_req*, %struct.pass_io_req** %23, align 8
  %425 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %424, i32 0, i32 2
  %426 = load i32, i32* %425, align 4
  %427 = load %struct.pass_io_req*, %struct.pass_io_req** %23, align 8
  %428 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %427, i32 0, i32 0
  %429 = bitcast %union.ccb* %428 to %struct.TYPE_11__*
  %430 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %429, i32 0, i32 3
  store i32 %426, i32* %430, align 4
  %431 = load %struct.pass_io_req*, %struct.pass_io_req** %23, align 8
  %432 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 8
  %434 = load %struct.pass_io_req*, %struct.pass_io_req** %23, align 8
  %435 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %434, i32 0, i32 0
  %436 = bitcast %union.ccb* %435 to %struct.TYPE_11__*
  %437 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %436, i32 0, i32 2
  store i32 %433, i32* %437, align 8
  %438 = load %struct.pass_io_req*, %struct.pass_io_req** %23, align 8
  %439 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %438, i32 0, i32 0
  %440 = load %union.ccb**, %union.ccb*** %22, align 8
  %441 = load %union.ccb*, %union.ccb** %440, align 8
  %442 = call i32 @copyout(%union.ccb* %439, %union.ccb* %441, i32 32)
  store i32 %442, i32* %13, align 4
  %443 = load i32, i32* %13, align 4
  %444 = icmp ne i32 %443, 0
  br i1 %444, label %445, label %455

445:                                              ; preds = %412
  %446 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %447 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %446, i32 0, i32 0
  %448 = load i32, i32* %447, align 8
  %449 = load %union.ccb**, %union.ccb*** %22, align 8
  %450 = load %union.ccb*, %union.ccb** %449, align 8
  %451 = load %struct.pass_io_req*, %struct.pass_io_req** %23, align 8
  %452 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %451, i32 0, i32 0
  %453 = load i32, i32* %13, align 4
  %454 = call i32 (i32, i8*, ...) @xpt_print(i32 %448, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), %union.ccb* %450, %union.ccb* %452, i32 %453)
  br label %455

455:                                              ; preds = %445, %412
  %456 = load i32, i32* %24, align 4
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %460

458:                                              ; preds = %455
  %459 = load i32, i32* %24, align 4
  store i32 %459, i32* %13, align 4
  br label %460

460:                                              ; preds = %458, %455
  %461 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %462 = call i32 @cam_periph_lock(%struct.cam_periph* %461)
  %463 = load %struct.pass_softc*, %struct.pass_softc** %12, align 8
  %464 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %463, i32 0, i32 1
  %465 = load i32, i32* %464, align 4
  %466 = load %struct.pass_io_req*, %struct.pass_io_req** %23, align 8
  %467 = call i32 @uma_zfree(i32 %465, %struct.pass_io_req* %466)
  br label %474

468:                                              ; preds = %5
  %469 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %470 = load i32, i32* %7, align 4
  %471 = load i64, i64* %8, align 8
  %472 = load i32, i32* @passerror, align 4
  %473 = call i32 @cam_periph_ioctl(%struct.cam_periph* %469, i32 %470, i64 %471, i32 %472)
  store i32 %473, i32* %13, align 4
  br label %474

474:                                              ; preds = %468, %460, %410, %394, %393, %361, %135, %116, %56, %46
  br label %475

475:                                              ; preds = %474, %148
  %476 = load %struct.cam_periph*, %struct.cam_periph** %11, align 8
  %477 = call i32 @cam_periph_unlock(%struct.cam_periph* %476)
  %478 = load i32, i32* %13, align 4
  ret i32 %478
}

declare dso_local i32 @cam_periph_lock(%struct.cam_periph*) #1

declare dso_local i32 @xpt_print(i32, i8*, ...) #1

declare dso_local %union.ccb* @cam_periph_getccb(%struct.cam_periph*, i32) #1

declare dso_local %union.ccb* @xpt_alloc_ccb_nowait(...) #1

declare dso_local i32 @xpt_setup_ccb(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @passsendccb(%struct.cam_periph*, %union.ccb*, %union.ccb*) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

declare dso_local i32 @passcreatezone(%struct.cam_periph*) #1

declare dso_local i32 @cam_periph_unlock(%struct.cam_periph*) #1

declare dso_local %struct.pass_io_req* @uma_zalloc(i32, i32) #1

declare dso_local i32 @copyin(%union.ccb*, %union.ccb*, i32) #1

declare dso_local i32 @xpt_setup_ccb_flags(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @passmemsetup(%struct.cam_periph*, %struct.pass_io_req*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.pass_io_req*, i32) #1

declare dso_local i32 @xpt_schedule(%struct.cam_periph*, i32) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.pass_io_req*, i32) #1

declare dso_local i32 @xpt_action(%union.ccb*) #1

declare dso_local i32 @uma_zfree(i32, %struct.pass_io_req*) #1

declare dso_local %struct.pass_io_req* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @passmemdone(%struct.cam_periph*, %struct.pass_io_req*) #1

declare dso_local i32 @copyout(%union.ccb*, %union.ccb*, i32) #1

declare dso_local i32 @cam_periph_ioctl(%struct.cam_periph*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
