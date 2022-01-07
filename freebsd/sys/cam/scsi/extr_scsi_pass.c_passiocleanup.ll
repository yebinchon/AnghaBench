; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pass.c_passiocleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_pass.c_passiocleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pass_softc = type { i32 }
%struct.pass_io_req = type { i32, i32, i64, i32, i32**, %struct.TYPE_16__*, %struct.TYPE_16__**, %struct.TYPE_16__*, %union.ccb }
%struct.TYPE_16__ = type { i64 }
%union.ccb = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32*, i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32* }

@CAM_PERIPH_MAXMAPS = common dso_local global i32 0, align 4
@PASS_IO_USER_SEG_MALLOC = common dso_local global i32 0, align 4
@M_SCSIPASS = common dso_local global i32 0, align 4
@CAM_DATA_VADDR = common dso_local global i64 0, align 8
@CAM_DATA_SG = common dso_local global i64 0, align 8
@PASS_IO_KERN_SEG_MALLOC = common dso_local global i32 0, align 4
@CAM_DATA_PADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pass_softc*, %struct.pass_io_req*)* @passiocleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @passiocleanup(%struct.pass_softc* %0, %struct.pass_io_req* %1) #0 {
  %3 = alloca %struct.pass_softc*, align 8
  %4 = alloca %struct.pass_io_req*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pass_softc* %0, %struct.pass_softc** %3, align 8
  store %struct.pass_io_req* %1, %struct.pass_io_req** %4, align 8
  %11 = load i32, i32* @CAM_PERIPH_MAXMAPS, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32**, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %16 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %15, i32 0, i32 8
  store %union.ccb* %16, %union.ccb** %5, align 8
  %17 = load %union.ccb*, %union.ccb** %5, align 8
  %18 = bitcast %union.ccb* %17 to %struct.TYPE_9__*
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %96 [
    i32 132, label %21
    i32 129, label %46
    i32 134, label %46
    i32 135, label %55
    i32 128, label %64
    i32 133, label %77
    i32 130, label %87
    i32 131, label %87
  ]

21:                                               ; preds = %2
  %22 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %23 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @min(i32 %24, i32 2)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %union.ccb*, %union.ccb** %5, align 8
  %30 = bitcast %union.ccb* %29 to %struct.TYPE_10__*
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = bitcast i32* %31 to i32**
  %33 = getelementptr inbounds i32**, i32*** %14, i64 0
  store i32** %32, i32*** %33, align 16
  br label %45

34:                                               ; preds = %21
  %35 = load %union.ccb*, %union.ccb** %5, align 8
  %36 = bitcast %union.ccb* %35 to %struct.TYPE_10__*
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = bitcast i32* %37 to i32**
  %39 = getelementptr inbounds i32**, i32*** %14, i64 0
  store i32** %38, i32*** %39, align 16
  %40 = load %union.ccb*, %union.ccb** %5, align 8
  %41 = bitcast %union.ccb* %40 to %struct.TYPE_10__*
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = bitcast i32* %42 to i32**
  %44 = getelementptr inbounds i32**, i32*** %14, i64 1
  store i32** %43, i32*** %44, align 8
  br label %45

45:                                               ; preds = %34, %28
  br label %97

46:                                               ; preds = %2, %2
  %47 = load %union.ccb*, %union.ccb** %5, align 8
  %48 = bitcast %union.ccb* %47 to %struct.TYPE_11__*
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds i32**, i32*** %14, i64 0
  store i32** %49, i32*** %50, align 16
  %51 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %52 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @min(i32 %53, i32 1)
  store i32 %54, i32* %9, align 4
  br label %97

55:                                               ; preds = %2
  %56 = load %union.ccb*, %union.ccb** %5, align 8
  %57 = bitcast %union.ccb* %56 to %struct.TYPE_12__*
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = getelementptr inbounds i32**, i32*** %14, i64 0
  store i32** %58, i32*** %59, align 16
  %60 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %61 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @min(i32 %62, i32 1)
  store i32 %63, i32* %9, align 4
  br label %97

