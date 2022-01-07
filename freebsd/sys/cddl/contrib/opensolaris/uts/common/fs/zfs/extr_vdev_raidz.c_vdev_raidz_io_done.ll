; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_raidz.c_vdev_raidz_io_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_raidz.c_vdev_raidz_io_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64, i64, i32, i32, i32, i32*, %struct.TYPE_24__*, %struct.TYPE_23__* }
%struct.TYPE_24__ = type { i64, i64, i64, i64, %struct.TYPE_25__*, i32 }
%struct.TYPE_25__ = type { i64, i64, i32, i32, i32, i64, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_23__** }
%struct.TYPE_22__ = type { i32, i64 }

@VDEV_RAIDZ_MAXPARITY = common dso_local global i32 0, align 4
@ECKSUM = common dso_local global i64 0, align 8
@ZIO_TYPE_WRITE = common dso_local global i64 0, align 8
@ZIO_TYPE_FREE = common dso_local global i64 0, align 8
@ZIO_TYPE_READ = common dso_local global i64 0, align 8
@ZIO_FLAG_RESILVER = common dso_local global i32 0, align 4
@raidz_corrected = common dso_local global i32* null, align 8
@vdev_raidz_child_done = common dso_local global i32* null, align 8
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@ZIO_PRIORITY_ASYNC_WRITE = common dso_local global i32 0, align 4
@ZIO_FLAG_IO_REPAIR = common dso_local global i32 0, align 4
@ZIO_FLAG_SELF_HEAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_21__*)* @vdev_raidz_io_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_raidz_io_done(%struct.TYPE_21__* %0) #0 {
  %2 = alloca %struct.TYPE_21__*, align 8
  %3 = alloca %struct.TYPE_23__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_25__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_22__, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %2, align 8
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 7
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  store %struct.TYPE_23__* %21, %struct.TYPE_23__** %3, align 8
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 6
  %24 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  store %struct.TYPE_24__* %24, %struct.TYPE_24__** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %25 = load i32, i32* @VDEV_RAIDZ_MAXPARITY, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %14, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %15, align 8
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 5
  %31 = load i32*, i32** %30, align 8
  %32 = icmp ne i32* %31, null
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %37, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42)
  %44 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %49, %52
  %54 = icmp sle i64 %46, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  store i32 0, i32* %13, align 4
  br label %57

57:                                               ; preds = %123, %1
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp slt i64 %59, %62
  br i1 %63, label %64, label %126

64:                                               ; preds = %57
  %65 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %65, i32 0, i32 4
  %67 = load %struct.TYPE_25__*, %struct.TYPE_25__** %66, align 8
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %67, i64 %69
  store %struct.TYPE_25__* %70, %struct.TYPE_25__** %6, align 8
  %71 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %106

75:                                               ; preds = %64
  %76 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @ECKSUM, align 8
  %80 = icmp ne i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = call i32 @ASSERT(i32 %81)
  %83 = load i32, i32* %13, align 4
  %84 = sext i32 %83 to i64
  %85 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp slt i64 %84, %87
  br i1 %88, label %89, label %92

89:                                               ; preds = %75
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %8, align 4
  br label %95

92:                                               ; preds = %75
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %92, %89
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 6
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %103, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* %7, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %7, align 4
  br label %103

103:                                              ; preds = %100, %95
  %104 = load i32, i32* %11, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %11, align 4
  br label %122

106:                                              ; preds = %64
  %107 = load i32, i32* %13, align 4
  %108 = sext i32 %107 to i64
  %109 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp slt i64 %108, %111
  br i1 %112, label %113, label %121

113:                                              ; preds = %106
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %121, label %118

118:                                              ; preds = %113
  %119 = load i32, i32* %9, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %118, %113, %106
  br label %122

122:                                              ; preds = %121, %103
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %57

126:                                              ; preds = %57
  %127 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %126
  %133 = load i32, i32* %11, align 4
  %134 = sext i32 %133 to i64
  %135 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp sgt i64 %134, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %132
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %141 = call i8* @vdev_raidz_worst_error(%struct.TYPE_24__* %140)
  %142 = ptrtoint i8* %141 to i64
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 1
  store i64 %142, i64* %144, align 8
  br label %145

