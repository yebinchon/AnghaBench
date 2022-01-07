; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_dev_advinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_xpt.c_scsi_dev_advinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ccb = type { %struct.ccb_dev_advinfo }
%struct.ccb_dev_advinfo = type { i32, i32, i32*, i32, i32 }
%struct.cam_ed = type { i32*, i32, i32*, i32, i32*, i32, i32*, i32, i32*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__*, i8* }
%struct.TYPE_5__ = type { %struct.cam_ed* }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i8* null, align 8
@CDAI_FLAG_STORE = common dso_local global i32 0, align 4
@M_CAMXPT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@CAM_REQ_ABORTED = common dso_local global i8* null, align 8
@CAM_REQ_CMP = common dso_local global i8* null, align 8
@AC_ADVINFO_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.ccb*)* @scsi_dev_advinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scsi_dev_advinfo(%union.ccb* %0) #0 {
  %2 = alloca %union.ccb*, align 8
  %3 = alloca %struct.cam_ed*, align 8
  %4 = alloca %struct.ccb_dev_advinfo*, align 8
  %5 = alloca i32, align 4
  store %union.ccb* %0, %union.ccb** %2, align 8
  %6 = load %union.ccb*, %union.ccb** %2, align 8
  %7 = bitcast %union.ccb* %6 to %struct.TYPE_4__*
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = load i32, i32* @MA_OWNED, align 4
  %11 = call i32 @xpt_path_assert(%struct.TYPE_5__* %9, i32 %10)
  %12 = load i8*, i8** @CAM_REQ_INVALID, align 8
  %13 = load %union.ccb*, %union.ccb** %2, align 8
  %14 = bitcast %union.ccb* %13 to %struct.TYPE_4__*
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  store i8* %12, i8** %15, align 8
  %16 = load %union.ccb*, %union.ccb** %2, align 8
  %17 = bitcast %union.ccb* %16 to %struct.TYPE_4__*
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load %struct.cam_ed*, %struct.cam_ed** %20, align 8
  store %struct.cam_ed* %21, %struct.cam_ed** %3, align 8
  %22 = load %union.ccb*, %union.ccb** %2, align 8
  %23 = bitcast %union.ccb* %22 to %struct.ccb_dev_advinfo*
  store %struct.ccb_dev_advinfo* %23, %struct.ccb_dev_advinfo** %4, align 8
  %24 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %25 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %352 [
    i32 129, label %27
    i32 128, label %70
    i32 131, label %113
    i32 130, label %212
    i32 132, label %309
  ]

27:                                               ; preds = %1
  %28 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %29 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @CDAI_FLAG_STORE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %376

35:                                               ; preds = %27
  %36 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %37 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %36, i32 0, i32 9
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %40 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %39, i32 0, i32 4
  store i32 %38, i32* %40, align 4
  %41 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %42 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %353

46:                                               ; preds = %35
  %47 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %48 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %47, i32 0, i32 9
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %5, align 4
  %50 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %51 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %54 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %52, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %46
  %58 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %59 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %5, align 4
  br label %61

61:                                               ; preds = %57, %46
  %62 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %63 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %66 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %65, i32 0, i32 8
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @memcpy(i32* %64, i32* %67, i32 %68)
  br label %353

70:                                               ; preds = %1
  %71 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %72 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @CDAI_FLAG_STORE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %70
  br label %376

78:                                               ; preds = %70
  %79 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %80 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %83 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %82, i32 0, i32 4
  store i32 %81, i32* %83, align 4
  %84 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %85 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %84, i32 0, i32 7
  %86 = load i32, i32* %85, align 8
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %78
  br label %353

89:                                               ; preds = %78
  %90 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %91 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 8
  store i32 %92, i32* %5, align 4
  %93 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %94 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %97 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = icmp sgt i32 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %89
  %101 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %102 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %100, %89
  %105 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %106 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %105, i32 0, i32 2
  %107 = load i32*, i32** %106, align 8
  %108 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %109 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %108, i32 0, i32 6
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @memcpy(i32* %107, i32* %110, i32 %111)
  br label %353

113:                                              ; preds = %1
  %114 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %115 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @CDAI_FLAG_STORE, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %176

120:                                              ; preds = %113
  %121 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %122 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %135

125:                                              ; preds = %120
  %126 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %127 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %126, i32 0, i32 4
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @M_CAMXPT, align 4
  %130 = call i32 @free(i32* %128, i32 %129)
  %131 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %132 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %131, i32 0, i32 4
  store i32* null, i32** %132, align 8
  %133 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %134 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %133, i32 0, i32 5
  store i32 0, i32* %134, align 8
  br label %135