64:                                               ; preds = %2
  %65 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %66 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @min(i32 %67, i32 2)
  store i32 %68, i32* %9, align 4
  %69 = load %union.ccb*, %union.ccb** %5, align 8
  %70 = bitcast %union.ccb* %69 to %struct.TYPE_13__*
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 1
  %72 = getelementptr inbounds i32**, i32*** %14, i64 0
  store i32** %71, i32*** %72, align 16
  %73 = load %union.ccb*, %union.ccb** %5, align 8
  %74 = bitcast %union.ccb* %73 to %struct.TYPE_13__*
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = getelementptr inbounds i32**, i32*** %14, i64 1
  store i32** %75, i32*** %76, align 8
  br label %97

77:                                               ; preds = %2
  %78 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %79 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @min(i32 %80, i32 1)
  store i32 %81, i32* %9, align 4
  %82 = load %union.ccb*, %union.ccb** %5, align 8
  %83 = bitcast %union.ccb* %82 to %struct.TYPE_14__*
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = bitcast i32* %84 to i32**
  %86 = getelementptr inbounds i32**, i32*** %14, i64 0
  store i32** %85, i32*** %86, align 16
  br label %97

87:                                               ; preds = %2, %2
  %88 = load %union.ccb*, %union.ccb** %5, align 8
  %89 = bitcast %union.ccb* %88 to %struct.TYPE_15__*
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = getelementptr inbounds i32**, i32*** %14, i64 0
  store i32** %90, i32*** %91, align 16
  %92 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %93 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @min(i32 %94, i32 1)
  store i32 %95, i32* %9, align 4
  br label %97

96:                                               ; preds = %2
  store i32 1, i32* %10, align 4
  br label %259

97:                                               ; preds = %87, %77, %64, %55, %46, %45
  %98 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %99 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @PASS_IO_USER_SEG_MALLOC, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %97
  %105 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %106 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %105, i32 0, i32 7
  %107 = load %struct.TYPE_16__*, %struct.TYPE_16__** %106, align 8
  %108 = load i32, i32* @M_SCSIPASS, align 4
  %109 = call i32 @free(%struct.TYPE_16__* %107, i32 %108)
  %110 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %111 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %110, i32 0, i32 7
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %111, align 8
  br label %112

112:                                              ; preds = %104, %97
  %113 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %114 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @CAM_DATA_VADDR, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %155

118:                                              ; preds = %112
  store i32 0, i32* %8, align 4
  br label %119

119:                                              ; preds = %151, %118
  %120 = load i32, i32* %8, align 4
  %121 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %122 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp slt i32 %120, %123
  br i1 %124, label %125, label %154

125:                                              ; preds = %119
  %126 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %127 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %126, i32 0, i32 6
  %128 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %128, i64 %130
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %131, align 8
  %133 = icmp eq %struct.TYPE_16__* %132, null
  br i1 %133, label %134, label %135

134:                                              ; preds = %125
  br label %151

135:                                              ; preds = %125
  %136 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %137 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %136, i32 0, i32 6
  %138 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %137, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %138, i64 %140
  %142 = load %struct.TYPE_16__*, %struct.TYPE_16__** %141, align 8
  %143 = load i32, i32* @M_SCSIPASS, align 4
  %144 = call i32 @free(%struct.TYPE_16__* %142, i32 %143)
  %145 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %146 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %145, i32 0, i32 6
  %147 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %147, i64 %149
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %150, align 8
  br label %151

151:                                              ; preds = %135, %134
  %152 = load i32, i32* %8, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %8, align 4
  br label %119

154:                                              ; preds = %119
  br label %206

155:                                              ; preds = %112
  %156 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %157 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load i64, i64* @CAM_DATA_SG, align 8
  %160 = icmp eq i64 %158, %159
  br i1 %160, label %161, label %205

161:                                              ; preds = %155
  store i32 0, i32* %8, align 4
  br label %162

