; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_build_layouts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_build_layouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { %struct.TYPE_35__*, i32*, %struct.TYPE_28__*, i32*, %struct.TYPE_28__* }
%struct.TYPE_35__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i64, %struct.TYPE_29__* }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_28__ = type { i32, i64 }
%struct.TYPE_34__ = type { i64, i32, i32, i32, i32, i8* }
%struct.TYPE_32__ = type { i32*, i32 }
%struct.TYPE_31__ = type { i32 }

@SA_BONUS = common dso_local global i64 0, align 8
@SPA_OLD_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@DMU_OT_ZNODE = common dso_local global i64 0, align 8
@DMU_OT_SA = common dso_local global i64 0, align 8
@SA_SPILL = common dso_local global i64 0, align 8
@SA_BLKPTR_SPACE = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@SA_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*, %struct.TYPE_34__*, i32, i32*)* @sa_build_layouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa_build_layouts(%struct.TYPE_33__* %0, %struct.TYPE_34__* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_33__*, align 8
  %7 = alloca %struct.TYPE_34__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_30__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_32__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca %struct.TYPE_31__*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i32, align 4
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %6, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %32 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_35__*, %struct.TYPE_35__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_30__*, %struct.TYPE_30__** %35, align 8
  store %struct.TYPE_30__* %36, %struct.TYPE_30__** %10, align 8
  store i32 0, i32* %22, align 4
  %37 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_28__*, %struct.TYPE_28__** %38, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @dmu_buf_will_dirty(%struct.TYPE_28__* %39, i32* %40)
  %42 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %42, i32 0, i32 4
  %44 = load %struct.TYPE_28__*, %struct.TYPE_28__** %43, align 8
  %45 = call i64 @SA_BONUSTYPE_FROM_DB(%struct.TYPE_28__* %44)
  store i64 %45, i64* %24, align 8
  %46 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %46, i32 0, i32 4
  %48 = load %struct.TYPE_28__*, %struct.TYPE_28__** %47, align 8
  %49 = call i32 @dmu_object_dnsize_from_db(%struct.TYPE_28__* %48, i32* %20)
  %50 = load i32, i32* %20, align 4
  %51 = call i32 @DN_BONUS_SIZE(i32 %50)
  store i32 %51, i32* %28, align 4
  %52 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %52, i32 0, i32 4
  %54 = load %struct.TYPE_28__*, %struct.TYPE_28__** %53, align 8
  %55 = call i32 @dmu_object_dnsize_from_db(%struct.TYPE_28__* %54, i32* %20)
  %56 = load i32, i32* %20, align 4
  %57 = call i32 @DN_BONUS_SIZE(i32 %56)
  store i32 %57, i32* %28, align 4
  %58 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %61, i32 0, i32 4
  %63 = load %struct.TYPE_28__*, %struct.TYPE_28__** %62, align 8
  %64 = load i64, i64* @SA_BONUS, align 8
  %65 = load i32, i32* %28, align 4
  %66 = call i32 @sa_find_sizes(%struct.TYPE_30__* %58, %struct.TYPE_34__* %59, i32 %60, %struct.TYPE_28__* %63, i64 %64, i32 %65, i32* %18, i32* %23, i64* %29)
  store i32 %66, i32* %21, align 4
  %67 = load i32, i32* %23, align 4
  %68 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %4
  %71 = load i32, i32* @EFBIG, align 4
  %72 = call i32 @SET_ERROR(i32 %71)
  store i32 %72, i32* %5, align 4
  br label %556

73:                                               ; preds = %4
  %74 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_28__*, %struct.TYPE_28__** %75, align 8
  %77 = load i64, i64* %29, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load i32, i32* %28, align 4
  %81 = sext i32 %80 to i64
  %82 = sub i64 %81, 4
  %83 = trunc i64 %82 to i32
  %84 = load i32, i32* %23, align 4
  %85 = load i32, i32* %21, align 4
  %86 = add nsw i32 %84, %85
  %87 = call i32 @MIN(i32 %83, i32 %86)
  br label %92

88:                                               ; preds = %73
  %89 = load i32, i32* %23, align 4
  %90 = load i32, i32* %21, align 4
  %91 = add nsw i32 %89, %90
  br label %92

92:                                               ; preds = %88, %79
  %93 = phi i32 [ %87, %79 ], [ %91, %88 ]
  %94 = load i32*, i32** %9, align 8
  %95 = call i64 @dmu_set_bonus(%struct.TYPE_28__* %76, i32 %93, i32* %94)
  %96 = icmp eq i64 0, %95
  %97 = zext i1 %96 to i32
  %98 = call i32 @VERIFY(i32 %97)
  %99 = load i64, i64* %24, align 8
  %100 = load i64, i64* @DMU_OT_ZNODE, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %92
  %103 = load i64, i64* %29, align 8
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %109, label %105

105:                                              ; preds = %102, %92
  %106 = load i64, i64* %24, align 8
  %107 = load i64, i64* @DMU_OT_SA, align 8
  %108 = icmp eq i64 %106, %107
  br label %109

109:                                              ; preds = %105, %102
  %110 = phi i1 [ true, %102 ], [ %108, %105 ]
  %111 = zext i1 %110 to i32
  %112 = call i32 @ASSERT(i32 %111)
  %113 = load i64, i64* %29, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %188

115:                                              ; preds = %109
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %117 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_28__*, %struct.TYPE_28__** %117, align 8
  %119 = icmp eq %struct.TYPE_28__* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %115
  %121 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %121, i32 0, i32 4
  %123 = load %struct.TYPE_28__*, %struct.TYPE_28__** %122, align 8
  %124 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %125 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %124, i32 0, i32 2
  %126 = call i64 @dmu_spill_hold_by_bonus(%struct.TYPE_28__* %123, i32* null, %struct.TYPE_28__** %125)
  %127 = icmp eq i64 %126, 0
  %128 = zext i1 %127 to i32
  %129 = call i32 @VERIFY(i32 %128)
  br label %130

130:                                              ; preds = %120, %115
  %131 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %131, i32 0, i32 2
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %132, align 8
  %134 = load i32*, i32** %9, align 8
  %135 = call i32 @dmu_buf_will_dirty(%struct.TYPE_28__* %133, i32* %134)
  %136 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %137 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %138 = load i32, i32* %18, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %137, i64 %139
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %18, align 4
  %143 = sub nsw i32 %141, %142
  %144 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_28__*, %struct.TYPE_28__** %145, align 8
  %147 = load i64, i64* @SA_SPILL, align 8
  %148 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %148, i32 0, i32 2
  %150 = load %struct.TYPE_28__*, %struct.TYPE_28__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @sa_find_sizes(%struct.TYPE_30__* %136, %struct.TYPE_34__* %140, i32 %143, %struct.TYPE_28__* %146, i64 %147, i32 %152, i32* %18, i32* %27, i64* %30)
  store i32 %153, i32* %22, align 4
  %154 = load i32, i32* %27, align 4
  %155 = load i32, i32* @SPA_OLD_MAXBLOCKSIZE, align 4
  %156 = icmp sgt i32 %154, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %130
  %158 = load i32, i32* @EFBIG, align 4
  %159 = call i32 @SET_ERROR(i32 %158)
  store i32 %159, i32* %5, align 4
  br label %556

160:                                              ; preds = %130
  %161 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %161, i32 0, i32 2
  %163 = load %struct.TYPE_28__*, %struct.TYPE_28__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* %22, align 4
  %167 = sub nsw i32 %165, %166
  store i32 %167, i32* %15, align 4
  %168 = load i32, i32* %27, align 4
  %169 = load i32, i32* %22, align 4
  %170 = call i32 @BUF_SPACE_NEEDED(i32 %168, i32 %169)
  %171 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %171, i32 0, i32 2
  %173 = load %struct.TYPE_28__*, %struct.TYPE_28__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = icmp sgt i32 %170, %175
  br i1 %176, label %177, label %187

177:                                              ; preds = %160
  %178 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %179 = load i32, i32* %27, align 4
  %180 = load i32, i32* %22, align 4
  %181 = call i32 @BUF_SPACE_NEEDED(i32 %179, i32 %180)
  %182 = load i32*, i32** %9, align 8
  %183 = call i64 @sa_resize_spill(%struct.TYPE_33__* %178, i32 %181, i32* %182)
  %184 = icmp eq i64 0, %183
  %185 = zext i1 %184 to i32
  %186 = call i32 @VERIFY(i32 %185)
  br label %187

187:                                              ; preds = %177, %160
  br label %188

188:                                              ; preds = %187, %109
  %189 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %189, i32 0, i32 4
  %191 = load %struct.TYPE_28__*, %struct.TYPE_28__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i32, i32* %21, align 4
  %195 = sext i32 %194 to i64
  %196 = add i64 %193, %195
  %197 = inttoptr i64 %196 to i8*
  store i8* %197, i8** %14, align 8
  %198 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %198, i32 0, i32 4
  %200 = load %struct.TYPE_28__*, %struct.TYPE_28__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %200, i32 0, i32 1
  %202 = load i64, i64* %201, align 8
  %203 = inttoptr i64 %202 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %203, %struct.TYPE_32__** %13, align 8
  %204 = load i64, i64* @SA_BONUS, align 8
  store i64 %204, i64* %12, align 8
  %205 = load i64, i64* %29, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %219

207:                                              ; preds = %188
  %208 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %209 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %207
  br label %217

213:                                              ; preds = %207
  %214 = load i32, i32* @SA_BLKPTR_SPACE, align 4
  %215 = load i32, i32* %21, align 4
  %216 = sub nsw i32 %214, %215
  br label %217

217:                                              ; preds = %213, %212
  %218 = phi i32 [ 0, %212 ], [ %216, %213 ]
  store i32 %218, i32* %15, align 4
  br label %227

219:                                              ; preds = %188
  %220 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %220, i32 0, i32 4
  %222 = load %struct.TYPE_28__*, %struct.TYPE_28__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* %21, align 4
  %226 = sub nsw i32 %224, %225
  store i32 %226, i32* %15, align 4
  br label %227

227:                                              ; preds = %219, %217
  %228 = load i32, i32* %8, align 4
  %229 = sext i32 %228 to i64
  %230 = mul i64 8, %229
  %231 = trunc i64 %230 to i32
  %232 = load i32, i32* @KM_SLEEP, align 4
  %233 = call i64* @kmem_alloc(i32 %231, i32 %232)
  store i64* %233, i64** %16, align 8
  store i64* %233, i64** %17, align 8
  store i32 0, i32* %19, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %26, align 4
  store i64 -1, i64* %11, align 8
  br label %234

234:                                              ; preds = %427, %227
  %235 = load i32, i32* %18, align 4
  %236 = load i32, i32* %8, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %430

238:                                              ; preds = %234
  %239 = load i8*, i8** %14, align 8
  %240 = ptrtoint i8* %239 to i32
  %241 = call i32 @IS_P2ALIGNED(i32 %240, i32 8)
  %242 = call i32 @ASSERT(i32 %241)
  %243 = load i32, i32* %15, align 4
  %244 = call i32 @IS_P2ALIGNED(i32 %243, i32 8)
  %245 = call i32 @ASSERT(i32 %244)
  %246 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %247 = load i32, i32* %18, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %246, i64 %248
  %250 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i64*, i64** %16, align 8
  %253 = load i32, i32* %18, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  store i64 %251, i64* %255, align 8
  %256 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %257 = load i64*, i64** %16, align 8
  %258 = load i32, i32* %18, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i64, i64* %257, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = call i32 @SA_REGISTERED_LEN(%struct.TYPE_30__* %256, i64 %261)
  store i32 %262, i32* %31, align 4
  %263 = load i32, i32* %31, align 4
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %272

265:                                              ; preds = %238
  %266 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %267 = load i32, i32* %18, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %266, i64 %268
  %270 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  store i32 %271, i32* %31, align 4
  br label %283

272:                                              ; preds = %238
  %273 = load i32, i32* %31, align 4
  %274 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %275 = load i32, i32* %18, align 4
  %276 = sext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %277, i32 0, i32 1
  %279 = load i32, i32* %278, align 8
  %280 = icmp eq i32 %273, %279
  %281 = zext i1 %280 to i32
  %282 = call i32 @VERIFY(i32 %281)
  br label %283

283:                                              ; preds = %272, %265
  %284 = load i32, i32* %15, align 4
  %285 = load i32, i32* %31, align 4
  %286 = icmp slt i32 %284, %285
  br i1 %286, label %287, label %347

287:                                              ; preds = %283
  %288 = load i64, i64* %29, align 8
  %289 = trunc i64 %288 to i32
  %290 = call i32 @VERIFY(i32 %289)
  %291 = load i64, i64* %24, align 8
  %292 = load i64, i64* @DMU_OT_SA, align 8
  %293 = icmp eq i64 %291, %292
  %294 = zext i1 %293 to i32
  %295 = call i32 @VERIFY(i32 %294)
  %296 = load i64, i64* %12, align 8
  %297 = load i64, i64* @SA_BONUS, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %299, label %319

299:                                              ; preds = %287
  %300 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %301 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %300, i32 0, i32 0
  %302 = load i64, i64* %301, align 8
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %319, label %304

304:                                              ; preds = %299
  %305 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %306 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %305, i32 0, i32 0
  %307 = load %struct.TYPE_35__*, %struct.TYPE_35__** %306, align 8
  %308 = load i64, i64* %11, align 8
  %309 = load i64*, i64** %17, align 8
  %310 = load i32, i32* %19, align 4
  %311 = load i32*, i32** %9, align 8
  %312 = call i32 @sa_find_layout(%struct.TYPE_35__* %307, i64 %308, i64* %309, i32 %310, i32* %311, %struct.TYPE_31__** %25)
  %313 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %314 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %315 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %314, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = load i32, i32* %21, align 4
  %318 = call i32 @SA_SET_HDR(%struct.TYPE_32__* %313, i32 %316, i32 %317)
  br label %319

319:                                              ; preds = %304, %299, %287
  %320 = load i64, i64* @SA_SPILL, align 8
  store i64 %320, i64* %12, align 8
  store i64 -1, i64* %11, align 8
  store i32 0, i32* %26, align 4
  %321 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %322 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %321, i32 0, i32 2
  %323 = load %struct.TYPE_28__*, %struct.TYPE_28__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = inttoptr i64 %325 to %struct.TYPE_32__*
  store %struct.TYPE_32__* %326, %struct.TYPE_32__** %13, align 8
  %327 = load i32, i32* @SA_MAGIC, align 4
  %328 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %329 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %328, i32 0, i32 1
  store i32 %327, i32* %329, align 8
  %330 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %331 = ptrtoint %struct.TYPE_32__* %330 to i64
  %332 = load i32, i32* %22, align 4
  %333 = sext i32 %332 to i64
  %334 = add i64 %331, %333
  %335 = inttoptr i64 %334 to i8*
  store i8* %335, i8** %14, align 8
  %336 = load i64*, i64** %16, align 8
  %337 = load i32, i32* %18, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i64, i64* %336, i64 %338
  store i64* %339, i64** %17, align 8
  %340 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %341 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %340, i32 0, i32 2
  %342 = load %struct.TYPE_28__*, %struct.TYPE_28__** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 8
  %345 = load i32, i32* %22, align 4
  %346 = sub nsw i32 %344, %345
  store i32 %346, i32* %15, align 4
  store i32 0, i32* %19, align 4
  br label %347

347:                                              ; preds = %319, %283
  %348 = load i64*, i64** %16, align 8
  %349 = load i32, i32* %18, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds i64, i64* %348, i64 %350
  %352 = load i64, i64* %351, align 8
  %353 = call i64 @SA_ATTR_HASH(i64 %352)
  %354 = load i64, i64* %11, align 8
  %355 = xor i64 %354, %353
  store i64 %355, i64* %11, align 8
  %356 = load i8*, i8** %14, align 8
  %357 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %358 = load i32, i32* %18, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %357, i64 %359
  %361 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %360, i32 0, i32 5
  store i8* %356, i8** %361, align 8
  %362 = load i32, i32* %31, align 4
  %363 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %364 = load i32, i32* %18, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %363, i64 %365
  %367 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %366, i32 0, i32 2
  store i32 %362, i32* %367, align 4
  %368 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %369 = load i32, i32* %18, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %371, i32 0, i32 4
  %373 = load i32, i32* %372, align 4
  %374 = load %struct.TYPE_34__*, %struct.TYPE_34__** %7, align 8
  %375 = load i32, i32* %18, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %374, i64 %376
  %378 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %377, i32 0, i32 3
  %379 = load i32, i32* %378, align 8
  %380 = load i8*, i8** %14, align 8
  %381 = load i32, i32* %31, align 4
  %382 = call i32 @SA_COPY_DATA(i32 %373, i32 %379, i8* %380, i32 %381)
  %383 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %384 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %383, i32 0, i32 1
  %385 = load %struct.TYPE_29__*, %struct.TYPE_29__** %384, align 8
  %386 = load i64*, i64** %16, align 8
  %387 = load i32, i32* %18, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i64, i64* %386, i64 %388
  %390 = load i64, i64* %389, align 8
  %391 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %385, i64 %390
  %392 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %391, i32 0, i32 0
  %393 = load i64, i64* %392, align 8
  %394 = icmp eq i64 %393, 0
  br i1 %394, label %395, label %404

395:                                              ; preds = %347
  %396 = load i32, i32* %31, align 4
  %397 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %398 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %397, i32 0, i32 0
  %399 = load i32*, i32** %398, align 8
  %400 = load i32, i32* %26, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %26, align 4
  %402 = sext i32 %400 to i64
  %403 = getelementptr inbounds i32, i32* %399, i64 %402
  store i32 %396, i32* %403, align 4
  br label %404

404:                                              ; preds = %395, %347
  %405 = load i8*, i8** %14, align 8
  %406 = ptrtoint i8* %405 to i64
  %407 = urem i64 %406, 8
  %408 = icmp eq i64 %407, 0
  %409 = zext i1 %408 to i32
  %410 = call i32 @VERIFY(i32 %409)
  %411 = load i8*, i8** %14, align 8
  %412 = ptrtoint i8* %411 to i64
  %413 = load i32, i32* %31, align 4
  %414 = sext i32 %413 to i64
  %415 = add i64 %412, %414
  %416 = trunc i64 %415 to i32
  %417 = call i64 @P2ROUNDUP(i32 %416, i32 8)
  %418 = inttoptr i64 %417 to i8*
  store i8* %418, i8** %14, align 8
  %419 = load i32, i32* %31, align 4
  %420 = call i64 @P2ROUNDUP(i32 %419, i32 8)
  %421 = load i32, i32* %15, align 4
  %422 = sext i32 %421 to i64
  %423 = sub nsw i64 %422, %420
  %424 = trunc i64 %423 to i32
  store i32 %424, i32* %15, align 4
  %425 = load i32, i32* %19, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %19, align 4
  br label %427

427:                                              ; preds = %404
  %428 = load i32, i32* %18, align 4
  %429 = add nsw i32 %428, 1
  store i32 %429, i32* %18, align 4
  br label %234

430:                                              ; preds = %234
  %431 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %432 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %431, i32 0, i32 0
  %433 = load %struct.TYPE_35__*, %struct.TYPE_35__** %432, align 8
  %434 = load i64, i64* %11, align 8
  %435 = load i64*, i64** %17, align 8
  %436 = load i32, i32* %19, align 4
  %437 = load i32*, i32** %9, align 8
  %438 = call i32 @sa_find_layout(%struct.TYPE_35__* %433, i64 %434, i64* %435, i32 %436, i32* %437, %struct.TYPE_31__** %25)
  %439 = load i64, i64* %24, align 8
  %440 = load i64, i64* @DMU_OT_ZNODE, align 8
  %441 = icmp eq i64 %439, %440
  br i1 %441, label %442, label %447

442:                                              ; preds = %430
  %443 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %444 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 4
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %458, label %447

447:                                              ; preds = %442, %430
  %448 = load i64, i64* %24, align 8
  %449 = load i64, i64* @DMU_OT_SA, align 8
  %450 = icmp eq i64 %448, %449
  br i1 %450, label %451, label %456

451:                                              ; preds = %447
  %452 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %453 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %452, i32 0, i32 0
  %454 = load i32, i32* %453, align 4
  %455 = icmp sgt i32 %454, 1
  br label %456

456:                                              ; preds = %451, %447
  %457 = phi i1 [ false, %447 ], [ %455, %451 ]
  br label %458

458:                                              ; preds = %456, %442
  %459 = phi i1 [ true, %442 ], [ %457, %456 ]
  %460 = zext i1 %459 to i32
  %461 = call i32 @VERIFY(i32 %460)
  %462 = load i64, i64* %24, align 8
  %463 = load i64, i64* @DMU_OT_SA, align 8
  %464 = icmp eq i64 %462, %463
  br i1 %464, label %465, label %480

465:                                              ; preds = %458
  %466 = load %struct.TYPE_32__*, %struct.TYPE_32__** %13, align 8
  %467 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  %468 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %467, i32 0, i32 0
  %469 = load i32, i32* %468, align 4
  %470 = load i64, i64* %12, align 8
  %471 = load i64, i64* @SA_BONUS, align 8
  %472 = icmp eq i64 %470, %471
  br i1 %472, label %473, label %475

473:                                              ; preds = %465
  %474 = load i32, i32* %21, align 4
  br label %477

475:                                              ; preds = %465
  %476 = load i32, i32* %22, align 4
  br label %477

477:                                              ; preds = %475, %473
  %478 = phi i32 [ %474, %473 ], [ %476, %475 ]
  %479 = call i32 @SA_SET_HDR(%struct.TYPE_32__* %466, i32 %469, i32 %478)
  br label %480

480:                                              ; preds = %477, %458
  %481 = load i64*, i64** %16, align 8
  %482 = load i32, i32* %8, align 4
  %483 = sext i32 %482 to i64
  %484 = mul i64 8, %483
  %485 = trunc i64 %484 to i32
  %486 = call i32 @kmem_free(i64* %481, i32 %485)
  %487 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %488 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %487, i32 0, i32 3
  %489 = load i32*, i32** %488, align 8
  %490 = icmp ne i32* %489, null
  br i1 %490, label %491, label %501

491:                                              ; preds = %480
  %492 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %493 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %492, i32 0, i32 0
  %494 = load %struct.TYPE_35__*, %struct.TYPE_35__** %493, align 8
  %495 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %496 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %495, i32 0, i32 3
  %497 = load i32*, i32** %496, align 8
  %498 = call i32 @sa_idx_tab_rele(%struct.TYPE_35__* %494, i32* %497)
  %499 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %500 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %499, i32 0, i32 3
  store i32* null, i32** %500, align 8
  br label %501

501:                                              ; preds = %491, %480
  %502 = load %struct.TYPE_30__*, %struct.TYPE_30__** %10, align 8
  %503 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %502, i32 0, i32 0
  %504 = load i64, i64* %503, align 8
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %513, label %506

506:                                              ; preds = %501
  %507 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %508 = load i64, i64* @SA_BONUS, align 8
  %509 = call i64 @sa_build_index(%struct.TYPE_33__* %507, i64 %508)
  %510 = icmp eq i64 0, %509
  %511 = zext i1 %510 to i32
  %512 = call i32 @VERIFY(i32 %511)
  br label %513

513:                                              ; preds = %506, %501
  %514 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %515 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %514, i32 0, i32 2
  %516 = load %struct.TYPE_28__*, %struct.TYPE_28__** %515, align 8
  %517 = icmp ne %struct.TYPE_28__* %516, null
  br i1 %517, label %518, label %555

518:                                              ; preds = %513
  %519 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %520 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %519, i32 0, i32 0
  %521 = load %struct.TYPE_35__*, %struct.TYPE_35__** %520, align 8
  %522 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %523 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %522, i32 0, i32 1
  %524 = load i32*, i32** %523, align 8
  %525 = call i32 @sa_idx_tab_rele(%struct.TYPE_35__* %521, i32* %524)
  %526 = load i64, i64* %29, align 8
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %547, label %528

528:                                              ; preds = %518
  %529 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %530 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %529, i32 0, i32 2
  %531 = load %struct.TYPE_28__*, %struct.TYPE_28__** %530, align 8
  %532 = call i32 @dmu_buf_rele(%struct.TYPE_28__* %531, i32* null)
  %533 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %534 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %533, i32 0, i32 2
  store %struct.TYPE_28__* null, %struct.TYPE_28__** %534, align 8
  %535 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %536 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %535, i32 0, i32 1
  store i32* null, i32** %536, align 8
  %537 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %538 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %537, i32 0, i32 0
  %539 = load %struct.TYPE_35__*, %struct.TYPE_35__** %538, align 8
  %540 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %541 = call i32 @sa_handle_object(%struct.TYPE_33__* %540)
  %542 = load i32*, i32** %9, align 8
  %543 = call i64 @dmu_rm_spill(%struct.TYPE_35__* %539, i32 %541, i32* %542)
  %544 = icmp eq i64 0, %543
  %545 = zext i1 %544 to i32
  %546 = call i32 @VERIFY(i32 %545)
  br label %554

547:                                              ; preds = %518
  %548 = load %struct.TYPE_33__*, %struct.TYPE_33__** %6, align 8
  %549 = load i64, i64* @SA_SPILL, align 8
  %550 = call i64 @sa_build_index(%struct.TYPE_33__* %548, i64 %549)
  %551 = icmp eq i64 0, %550
  %552 = zext i1 %551 to i32
  %553 = call i32 @VERIFY(i32 %552)
  br label %554

554:                                              ; preds = %547, %528
  br label %555

555:                                              ; preds = %554, %513
  store i32 0, i32* %5, align 4
  br label %556

556:                                              ; preds = %555, %157, %70
  %557 = load i32, i32* %5, align 4
  ret i32 %557
}