135:                                              ; preds = %125, %120
  %136 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %137 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  br label %353

141:                                              ; preds = %135
  %142 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %143 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @M_CAMXPT, align 4
  %146 = load i32, i32* @M_NOWAIT, align 4
  %147 = call i8* @malloc(i32 %144, i32 %145, i32 %146)
  %148 = bitcast i8* %147 to i32*
  %149 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %150 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %149, i32 0, i32 4
  store i32* %148, i32** %150, align 8
  %151 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %152 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %151, i32 0, i32 4
  %153 = load i32*, i32** %152, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %141
  %156 = load i8*, i8** @CAM_REQ_ABORTED, align 8
  %157 = load %union.ccb*, %union.ccb** %2, align 8
  %158 = bitcast %union.ccb* %157 to %struct.TYPE_4__*
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 1
  store i8* %156, i8** %159, align 8
  br label %376

160:                                              ; preds = %141
  %161 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %162 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %165 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 8
  %166 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %167 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %166, i32 0, i32 4
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %170 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %173 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @memcpy(i32* %168, i32* %171, i32 %174)
  br label %211

176:                                              ; preds = %113
  %177 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %178 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %181 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 4
  %182 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %183 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %182, i32 0, i32 5
  %184 = load i32, i32* %183, align 8
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %176
  br label %353

187:                                              ; preds = %176
  %188 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %189 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 8
  store i32 %190, i32* %5, align 4
  %191 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %192 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %191, i32 0, i32 4
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %195 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 8
  %197 = icmp sgt i32 %193, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %187
  %199 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %200 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  store i32 %201, i32* %5, align 4
  br label %202

202:                                              ; preds = %198, %187
  %203 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %204 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %203, i32 0, i32 2
  %205 = load i32*, i32** %204, align 8
  %206 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %207 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %5, align 4
  %210 = call i32 @memcpy(i32* %205, i32* %208, i32 %209)
  br label %211

211:                                              ; preds = %202, %160
  br label %353

212:                                              ; preds = %1
  %213 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %214 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* @CDAI_FLAG_STORE, align 4
  %217 = and i32 %215, %216
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %273

219:                                              ; preds = %212
  %220 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %221 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %220, i32 0, i32 2
  %222 = load i32*, i32** %221, align 8
  %223 = icmp ne i32* %222, null
  br i1 %223, label %224, label %232

224:                                              ; preds = %219
  %225 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %226 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %225, i32 0, i32 2
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* @M_CAMXPT, align 4
  %229 = call i32 @free(i32* %227, i32 %228)
  %230 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %231 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %230, i32 0, i32 2
  store i32* null, i32** %231, align 8
  br label %232

232:                                              ; preds = %224, %219
  %233 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %234 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %233, i32 0, i32 3
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %237 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %236, i32 0, i32 3
  store i32 %235, i32* %237, align 8
  %238 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %239 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %232
  br label %353

243:                                              ; preds = %232
  %244 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %245 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* @M_CAMXPT, align 4
  %248 = load i32, i32* @M_NOWAIT, align 4
  %249 = call i8* @malloc(i32 %246, i32 %247, i32 %248)
  %250 = bitcast i8* %249 to i32*
  %251 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %252 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %251, i32 0, i32 2
  store i32* %250, i32** %252, align 8
  %253 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %254 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %253, i32 0, i32 2
  %255 = load i32*, i32** %254, align 8
  %256 = icmp eq i32* %255, null
  br i1 %256, label %257, label %262

257:                                              ; preds = %243
  %258 = load i8*, i8** @CAM_REQ_ABORTED, align 8
  %259 = load %union.ccb*, %union.ccb** %2, align 8
  %260 = bitcast %union.ccb* %259 to %struct.TYPE_4__*
  %261 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i32 0, i32 1
  store i8* %258, i8** %261, align 8
  br label %376

262:                                              ; preds = %243
  %263 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %264 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %263, i32 0, i32 2
  %265 = load i32*, i32** %264, align 8
  %266 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %267 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %270 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 8
  %272 = call i32 @memcpy(i32* %265, i32* %268, i32 %271)
  br label %308

273:                                              ; preds = %212
  %274 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %275 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  %277 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %278 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %277, i32 0, i32 4
  store i32 %276, i32* %278, align 4
  %279 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %280 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %279, i32 0, i32 3
  %281 = load i32, i32* %280, align 8
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %273
  br label %353