145:                                              ; preds = %139, %132
  store i32 1, i32* %17, align 4
  br label %586

146:                                              ; preds = %126
  %147 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @ZIO_TYPE_FREE, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  store i32 1, i32* %17, align 4
  br label %586

153:                                              ; preds = %146
  br label %154

154:                                              ; preds = %153
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @ZIO_TYPE_READ, align 8
  %159 = icmp eq i64 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @ASSERT(i32 %160)
  %162 = load i32, i32* %11, align 4
  %163 = sext i32 %162 to i64
  %164 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i32, i32* %9, align 4
  %168 = sext i32 %167 to i64
  %169 = sub nsw i64 %166, %168
  %170 = icmp sle i64 %163, %169
  br i1 %170, label %171, label %320

171:                                              ; preds = %154
  %172 = load i32, i32* %10, align 4
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %213

174:                                              ; preds = %171
  %175 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %176 = call i64 @raidz_checksum_verify(%struct.TYPE_21__* %175)
  %177 = icmp eq i64 %176, 0
  br i1 %177, label %178, label %212

178:                                              ; preds = %174
  %179 = load i32, i32* %8, align 4
  %180 = load i32, i32* %9, align 4
  %181 = add nsw i32 %179, %180
  %182 = sext i32 %181 to i64
  %183 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %184 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = icmp slt i64 %182, %185
  br i1 %186, label %194, label %187

187:                                              ; preds = %178
  %188 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %189 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @ZIO_FLAG_RESILVER, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %211

194:                                              ; preds = %187, %178
  %195 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %196 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %197 = call i32 @raidz_parity_verify(%struct.TYPE_21__* %195, %struct.TYPE_24__* %196)
  store i32 %197, i32* %12, align 4
  %198 = load i32, i32* %12, align 4
  %199 = load i32, i32* %7, align 4
  %200 = add nsw i32 %199, %198
  store i32 %200, i32* %7, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %12, align 4
  %203 = add nsw i32 %201, %202
  %204 = sext i32 %203 to i64
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = icmp sle i64 %204, %207
  %209 = zext i1 %208 to i32
  %210 = call i32 @ASSERT(i32 %209)
  br label %211

211:                                              ; preds = %194, %187
  br label %505

212:                                              ; preds = %174
  br label %319

213:                                              ; preds = %171
  %214 = load i32, i32* %9, align 4
  %215 = icmp eq i32 %214, 0
  %216 = zext i1 %215 to i32
  %217 = call i32 @ASSERT(i32 %216)
  %218 = load i32, i32* %8, align 4
  %219 = sext i32 %218 to i64
  %220 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = icmp slt i64 %219, %222
  %224 = zext i1 %223 to i32
  %225 = call i32 @ASSERT(i32 %224)
  store i32 0, i32* %12, align 4
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 1
  %228 = load i64, i64* %227, align 8
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %13, align 4
  br label %230

230:                                              ; preds = %260, %213
  %231 = load i32, i32* %13, align 4
  %232 = sext i32 %231 to i64
  %233 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %233, i32 0, i32 3
  %235 = load i64, i64* %234, align 8
  %236 = icmp slt i64 %232, %235
  br i1 %236, label %237, label %263

237:                                              ; preds = %230
  %238 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %239 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %238, i32 0, i32 4
  %240 = load %struct.TYPE_25__*, %struct.TYPE_25__** %239, align 8
  %241 = load i32, i32* %13, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %240, i64 %242
  store %struct.TYPE_25__* %243, %struct.TYPE_25__** %6, align 8
  %244 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %259

248:                                              ; preds = %237
  %249 = load i32, i32* %12, align 4
  %250 = load i32, i32* @VDEV_RAIDZ_MAXPARITY, align 4
  %251 = icmp slt i32 %249, %250
  %252 = zext i1 %251 to i32
  %253 = call i32 @ASSERT(i32 %252)
  %254 = load i32, i32* %13, align 4
  %255 = load i32, i32* %12, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %12, align 4
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %28, i64 %257
  store i32 %254, i32* %258, align 4
  br label %259

259:                                              ; preds = %248, %237
  br label %260

260:                                              ; preds = %259
  %261 = load i32, i32* %13, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %13, align 4
  br label %230