declare dso_local i32 @dmu_buf_will_dirty(%struct.TYPE_28__*, i32*) #1

declare dso_local i64 @SA_BONUSTYPE_FROM_DB(%struct.TYPE_28__*) #1

declare dso_local i32 @dmu_object_dnsize_from_db(%struct.TYPE_28__*, i32*) #1

declare dso_local i32 @DN_BONUS_SIZE(i32) #1

declare dso_local i32 @sa_find_sizes(%struct.TYPE_30__*, %struct.TYPE_34__*, i32, %struct.TYPE_28__*, i64, i32, i32*, i32*, i64*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @dmu_set_bonus(%struct.TYPE_28__*, i32, i32*) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @dmu_spill_hold_by_bonus(%struct.TYPE_28__*, i32*, %struct.TYPE_28__**) #1

declare dso_local i32 @BUF_SPACE_NEEDED(i32, i32) #1

declare dso_local i64 @sa_resize_spill(%struct.TYPE_33__*, i32, i32*) #1

declare dso_local i64* @kmem_alloc(i32, i32) #1

declare dso_local i32 @IS_P2ALIGNED(i32, i32) #1

declare dso_local i32 @SA_REGISTERED_LEN(%struct.TYPE_30__*, i64) #1

declare dso_local i32 @sa_find_layout(%struct.TYPE_35__*, i64, i64*, i32, i32*, %struct.TYPE_31__**) #1

declare dso_local i32 @SA_SET_HDR(%struct.TYPE_32__*, i32, i32) #1

declare dso_local i64 @SA_ATTR_HASH(i64) #1

declare dso_local i32 @SA_COPY_DATA(i32, i32, i8*, i32) #1

declare dso_local i64 @P2ROUNDUP(i32, i32) #1

declare dso_local i32 @kmem_free(i64*, i32) #1

declare dso_local i32 @sa_idx_tab_rele(%struct.TYPE_35__*, i32*) #1

declare dso_local i64 @sa_build_index(%struct.TYPE_33__*, i64) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_28__*, i32*) #1

declare dso_local i64 @dmu_rm_spill(%struct.TYPE_35__*, i32, i32*) #1

declare dso_local i32 @sa_handle_object(%struct.TYPE_33__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