284:                                              ; preds = %273
  %285 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %286 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 8
  store i32 %287, i32* %5, align 4
  %288 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %289 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %288, i32 0, i32 4
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %292 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %291, i32 0, i32 3
  %293 = load i32, i32* %292, align 8
  %294 = icmp sgt i32 %290, %293
  br i1 %294, label %295, label %299

295:                                              ; preds = %284
  %296 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %297 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  store i32 %298, i32* %5, align 4
  br label %299

299:                                              ; preds = %295, %284
  %300 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %301 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %300, i32 0, i32 2
  %302 = load i32*, i32** %301, align 8
  %303 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %304 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %303, i32 0, i32 2
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %5, align 4
  %307 = call i32 @memcpy(i32* %302, i32* %305, i32 %306)
  br label %308

308:                                              ; preds = %299, %262
  br label %353

309:                                              ; preds = %1
  %310 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %311 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %310, i32 0, i32 1
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* @CDAI_FLAG_STORE, align 4
  %314 = and i32 %312, %313
  %315 = icmp ne i32 %314, 0
  br i1 %315, label %316, label %317

316:                                              ; preds = %309
  br label %376

317:                                              ; preds = %309
  %318 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %319 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %322 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %321, i32 0, i32 4
  store i32 %320, i32* %322, align 4
  %323 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %324 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = icmp eq i32 %325, 0
  br i1 %326, label %327, label %328

327:                                              ; preds = %317
  br label %353

328:                                              ; preds = %317
  %329 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %330 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 8
  store i32 %331, i32* %5, align 4
  %332 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %333 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %332, i32 0, i32 4
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %336 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %335, i32 0, i32 3
  %337 = load i32, i32* %336, align 8
  %338 = icmp sgt i32 %334, %337
  br i1 %338, label %339, label %343

339:                                              ; preds = %328
  %340 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %341 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %340, i32 0, i32 3
  %342 = load i32, i32* %341, align 8
  store i32 %342, i32* %5, align 4
  br label %343

343:                                              ; preds = %339, %328
  %344 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %345 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %344, i32 0, i32 2
  %346 = load i32*, i32** %345, align 8
  %347 = load %struct.cam_ed*, %struct.cam_ed** %3, align 8
  %348 = getelementptr inbounds %struct.cam_ed, %struct.cam_ed* %347, i32 0, i32 0
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %5, align 4
  %351 = call i32 @memcpy(i32* %346, i32* %349, i32 %350)
  br label %353

352:                                              ; preds = %1
  br label %376

353:                                              ; preds = %343, %327, %308, %283, %242, %211, %186, %140, %104, %88, %61, %45
  %354 = load i8*, i8** @CAM_REQ_CMP, align 8
  %355 = load %union.ccb*, %union.ccb** %2, align 8
  %356 = bitcast %union.ccb* %355 to %struct.TYPE_4__*
  %357 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %356, i32 0, i32 1
  store i8* %354, i8** %357, align 8
  %358 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %359 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %358, i32 0, i32 1
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* @CDAI_FLAG_STORE, align 4
  %362 = and i32 %360, %361
  %363 = icmp ne i32 %362, 0
  br i1 %363, label %364, label %376

364:                                              ; preds = %353
  %365 = load i32, i32* @AC_ADVINFO_CHANGED, align 4
  %366 = load %union.ccb*, %union.ccb** %2, align 8
  %367 = bitcast %union.ccb* %366 to %struct.TYPE_4__*
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %367, i32 0, i32 0
  %369 = load %struct.TYPE_5__*, %struct.TYPE_5__** %368, align 8
  %370 = load %struct.ccb_dev_advinfo*, %struct.ccb_dev_advinfo** %4, align 8
  %371 = getelementptr inbounds %struct.ccb_dev_advinfo, %struct.ccb_dev_advinfo* %370, i32 0, i32 0
  %372 = load i32, i32* %371, align 8
  %373 = sext i32 %372 to i64
  %374 = inttoptr i64 %373 to i8*
  %375 = call i32 @xpt_async(i32 %365, %struct.TYPE_5__* %369, i8* %374)
  br label %376

376:                                              ; preds = %34, %77, %155, %257, %316, %352, %364, %353
  ret void
}

declare dso_local i32 @xpt_path_assert(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @xpt_async(i32, %struct.TYPE_5__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