263:                                              ; preds = %230
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load i32, i32* %12, align 4
  %268 = sext i32 %267 to i64
  %269 = icmp sge i64 %266, %268
  %270 = zext i1 %269 to i32
  %271 = call i32 @ASSERT(i32 %270)
  %272 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %273 = load i32, i32* %12, align 4
  %274 = call i32 @vdev_raidz_reconstruct(%struct.TYPE_24__* %272, i32* %28, i32 %273)
  store i32 %274, i32* %16, align 4
  %275 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %276 = call i64 @raidz_checksum_verify(%struct.TYPE_21__* %275)
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %318

278:                                              ; preds = %263
  %279 = load i32*, i32** @raidz_corrected, align 8
  %280 = load i32, i32* %16, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i32, i32* %279, i64 %281
  %283 = call i32 @atomic_inc_64(i32* %282)
  %284 = load i32, i32* %8, align 4
  %285 = sext i32 %284 to i64
  %286 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %287 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %286, i32 0, i32 1
  %288 = load i64, i64* %287, align 8
  %289 = load i32, i32* %12, align 4
  %290 = sext i32 %289 to i64
  %291 = sub nsw i64 %288, %290
  %292 = icmp slt i64 %285, %291
  br i1 %292, label %300, label %293

293:                                              ; preds = %278
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @ZIO_FLAG_RESILVER, align 4
  %298 = and i32 %296, %297
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %317

300:                                              ; preds = %293, %278
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %302 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %303 = call i32 @raidz_parity_verify(%struct.TYPE_21__* %301, %struct.TYPE_24__* %302)
  store i32 %303, i32* %12, align 4
  %304 = load i32, i32* %12, align 4
  %305 = load i32, i32* %7, align 4
  %306 = add nsw i32 %305, %304
  store i32 %306, i32* %7, align 4
  %307 = load i32, i32* %8, align 4
  %308 = load i32, i32* %12, align 4
  %309 = add nsw i32 %307, %308
  %310 = sext i32 %309 to i64
  %311 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %311, i32 0, i32 1
  %313 = load i64, i64* %312, align 8
  %314 = icmp sle i64 %310, %313
  %315 = zext i1 %314 to i32
  %316 = call i32 @ASSERT(i32 %315)
  br label %317

317:                                              ; preds = %300, %293
  br label %505

318:                                              ; preds = %263
  br label %319

319:                                              ; preds = %318, %212
  br label %320

320:                                              ; preds = %319, %154
  store i32 1, i32* %7, align 4
  %321 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %321, i32 0, i32 2
  store i64 0, i64* %322, align 8
  %323 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %324 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %323, i32 0, i32 0
  store i64 0, i64* %324, align 8
  store i32 0, i32* %13, align 4
  br label %325

325:                                              ; preds = %396, %320
  %326 = load i32, i32* %13, align 4
  %327 = sext i32 %326 to i64
  %328 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %328, i32 0, i32 3
  %330 = load i64, i64* %329, align 8
  %331 = icmp slt i64 %327, %330
  br i1 %331, label %332, label %399

332:                                              ; preds = %325
  %333 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %334 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %333, i32 0, i32 4
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %334, align 8
  %336 = load i32, i32* %13, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %335, i64 %337
  %339 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %338, i32 0, i32 5
  %340 = load i64, i64* %339, align 8
  %341 = icmp ne i64 %340, 0
  br i1 %341, label %342, label %343

342:                                              ; preds = %332
  br label %396

343:                                              ; preds = %332
  %344 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %345 = call i32 @zio_vdev_io_redone(%struct.TYPE_21__* %344)
  br label %346

346:                                              ; preds = %387, %343
  %347 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %347, i32 0, i32 4
  %349 = load %struct.TYPE_25__*, %struct.TYPE_25__** %348, align 8
  %350 = load i32, i32* %13, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %349, i64 %351
  store %struct.TYPE_25__* %352, %struct.TYPE_25__** %6, align 8
  %353 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %354 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %353, i32 0, i32 5
  %355 = load i64, i64* %354, align 8
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %346
  br label %387