162:                                              ; preds = %201, %161
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %165 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %164, i32 0, i32 3
  %166 = load i32, i32* %165, align 8
  %167 = icmp slt i32 %163, %166
  br i1 %167, label %168, label %204

168:                                              ; preds = %162
  %169 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %170 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %169, i32 0, i32 5
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = load i32, i32* %8, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i64 %173
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = inttoptr i64 %176 to i32*
  %178 = icmp eq i32* %177, null
  br i1 %178, label %179, label %180

179:                                              ; preds = %168
  br label %201

180:                                              ; preds = %168
  %181 = load %struct.pass_softc*, %struct.pass_softc** %3, align 8
  %182 = getelementptr inbounds %struct.pass_softc, %struct.pass_softc* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %185 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %184, i32 0, i32 5
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = inttoptr i64 %191 to i32*
  %193 = call i32 @uma_zfree(i32 %183, i32* %192)
  %194 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %195 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %194, i32 0, i32 5
  %196 = load %struct.TYPE_16__*, %struct.TYPE_16__** %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %196, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 0
  store i64 0, i64* %200, align 8
  br label %201

201:                                              ; preds = %180, %179
  %202 = load i32, i32* %8, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %8, align 4
  br label %162

204:                                              ; preds = %162
  br label %205

205:                                              ; preds = %204, %155
  br label %206

206:                                              ; preds = %205, %154
  %207 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %208 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = load i32, i32* @PASS_IO_KERN_SEG_MALLOC, align 4
  %211 = and i32 %209, %210
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %221

213:                                              ; preds = %206
  %214 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %215 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %214, i32 0, i32 5
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %215, align 8
  %217 = load i32, i32* @M_SCSIPASS, align 4
  %218 = call i32 @free(%struct.TYPE_16__* %216, i32 %217)
  %219 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %220 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %219, i32 0, i32 5
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %220, align 8
  br label %221

221:                                              ; preds = %213, %206
  %222 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %223 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %222, i32 0, i32 2
  %224 = load i64, i64* %223, align 8
  %225 = load i64, i64* @CAM_DATA_PADDR, align 8
  %226 = icmp ne i64 %224, %225
  br i1 %226, label %227, label %258

227:                                              ; preds = %221
  store i32 0, i32* %8, align 4
  br label %228

228:                                              ; preds = %254, %227
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %9, align 4
  %231 = icmp slt i32 %229, %230
  br i1 %231, label %232, label %257

232:                                              ; preds = %228
  %233 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %234 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %233, i32 0, i32 4
  %235 = load i32**, i32*** %234, align 8
  %236 = load i32, i32* %8, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32*, i32** %235, i64 %237
  %239 = load i32*, i32** %238, align 8
  %240 = icmp ne i32* %239, null
  br i1 %240, label %241, label %253

241:                                              ; preds = %232
  %242 = load %struct.pass_io_req*, %struct.pass_io_req** %4, align 8
  %243 = getelementptr inbounds %struct.pass_io_req, %struct.pass_io_req* %242, i32 0, i32 4
  %244 = load i32**, i32*** %243, align 8
  %245 = load i32, i32* %8, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds i32*, i32** %244, i64 %246
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %8, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32**, i32*** %14, i64 %250
  %252 = load i32**, i32*** %251, align 8
  store i32* %248, i32** %252, align 8
  br label %253

253:                                              ; preds = %241, %232
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %8, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %8, align 4
  br label %228

257:                                              ; preds = %228
  br label %258

258:                                              ; preds = %257, %221
  store i32 0, i32* %10, align 4
  br label %259

259:                                              ; preds = %258, %96
  %260 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %260)
  %261 = load i32, i32* %10, align 4
  switch i32 %261, label %263 [
    i32 0, label %262
    i32 1, label %262
  ]

262:                                              ; preds = %259, %259
  ret void

263:                                              ; preds = %259
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @free(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @uma_zfree(i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
