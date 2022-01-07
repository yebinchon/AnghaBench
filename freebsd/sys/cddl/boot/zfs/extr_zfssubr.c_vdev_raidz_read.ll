; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_zfssubr.c_vdev_raidz_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/boot/zfs/extr_zfssubr.c_vdev_raidz_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32 (%struct.TYPE_16__*, i32*, i32, i32, i32)*, i32, i32, i32, i32, %struct.TYPE_16__* }
%struct.TYPE_17__ = type { i32, i32, i64, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i32, i32, i32 }

@VDEV_RAIDZ_MAXPARITY = common dso_local global i32 0, align 4
@VDEV_STATE_HEALTHY = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@ECKSUM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DTL_MISSING = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@zio = common dso_local global %struct.TYPE_19__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32*, i8*, i32, i64)* @vdev_raidz_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdev_raidz_read(%struct.TYPE_16__* %0, i32* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_18__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 6
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  store %struct.TYPE_16__* %28, %struct.TYPE_16__** %11, align 8
  %29 = load i32, i32* @VDEV_RAIDZ_MAXPARITY, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %23, align 8
  %32 = alloca i32, i64 %30, align 16
  store i64 %30, i64* %24, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %14, align 8
  store i32 0, i32* %16, align 4
  %33 = load i8*, i8** %8, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load i64, i64* %10, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 5
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_17__* @vdev_raidz_map_alloc(i8* %33, i32 %34, i64 %35, i32 %38, i32 %41, i32 %44)
  store %struct.TYPE_17__* %45, %struct.TYPE_17__** %13, align 8
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sub nsw i32 %48, 1
  store i32 %49, i32* %15, align 4
  br label %50

50:                                               ; preds = %130, %5
  %51 = load i32, i32* %15, align 4
  %52 = icmp sge i32 %51, 0
  br i1 %52, label %53, label %133

53:                                               ; preds = %50
  %54 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 4
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i64 %58
  store %struct.TYPE_18__* %59, %struct.TYPE_18__** %14, align 8
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.TYPE_16__* @vdev_child(%struct.TYPE_16__* %60, i32 %63)
  store %struct.TYPE_16__* %64, %struct.TYPE_16__** %12, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %66 = icmp eq %struct.TYPE_16__* %65, null
  br i1 %66, label %73, label %67

67:                                               ; preds = %53
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @VDEV_STATE_HEALTHY, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %97

73:                                               ; preds = %67, %53
  %74 = load i32, i32* %15, align 4
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp sge i32 %74, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  store i64 %83, i64* %81, align 8
  br label %89

84:                                               ; preds = %73
  %85 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %84, %79
  %90 = load i32, i32* @ENXIO, align 4
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 4
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  store i32 1, i32* %94, align 4
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %95, i32 0, i32 2
  store i32 1, i32* %96, align 4
  br label %130

97:                                               ; preds = %67
  %98 = load i32, i32* %15, align 4
  %99 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp sge i32 %98, %101
  br i1 %102, label %108, label %103

103:                                              ; preds = %97
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 2
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %106, 0
  br i1 %107, label %108, label %129

108:                                              ; preds = %103, %97
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 1
  %111 = load i32 (%struct.TYPE_16__*, i32*, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32*, i32, i32, i32)** %110, align 8
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %117 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = call i32 %111(%struct.TYPE_16__* %112, i32* null, i32 %115, i32 %118, i32 %121)
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  %125 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %126 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %125, i32 0, i32 1
  store i32 1, i32* %126, align 4
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 2
  store i32 0, i32* %128, align 4
  br label %129

129:                                              ; preds = %108, %103
  br label %130

130:                                              ; preds = %129, %89
  %131 = load i32, i32* %15, align 4
  %132 = add nsw i32 %131, -1
  store i32 %132, i32* %15, align 4
  br label %50

133:                                              ; preds = %50
  br label %134

134:                                              ; preds = %428, %133
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp sle i32 %137, %140
  %142 = zext i1 %141 to i32
  %143 = call i32 @ASSERT(i32 %142)
  %144 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %145 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %144, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = sub nsw i32 %149, %152
  %154 = sext i32 %153 to i64
  %155 = icmp sle i64 %146, %154
  %156 = zext i1 %155 to i32
  %157 = call i32 @ASSERT(i32 %156)
  store i32 0, i32* %15, align 4
  br label %158

158:                                              ; preds = %221, %134
  %159 = load i32, i32* %15, align 4
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %224

164:                                              ; preds = %158
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 4
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %166, align 8
  %168 = load i32, i32* %15, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i64 %169
  store %struct.TYPE_18__* %170, %struct.TYPE_18__** %14, align 8
  %171 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %172 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %205

175:                                              ; preds = %164
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load i32, i32* @ECKSUM, align 4
  %180 = icmp ne i32 %178, %179
  %181 = zext i1 %180 to i32
  %182 = call i32 @ASSERT(i32 %181)
  %183 = load i32, i32* %15, align 4
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 1
  %186 = load i32, i32* %185, align 4
  %187 = icmp slt i32 %183, %186
  br i1 %187, label %188, label %191

188:                                              ; preds = %175
  %189 = load i32, i32* %18, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %18, align 4
  br label %194

191:                                              ; preds = %175
  %192 = load i32, i32* %20, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %20, align 4
  br label %194

194:                                              ; preds = %191, %188
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %202, label %199

199:                                              ; preds = %194
  %200 = load i32, i32* %17, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %17, align 4
  br label %202

202:                                              ; preds = %199, %194
  %203 = load i32, i32* %21, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %21, align 4
  br label %220

205:                                              ; preds = %164
  %206 = load i32, i32* %15, align 4
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 4
  %210 = icmp slt i32 %206, %209
  br i1 %210, label %211, label %219

211:                                              ; preds = %205
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %211
  %217 = load i32, i32* %19, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %19, align 4
  br label %219

219:                                              ; preds = %216, %211, %205
  br label %220

220:                                              ; preds = %219, %202
  br label %221

221:                                              ; preds = %220
  %222 = load i32, i32* %15, align 4
  %223 = add nsw i32 %222, 1
  store i32 %223, i32* %15, align 4
  br label %158

224:                                              ; preds = %158
  %225 = load i32, i32* %21, align 4
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load i32, i32* %19, align 4
  %230 = sub nsw i32 %228, %229
  %231 = icmp sle i32 %225, %230
  br i1 %231, label %232, label %361

232:                                              ; preds = %224
  %233 = load i32, i32* %20, align 4
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %269

235:                                              ; preds = %232
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = load i32*, i32** %7, align 8
  %240 = load i8*, i8** %8, align 8
  %241 = load i64, i64* %10, align 8
  %242 = call i64 @raidz_checksum_verify(i32 %238, i32* %239, i8* %240, i64 %241)
  %243 = icmp eq i64 %242, 0
  br i1 %243, label %244, label %268

244:                                              ; preds = %235
  %245 = load i32, i32* %18, align 4
  %246 = load i32, i32* %19, align 4
  %247 = add nsw i32 %245, %246
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = icmp slt i32 %247, %250
  br i1 %251, label %252, label %267

252:                                              ; preds = %244
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %254 = call i32 @raidz_parity_verify(%struct.TYPE_17__* %253)
  store i32 %254, i32* %22, align 4
  %255 = load i32, i32* %22, align 4
  %256 = load i32, i32* %17, align 4
  %257 = add nsw i32 %256, %255
  store i32 %257, i32* %17, align 4
  %258 = load i32, i32* %18, align 4
  %259 = load i32, i32* %22, align 4
  %260 = add nsw i32 %258, %259
  %261 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %262 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %261, i32 0, i32 1
  %263 = load i32, i32* %262, align 4
  %264 = icmp sle i32 %260, %263
  %265 = zext i1 %264 to i32
  %266 = call i32 @ASSERT(i32 %265)
  br label %267

267:                                              ; preds = %252, %244
  br label %472

268:                                              ; preds = %235
  br label %360

269:                                              ; preds = %232
  %270 = load i32, i32* %19, align 4
  %271 = icmp eq i32 %270, 0
  %272 = zext i1 %271 to i32
  %273 = call i32 @ASSERT(i32 %272)
  %274 = load i32, i32* %18, align 4
  %275 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %276 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = icmp slt i32 %274, %277
  %279 = zext i1 %278 to i32
  %280 = call i32 @ASSERT(i32 %279)
  store i32 0, i32* %22, align 4
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %282 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %281, i32 0, i32 1
  %283 = load i32, i32* %282, align 4
  store i32 %283, i32* %15, align 4
  br label %284

284:                                              ; preds = %313, %269
  %285 = load i32, i32* %15, align 4
  %286 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %287 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 8
  %289 = icmp slt i32 %285, %288
  br i1 %289, label %290, label %316

290:                                              ; preds = %284
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 4
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %292, align 8
  %294 = load i32, i32* %15, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i64 %295
  store %struct.TYPE_18__* %296, %struct.TYPE_18__** %14, align 8
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %312

301:                                              ; preds = %290
  %302 = load i32, i32* %22, align 4
  %303 = load i32, i32* @VDEV_RAIDZ_MAXPARITY, align 4
  %304 = icmp slt i32 %302, %303
  %305 = zext i1 %304 to i32
  %306 = call i32 @ASSERT(i32 %305)
  %307 = load i32, i32* %15, align 4
  %308 = load i32, i32* %22, align 4
  %309 = add nsw i32 %308, 1
  store i32 %309, i32* %22, align 4
  %310 = sext i32 %308 to i64
  %311 = getelementptr inbounds i32, i32* %32, i64 %310
  store i32 %307, i32* %311, align 4
  br label %312

312:                                              ; preds = %301, %290
  br label %313

313:                                              ; preds = %312
  %314 = load i32, i32* %15, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %15, align 4
  br label %284

316:                                              ; preds = %284
  %317 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %318 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %317, i32 0, i32 1
  %319 = load i32, i32* %318, align 4
  %320 = load i32, i32* %22, align 4
  %321 = icmp sge i32 %319, %320
  %322 = zext i1 %321 to i32
  %323 = call i32 @ASSERT(i32 %322)
  %324 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %325 = load i32, i32* %22, align 4
  %326 = call i32 @vdev_raidz_reconstruct(%struct.TYPE_17__* %324, i32* %32, i32 %325)
  store i32 %326, i32* %25, align 4
  %327 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = load i32*, i32** %7, align 8
  %331 = load i8*, i8** %8, align 8
  %332 = load i64, i64* %10, align 8
  %333 = call i64 @raidz_checksum_verify(i32 %329, i32* %330, i8* %331, i64 %332)
  %334 = icmp eq i64 %333, 0
  br i1 %334, label %335, label %359

335:                                              ; preds = %316
  %336 = load i32, i32* %18, align 4
  %337 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %338 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %337, i32 0, i32 1
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %22, align 4
  %341 = sub nsw i32 %339, %340
  %342 = icmp slt i32 %336, %341
  br i1 %342, label %343, label %358

343:                                              ; preds = %335
  %344 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %345 = call i32 @raidz_parity_verify(%struct.TYPE_17__* %344)
  store i32 %345, i32* %22, align 4
  %346 = load i32, i32* %22, align 4
  %347 = load i32, i32* %17, align 4
  %348 = add nsw i32 %347, %346
  store i32 %348, i32* %17, align 4
  %349 = load i32, i32* %18, align 4
  %350 = load i32, i32* %22, align 4
  %351 = add nsw i32 %349, %350
  %352 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %353 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %352, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = icmp sle i32 %351, %354
  %356 = zext i1 %355 to i32
  %357 = call i32 @ASSERT(i32 %356)
  br label %358

358:                                              ; preds = %343, %335
  br label %472

359:                                              ; preds = %316
  br label %360

360:                                              ; preds = %359, %268
  br label %361

361:                                              ; preds = %360, %224
  store i32 1, i32* %17, align 4
  %362 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %363 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %362, i32 0, i32 2
  store i64 0, i64* %363, align 8
  %364 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %365 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %364, i32 0, i32 3
  store i32 0, i32* %365, align 8
  store i32 0, i32* %22, align 4
  store i32 0, i32* %15, align 4
  br label %366

366:                                              ; preds = %422, %361
  %367 = load i32, i32* %15, align 4
  %368 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %369 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = icmp slt i32 %367, %370
  br i1 %371, label %372, label %425

372:                                              ; preds = %366
  %373 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %374 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %373, i32 0, i32 4
  %375 = load %struct.TYPE_18__*, %struct.TYPE_18__** %374, align 8
  %376 = load i32, i32* %15, align 4
  %377 = sext i32 %376 to i64
  %378 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %375, i64 %377
  store %struct.TYPE_18__* %378, %struct.TYPE_18__** %14, align 8
  %379 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %380 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %379, i32 0, i32 1
  %381 = load i32, i32* %380, align 4
  %382 = icmp ne i32 %381, 0
  br i1 %382, label %383, label %384

383:                                              ; preds = %372
  br label %422

384:                                              ; preds = %372
  %385 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %386 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %387 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %386, i32 0, i32 6
  %388 = load i32, i32* %387, align 4
  %389 = call %struct.TYPE_16__* @vdev_child(%struct.TYPE_16__* %385, i32 %388)
  store %struct.TYPE_16__* %389, %struct.TYPE_16__** %12, align 8
  %390 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %391 = icmp ne %struct.TYPE_16__* %390, null
  %392 = zext i1 %391 to i32
  %393 = call i32 @ASSERT(i32 %392)
  %394 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %395 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %394, i32 0, i32 1
  %396 = load i32 (%struct.TYPE_16__*, i32*, i32, i32, i32)*, i32 (%struct.TYPE_16__*, i32*, i32, i32, i32)** %395, align 8
  %397 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %398 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %399 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %398, i32 0, i32 5
  %400 = load i32, i32* %399, align 4
  %401 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %402 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %401, i32 0, i32 4
  %403 = load i32, i32* %402, align 4
  %404 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %405 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %404, i32 0, i32 3
  %406 = load i32, i32* %405, align 4
  %407 = call i32 %396(%struct.TYPE_16__* %397, i32* null, i32 %400, i32 %403, i32 %406)
  %408 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %409 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %408, i32 0, i32 0
  store i32 %407, i32* %409, align 4
  %410 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %411 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 4
  %413 = icmp eq i32 %412, 0
  br i1 %413, label %414, label %417

414:                                              ; preds = %384
  %415 = load i32, i32* %22, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %22, align 4
  br label %417

417:                                              ; preds = %414, %384
  %418 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %419 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %418, i32 0, i32 1
  store i32 1, i32* %419, align 4
  %420 = load %struct.TYPE_18__*, %struct.TYPE_18__** %14, align 8
  %421 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %420, i32 0, i32 2
  store i32 0, i32* %421, align 4
  br label %422

422:                                              ; preds = %417, %383
  %423 = load i32, i32* %15, align 4
  %424 = add nsw i32 %423, 1
  store i32 %424, i32* %15, align 4
  br label %366

425:                                              ; preds = %366
  %426 = load i32, i32* %22, align 4
  %427 = icmp sgt i32 %426, 0
  br i1 %427, label %428, label %429

428:                                              ; preds = %425
  br label %134

429:                                              ; preds = %425
  %430 = load i32, i32* %21, align 4
  %431 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %432 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = icmp sgt i32 %430, %433
  br i1 %434, label %435, label %437

435:                                              ; preds = %429
  %436 = load i32, i32* @EIO, align 4
  store i32 %436, i32* %16, align 4
  br label %471

437:                                              ; preds = %429
  %438 = load i32, i32* %21, align 4
  %439 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %440 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = icmp slt i32 %438, %441
  br i1 %442, label %443, label %468

443:                                              ; preds = %437
  %444 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %445 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 8
  %447 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %448 = load i32*, i32** %7, align 8
  %449 = load i8*, i8** %8, align 8
  %450 = load i32, i32* %9, align 4
  %451 = load i64, i64* %10, align 8
  %452 = load i32, i32* %21, align 4
  %453 = load i32, i32* %20, align 4
  %454 = call i32 @vdev_raidz_combrec(i32 %446, %struct.TYPE_17__* %447, i32* %448, i8* %449, i32 %450, i64 %451, i32 %452, i32 %453)
  store i32 %454, i32* %25, align 4
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %468

456:                                              ; preds = %443
  %457 = load i32, i32* %25, align 4
  %458 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %459 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %458, i32 0, i32 1
  %460 = load i32, i32* %459, align 4
  %461 = shl i32 1, %460
  %462 = sub nsw i32 %461, 1
  %463 = icmp ne i32 %457, %462
  br i1 %463, label %464, label %467

464:                                              ; preds = %456
  %465 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %466 = call i32 @raidz_parity_verify(%struct.TYPE_17__* %465)
  br label %467

467:                                              ; preds = %464, %456
  br label %470

468:                                              ; preds = %443, %437
  %469 = load i32, i32* @ECKSUM, align 4
  store i32 %469, i32* %16, align 4
  br label %470

470:                                              ; preds = %468, %467
  br label %471

471:                                              ; preds = %470, %435
  br label %472

472:                                              ; preds = %471, %358, %267
  %473 = load %struct.TYPE_17__*, %struct.TYPE_17__** %13, align 8
  %474 = call i32 @vdev_raidz_map_free(%struct.TYPE_17__* %473)
  %475 = load i32, i32* %16, align 4
  %476 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %476)
  ret i32 %475
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_17__* @vdev_raidz_map_alloc(i8*, i32, i64, i32, i32, i32) #2

declare dso_local %struct.TYPE_16__* @vdev_child(%struct.TYPE_16__*, i32) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i64 @raidz_checksum_verify(i32, i32*, i8*, i64) #2

declare dso_local i32 @raidz_parity_verify(%struct.TYPE_17__*) #2

declare dso_local i32 @vdev_raidz_reconstruct(%struct.TYPE_17__*, i32*, i32) #2

declare dso_local i32 @vdev_raidz_combrec(i32, %struct.TYPE_17__*, i32*, i8*, i32, i64, i32, i32) #2

declare dso_local i32 @vdev_raidz_map_free(%struct.TYPE_17__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