358:                                              ; preds = %346
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %360 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %361 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %360, i32 0, i32 0
  %362 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %361, align 8
  %363 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %363, i32 0, i32 1
  %365 = load i64, i64* %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %362, i64 %365
  %367 = load %struct.TYPE_23__*, %struct.TYPE_23__** %366, align 8
  %368 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %369 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %368, i32 0, i32 4
  %370 = load i32, i32* %369, align 8
  %371 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %371, i32 0, i32 3
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %375 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %374, i32 0, i32 2
  %376 = load i32, i32* %375, align 8
  %377 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %378 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %377, i32 0, i32 0
  %379 = load i64, i64* %378, align 8
  %380 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %381 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %380, i32 0, i32 4
  %382 = load i32, i32* %381, align 8
  %383 = load i32*, i32** @vdev_raidz_child_done, align 8
  %384 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %385 = call i32 @zio_vdev_child_io(%struct.TYPE_21__* %359, i32* null, %struct.TYPE_23__* %367, i32 %370, i32 %373, i32 %376, i64 %379, i32 %382, i32 0, i32* %383, %struct.TYPE_25__* %384)
  %386 = call i32 @zio_nowait(i32 %385)
  br label %387

387:                                              ; preds = %358, %357
  %388 = load i32, i32* %13, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %13, align 4
  %390 = sext i32 %389 to i64
  %391 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %392 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %391, i32 0, i32 3
  %393 = load i64, i64* %392, align 8
  %394 = icmp slt i64 %390, %393
  br i1 %394, label %346, label %395

395:                                              ; preds = %387
  store i32 1, i32* %17, align 4
  br label %586

396:                                              ; preds = %342
  %397 = load i32, i32* %13, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %13, align 4
  br label %325

399:                                              ; preds = %325
  %400 = load i32, i32* %11, align 4
  %401 = sext i32 %400 to i64
  %402 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %403 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %402, i32 0, i32 1
  %404 = load i64, i64* %403, align 8
  %405 = icmp sgt i64 %401, %404
  br i1 %405, label %406, label %412

406:                                              ; preds = %399
  %407 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %408 = call i8* @vdev_raidz_worst_error(%struct.TYPE_24__* %407)
  %409 = ptrtoint i8* %408 to i64
  %410 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %411 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %410, i32 0, i32 1
  store i64 %409, i64* %411, align 8
  br label %504

412:                                              ; preds = %399
  %413 = load i32, i32* %11, align 4
  %414 = sext i32 %413 to i64
  %415 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %416 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = icmp slt i64 %414, %417
  br i1 %418, label %419, label %439

419:                                              ; preds = %412
  %420 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %421 = load i32, i32* %11, align 4
  %422 = load i32, i32* %10, align 4
  %423 = call i32 @vdev_raidz_combrec(%struct.TYPE_21__* %420, i32 %421, i32 %422)
  store i32 %423, i32* %16, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %439

425:                                              ; preds = %419
  %426 = load i32, i32* %16, align 4
  %427 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %428 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %427, i32 0, i32 1
  %429 = load i64, i64* %428, align 8
  %430 = trunc i64 %429 to i32
  %431 = shl i32 1, %430
  %432 = sub nsw i32 %431, 1
  %433 = icmp ne i32 %426, %432
  br i1 %433, label %434, label %438

434:                                              ; preds = %425
  %435 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %436 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %437 = call i32 @raidz_parity_verify(%struct.TYPE_21__* %435, %struct.TYPE_24__* %436)
  br label %438

438:                                              ; preds = %434, %425
  br label %503

439:                                              ; preds = %419, %412
  %440 = load i64, i64* @ECKSUM, align 8
  %441 = call i64 @SET_ERROR(i64 %440)
  %442 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %443 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %442, i32 0, i32 1
  store i64 %441, i64* %443, align 8
  %444 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %445 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %444, i32 0, i32 2
  %446 = load i32, i32* %445, align 8
  %447 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %448 = and i32 %446, %447
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %502, label %450

450:                                              ; preds = %439
  store i32 0, i32* %13, align 4
  br label %451

451:                                              ; preds = %498, %450
  %452 = load i32, i32* %13, align 4
  %453 = sext i32 %452 to i64
  %454 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %455 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %454, i32 0, i32 3
  %456 = load i64, i64* %455, align 8
  %457 = icmp slt i64 %453, %456
  br i1 %457, label %458, label %501

458:                                              ; preds = %451
  %459 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %460 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %459, i32 0, i32 4
  %461 = load %struct.TYPE_25__*, %struct.TYPE_25__** %460, align 8
  %462 = load i32, i32* %13, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %461, i64 %463
  store %struct.TYPE_25__* %464, %struct.TYPE_25__** %6, align 8
  %465 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %466 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %465, i32 0, i32 0
  %467 = load i64, i64* %466, align 8
  %468 = icmp eq i64 %467, 0
  br i1 %468, label %469, label %497

469:                                              ; preds = %458
  %470 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 1
  store i64 0, i64* %470, align 8
  %471 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %472 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %471, i32 0, i32 5
  %473 = load i32, i32* %472, align 8
  %474 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 0
  store i32 %473, i32* %474, align 8
  %475 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %476 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %475, i32 0, i32 3
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %478, i32 0, i32 0
  %480 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %479, align 8
  %481 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %482 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %481, i32 0, i32 1
  %483 = load i64, i64* %482, align 8
  %484 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %480, i64 %483
  %485 = load %struct.TYPE_23__*, %struct.TYPE_23__** %484, align 8
  %486 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %487 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %488 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %487, i32 0, i32 4
  %489 = load i32, i32* %488, align 8
  %490 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %491 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %490, i32 0, i32 2
  %492 = load i32, i32* %491, align 8
  %493 = load i32, i32* %13, align 4
  %494 = sext i32 %493 to i64
  %495 = inttoptr i64 %494 to i8*
  %496 = call i32 @zfs_ereport_start_checksum(i32 %477, %struct.TYPE_23__* %485, %struct.TYPE_21__* %486, i32 %489, i32 %492, i8* %495, %struct.TYPE_22__* %18)
  br label %497

497:                                              ; preds = %469, %458
  br label %498

498:                                              ; preds = %497
  %499 = load i32, i32* %13, align 4
  %500 = add nsw i32 %499, 1
  store i32 %500, i32* %13, align 4
  br label %451

501:                                              ; preds = %451
  br label %502

502:                                              ; preds = %501, %439
  br label %503

503:                                              ; preds = %502, %438
  br label %504

504:                                              ; preds = %503, %406
  br label %505

505:                                              ; preds = %504, %317, %211
  %506 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %507 = call i32 @zio_checksum_verified(%struct.TYPE_21__* %506)
  %508 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %509 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %508, i32 0, i32 1
  %510 = load i64, i64* %509, align 8
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %512, label %585

512:                                              ; preds = %505
  %513 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %514 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %513, i32 0, i32 3
  %515 = load i32, i32* %514, align 4
  %516 = call i64 @spa_writeable(i32 %515)
  %517 = icmp ne i64 %516, 0
  br i1 %517, label %518, label %585

518:                                              ; preds = %512
  %519 = load i32, i32* %7, align 4
  %520 = icmp ne i32 %519, 0
  br i1 %520, label %528, label %521

521:                                              ; preds = %518
  %522 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %523 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %522, i32 0, i32 2
  %524 = load i32, i32* %523, align 8
  %525 = load i32, i32* @ZIO_FLAG_RESILVER, align 4
  %526 = and i32 %524, %525
  %527 = icmp ne i32 %526, 0
  br i1 %527, label %528, label %585

528:                                              ; preds = %521, %518
  store i32 0, i32* %13, align 4
  br label %529

529:                                              ; preds = %581, %528
  %530 = load i32, i32* %13, align 4
  %531 = sext i32 %530 to i64
  %532 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %533 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %532, i32 0, i32 3
  %534 = load i64, i64* %533, align 8
  %535 = icmp slt i64 %531, %534
  br i1 %535, label %536, label %584

536:                                              ; preds = %529
  %537 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %538 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %537, i32 0, i32 4
  %539 = load %struct.TYPE_25__*, %struct.TYPE_25__** %538, align 8
  %540 = load i32, i32* %13, align 4
  %541 = sext i32 %540 to i64
  %542 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %539, i64 %541
  store %struct.TYPE_25__* %542, %struct.TYPE_25__** %6, align 8
  %543 = load %struct.TYPE_23__*, %struct.TYPE_23__** %3, align 8
  %544 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %543, i32 0, i32 0
  %545 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %544, align 8
  %546 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %547 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %546, i32 0, i32 1
  %548 = load i64, i64* %547, align 8
  %549 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %545, i64 %548
  %550 = load %struct.TYPE_23__*, %struct.TYPE_23__** %549, align 8
  store %struct.TYPE_23__* %550, %struct.TYPE_23__** %4, align 8
  %551 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %552 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %551, i32 0, i32 0
  %553 = load i64, i64* %552, align 8
  %554 = icmp eq i64 %553, 0
  br i1 %554, label %555, label %556

555:                                              ; preds = %536
  br label %581

556:                                              ; preds = %536
  %557 = load %struct.TYPE_21__*, %struct.TYPE_21__** %2, align 8
  %558 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %559 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %560 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %559, i32 0, i32 4
  %561 = load i32, i32* %560, align 8
  %562 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %563 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %562, i32 0, i32 3
  %564 = load i32, i32* %563, align 4
  %565 = load %struct.TYPE_25__*, %struct.TYPE_25__** %6, align 8
  %566 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %565, i32 0, i32 2
  %567 = load i32, i32* %566, align 8
  %568 = load i64, i64* @ZIO_TYPE_WRITE, align 8
  %569 = load i32, i32* @ZIO_PRIORITY_ASYNC_WRITE, align 4
  %570 = load i32, i32* @ZIO_FLAG_IO_REPAIR, align 4
  %571 = load i32, i32* %7, align 4
  %572 = icmp ne i32 %571, 0
  br i1 %572, label %573, label %575

573:                                              ; preds = %556
  %574 = load i32, i32* @ZIO_FLAG_SELF_HEAL, align 4
  br label %576

575:                                              ; preds = %556
  br label %576

576:                                              ; preds = %575, %573
  %577 = phi i32 [ %574, %573 ], [ 0, %575 ]
  %578 = or i32 %570, %577
  %579 = call i32 @zio_vdev_child_io(%struct.TYPE_21__* %557, i32* null, %struct.TYPE_23__* %558, i32 %561, i32 %564, i32 %567, i64 %568, i32 %569, i32 %578, i32* null, %struct.TYPE_25__* null)
  %580 = call i32 @zio_nowait(i32 %579)
  br label %581

581:                                              ; preds = %576, %555
  %582 = load i32, i32* %13, align 4
  %583 = add nsw i32 %582, 1
  store i32 %583, i32* %13, align 4
  br label %529

584:                                              ; preds = %529
  br label %585

585:                                              ; preds = %584, %521, %512, %505
  store i32 0, i32* %17, align 4
  br label %586

586:                                              ; preds = %585, %395, %152, %145
  %587 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %587)
  %588 = load i32, i32* %17, align 4
  switch i32 %588, label %590 [
    i32 0, label %589
    i32 1, label %589
  ]

589:                                              ; preds = %586, %586
  ret void

590:                                              ; preds = %586
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i8* @vdev_raidz_worst_error(%struct.TYPE_24__*) #2

declare dso_local i64 @raidz_checksum_verify(%struct.TYPE_21__*) #2

declare dso_local i32 @raidz_parity_verify(%struct.TYPE_21__*, %struct.TYPE_24__*) #2

declare dso_local i32 @vdev_raidz_reconstruct(%struct.TYPE_24__*, i32*, i32) #2

declare dso_local i32 @atomic_inc_64(i32*) #2

declare dso_local i32 @zio_vdev_io_redone(%struct.TYPE_21__*) #2

declare dso_local i32 @zio_nowait(i32) #2

declare dso_local i32 @zio_vdev_child_io(%struct.TYPE_21__*, i32*, %struct.TYPE_23__*, i32, i32, i32, i64, i32, i32, i32*, %struct.TYPE_25__*) #2

declare dso_local i32 @vdev_raidz_combrec(%struct.TYPE_21__*, i32, i32) #2

declare dso_local i64 @SET_ERROR(i64) #2

declare dso_local i32 @zfs_ereport_start_checksum(i32, %struct.TYPE_23__*, %struct.TYPE_21__*, i32, i32, i8*, %struct.TYPE_22__*) #2

declare dso_local i32 @zio_checksum_verified(%struct.TYPE_21__*) #2

declare dso_local i64 @spa_writeable(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
