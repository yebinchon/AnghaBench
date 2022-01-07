; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_prop_validate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_prop_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@B_FALSE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DATA_TYPE_UINT64 = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@SPA_VERSION_BEFORE_FEATURES = common dso_local global i32 0, align 4
@SPA_VERSION_BOOTFS = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DMU_OST_ZFS = common dso_local global i32 0, align 4
@ZFS_PROP_COMPRESSION = common dso_local global i32 0, align 4
@ZIO_FAILURE_MODE_WAIT = common dso_local global i32 0, align 4
@ZIO_FAILURE_MODE_PANIC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"/.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"/..\00", align 1
@ZPROP_MAX_COMMENT = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@SPA_VERSION_DEDUP = common dso_local global i32 0, align 4
@ZIO_DEDUPDITTO_MIN = common dso_local global i32 0, align 4
@DATA_TYPE_STRING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32*)* @spa_prop_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_prop_validate(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %19 = load i32, i32* @B_FALSE, align 4
  store i32 %19, i32* %9, align 4
  store i32* null, i32** %5, align 8
  br label %20

20:                                               ; preds = %318, %2
  %21 = load i32*, i32** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i32* @nvlist_next_nvpair(i32* %21, i32* %22)
  store i32* %23, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %319

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = call i8* @nvpair_name(i32* %26)
  store i8* %27, i8** %15, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = call i32 @zpool_name_to_prop(i8* %28)
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  switch i32 %30, label %314 [
    i32 130, label %31
    i32 128, label %73
    i32 132, label %94
    i32 137, label %94
    i32 129, label %94
    i32 138, label %94
    i32 136, label %106
    i32 131, label %177
    i32 135, label %207
    i32 134, label %257
    i32 133, label %289
  ]

31:                                               ; preds = %25
  %32 = load i8*, i8** %15, align 8
  %33 = call i32 @zpool_prop_feature(i8* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  %37 = call i32 @SET_ERROR(i32 %36)
  store i32 %37, i32* %6, align 4
  br label %314

38:                                               ; preds = %31
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @nvpair_type(i32* %39)
  %41 = load i32, i32* @DATA_TYPE_UINT64, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* @EINVAL, align 4
  %45 = call i32 @SET_ERROR(i32 %44)
  store i32 %45, i32* %6, align 4
  br label %314

46:                                               ; preds = %38
  %47 = load i32*, i32** %5, align 8
  %48 = call i32 @nvpair_value_uint64(i32* %47, i32* %10)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* @EINVAL, align 4
  %52 = call i32 @SET_ERROR(i32 %51)
  store i32 %52, i32* %6, align 4
  br label %314

53:                                               ; preds = %46
  %54 = load i32, i32* %10, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %53
  %57 = load i32, i32* @EINVAL, align 4
  %58 = call i32 @SET_ERROR(i32 %57)
  store i32 %58, i32* %6, align 4
  br label %314

59:                                               ; preds = %53
  %60 = load i8*, i8** %15, align 8
  %61 = call i32 @strchr(i8* %60, i8 signext 64)
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  store i8* %64, i8** %14, align 8
  %65 = load i8*, i8** %14, align 8
  %66 = call i32 @zfeature_lookup_name(i8* %65, i32* null)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* @EINVAL, align 4
  %70 = call i32 @SET_ERROR(i32 %69)
  store i32 %70, i32* %6, align 4
  br label %314

71:                                               ; preds = %59
  %72 = load i32, i32* @B_TRUE, align 4
  store i32 %72, i32* %9, align 4
  br label %314

73:                                               ; preds = %25
  %74 = load i32*, i32** %5, align 8
  %75 = call i32 @nvpair_value_uint64(i32* %74, i32* %10)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %10, align 4
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %81 = call i32 @spa_version(%struct.TYPE_5__* %80)
  %82 = icmp slt i32 %79, %81
  br i1 %82, label %90, label %83

83:                                               ; preds = %78
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @SPA_VERSION_BEFORE_FEATURES, align 4
  %86 = icmp sgt i32 %84, %85
  br i1 %86, label %90, label %87

87:                                               ; preds = %83
  %88 = load i32, i32* %9, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %87, %83, %78
  %91 = load i32, i32* @EINVAL, align 4
  %92 = call i32 @SET_ERROR(i32 %91)
  store i32 %92, i32* %6, align 4
  br label %93

93:                                               ; preds = %90, %87, %73
  br label %314

94:                                               ; preds = %25, %25, %25, %25
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @nvpair_value_uint64(i32* %95, i32* %10)
  store i32 %96, i32* %6, align 4
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* %10, align 4
  %101 = icmp sgt i32 %100, 1
  br i1 %101, label %102, label %105

102:                                              ; preds = %99
  %103 = load i32, i32* @EINVAL, align 4
  %104 = call i32 @SET_ERROR(i32 %103)
  store i32 %104, i32* %6, align 4
  br label %105

105:                                              ; preds = %102, %99, %94
  br label %314

106:                                              ; preds = %25
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = call i32 @spa_version(%struct.TYPE_5__* %107)
  %109 = load i32, i32* @SPA_VERSION_BOOTFS, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* @ENOTSUP, align 4
  %113 = call i32 @SET_ERROR(i32 %112)
  store i32 %113, i32* %6, align 4
  br label %314

114:                                              ; preds = %106
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @vdev_is_bootable(i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* @ENOTSUP, align 4
  %122 = call i32 @SET_ERROR(i32 %121)
  store i32 %122, i32* %6, align 4
  br label %314

123:                                              ; preds = %114
  store i32 1, i32* %7, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = call i32 @nvpair_value_string(i32* %124, i8** %11)
  store i32 %125, i32* %6, align 4
  %126 = load i32, i32* %6, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %176, label %128

128:                                              ; preds = %123
  %129 = load i8*, i8** %11, align 8
  %130 = icmp eq i8* %129, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %128
  %132 = load i8*, i8** %11, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 0
  %134 = load i8, i8* %133, align 1
  %135 = sext i8 %134 to i32
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131, %128
  %138 = call i32 @zpool_prop_default_numeric(i32 136)
  store i32 %138, i32* %8, align 4
  br label %314

139:                                              ; preds = %131
  %140 = load i8*, i8** %11, align 8
  %141 = load i32, i32* @FTAG, align 4
  %142 = call i32 @dmu_objset_hold(i8* %140, i32 %141, i32** %17)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %314

146:                                              ; preds = %139
  %147 = load i32*, i32** %17, align 8
  %148 = call i32 @dmu_objset_type(i32* %147)
  %149 = load i32, i32* @DMU_OST_ZFS, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %146
  %152 = load i32, i32* @ENOTSUP, align 4
  %153 = call i32 @SET_ERROR(i32 %152)
  store i32 %153, i32* %6, align 4
  br label %172

154:                                              ; preds = %146
  %155 = load i32*, i32** %17, align 8
  %156 = call i32 @dmu_objset_ds(i32* %155)
  %157 = load i32, i32* @ZFS_PROP_COMPRESSION, align 4
  %158 = call i32 @zfs_prop_to_name(i32 %157)
  %159 = call i32 @dsl_prop_get_int_ds(i32 %156, i32 %158, i32* %18)
  store i32 %159, i32* %6, align 4
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %154
  %162 = load i32, i32* %18, align 4
  %163 = call i32 @BOOTFS_COMPRESS_VALID(i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %161
  %166 = load i32, i32* @ENOTSUP, align 4
  %167 = call i32 @SET_ERROR(i32 %166)
  store i32 %167, i32* %6, align 4
  br label %171

168:                                              ; preds = %161, %154
  %169 = load i32*, i32** %17, align 8
  %170 = call i32 @dmu_objset_id(i32* %169)
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %168, %165
  br label %172

172:                                              ; preds = %171, %151
  %173 = load i32*, i32** %17, align 8
  %174 = load i32, i32* @FTAG, align 4
  %175 = call i32 @dmu_objset_rele(i32* %173, i32 %174)
  br label %176

176:                                              ; preds = %172, %123
  br label %314

177:                                              ; preds = %25
  %178 = load i32*, i32** %5, align 8
  %179 = call i32 @nvpair_value_uint64(i32* %178, i32* %10)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %6, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %193, label %182

182:                                              ; preds = %177
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* @ZIO_FAILURE_MODE_WAIT, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %190, label %186

186:                                              ; preds = %182
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* @ZIO_FAILURE_MODE_PANIC, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %186, %182
  %191 = load i32, i32* @EINVAL, align 4
  %192 = call i32 @SET_ERROR(i32 %191)
  store i32 %192, i32* %6, align 4
  br label %193

193:                                              ; preds = %190, %186, %177
  %194 = load i32, i32* %6, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %193
  %197 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %198 = call i32 @spa_suspended(%struct.TYPE_5__* %197)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %196
  %201 = load i32, i32* %10, align 4
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  store i32 %201, i32* %203, align 4
  %204 = load i32, i32* @EIO, align 4
  %205 = call i32 @SET_ERROR(i32 %204)
  store i32 %205, i32* %6, align 4
  br label %206

206:                                              ; preds = %200, %196, %193
  br label %314

207:                                              ; preds = %25
  %208 = load i32*, i32** %5, align 8
  %209 = call i32 @nvpair_value_string(i32* %208, i8** %11)
  store i32 %209, i32* %6, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  br label %314

212:                                              ; preds = %207
  %213 = load i8*, i8** %11, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 0
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %219

218:                                              ; preds = %212
  br label %314

219:                                              ; preds = %212
  %220 = load i8*, i8** %11, align 8
  %221 = call i32 @strcmp(i8* %220, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %219
  br label %314

224:                                              ; preds = %219
  %225 = load i8*, i8** %11, align 8
  %226 = getelementptr inbounds i8, i8* %225, i64 0
  %227 = load i8, i8* %226, align 1
  %228 = sext i8 %227 to i32
  %229 = icmp ne i32 %228, 47
  br i1 %229, label %230, label %233

230:                                              ; preds = %224
  %231 = load i32, i32* @EINVAL, align 4
  %232 = call i32 @SET_ERROR(i32 %231)
  store i32 %232, i32* %6, align 4
  br label %314

233:                                              ; preds = %224
  %234 = load i8*, i8** %11, align 8
  %235 = call i8* @strrchr(i8* %234, i8 signext 47)
  store i8* %235, i8** %12, align 8
  %236 = load i8*, i8** %12, align 8
  %237 = icmp ne i8* %236, null
  %238 = zext i1 %237 to i32
  %239 = call i32 @ASSERT(i32 %238)
  %240 = load i8*, i8** %12, align 8
  %241 = getelementptr inbounds i8, i8* %240, i64 1
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %253, label %245

245:                                              ; preds = %233
  %246 = load i8*, i8** %12, align 8
  %247 = call i32 @strcmp(i8* %246, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %253, label %249

249:                                              ; preds = %245
  %250 = load i8*, i8** %12, align 8
  %251 = call i32 @strcmp(i8* %250, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %249, %245, %233
  %254 = load i32, i32* @EINVAL, align 4
  %255 = call i32 @SET_ERROR(i32 %254)
  store i32 %255, i32* %6, align 4
  br label %256

256:                                              ; preds = %253, %249
  br label %314

257:                                              ; preds = %25
  %258 = load i32*, i32** %5, align 8
  %259 = call i32 @nvpair_value_string(i32* %258, i8** %11)
  store i32 %259, i32* %6, align 4
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %262

261:                                              ; preds = %257
  br label %314

262:                                              ; preds = %257
  %263 = load i8*, i8** %11, align 8
  store i8* %263, i8** %13, align 8
  br label %264

264:                                              ; preds = %278, %262
  %265 = load i8*, i8** %13, align 8
  %266 = load i8, i8* %265, align 1
  %267 = sext i8 %266 to i32
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %281

269:                                              ; preds = %264
  %270 = load i8*, i8** %13, align 8
  %271 = load i8, i8* %270, align 1
  %272 = sext i8 %271 to i32
  %273 = icmp sge i32 %272, 127
  br i1 %273, label %274, label %277

274:                                              ; preds = %269
  %275 = load i32, i32* @EINVAL, align 4
  %276 = call i32 @SET_ERROR(i32 %275)
  store i32 %276, i32* %6, align 4
  br label %281

277:                                              ; preds = %269
  br label %278

278:                                              ; preds = %277
  %279 = load i8*, i8** %13, align 8
  %280 = getelementptr inbounds i8, i8* %279, i32 1
  store i8* %280, i8** %13, align 8
  br label %264

281:                                              ; preds = %274, %264
  %282 = load i8*, i8** %11, align 8
  %283 = call i32 @strlen(i8* %282)
  %284 = load i32, i32* @ZPROP_MAX_COMMENT, align 4
  %285 = icmp sgt i32 %283, %284
  br i1 %285, label %286, label %288

286:                                              ; preds = %281
  %287 = load i32, i32* @E2BIG, align 4
  store i32 %287, i32* %6, align 4
  br label %288

288:                                              ; preds = %286, %281
  br label %314

289:                                              ; preds = %25
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %291 = call i32 @spa_version(%struct.TYPE_5__* %290)
  %292 = load i32, i32* @SPA_VERSION_DEDUP, align 4
  %293 = icmp slt i32 %291, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %289
  %295 = load i32, i32* @ENOTSUP, align 4
  %296 = call i32 @SET_ERROR(i32 %295)
  store i32 %296, i32* %6, align 4
  br label %300

297:                                              ; preds = %289
  %298 = load i32*, i32** %5, align 8
  %299 = call i32 @nvpair_value_uint64(i32* %298, i32* %10)
  store i32 %299, i32* %6, align 4
  br label %300

300:                                              ; preds = %297, %294
  %301 = load i32, i32* %6, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %303, label %313

303:                                              ; preds = %300
  %304 = load i32, i32* %10, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %303
  %307 = load i32, i32* %10, align 4
  %308 = load i32, i32* @ZIO_DEDUPDITTO_MIN, align 4
  %309 = icmp slt i32 %307, %308
  br i1 %309, label %310, label %313

310:                                              ; preds = %306
  %311 = load i32, i32* @EINVAL, align 4
  %312 = call i32 @SET_ERROR(i32 %311)
  store i32 %312, i32* %6, align 4
  br label %313

313:                                              ; preds = %310, %306, %303, %300
  br label %314

314:                                              ; preds = %25, %313, %288, %261, %256, %230, %223, %218, %211, %206, %176, %145, %137, %120, %111, %105, %93, %71, %68, %56, %50, %43, %35
  %315 = load i32, i32* %6, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %318

317:                                              ; preds = %314
  br label %319

318:                                              ; preds = %314
  br label %20

319:                                              ; preds = %317, %20
  %320 = load i32, i32* %6, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %338, label %322

322:                                              ; preds = %319
  %323 = load i32, i32* %7, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %338

325:                                              ; preds = %322
  %326 = load i32*, i32** %4, align 8
  %327 = call i32 @zpool_prop_to_name(i32 136)
  %328 = load i32, i32* @DATA_TYPE_STRING, align 4
  %329 = call i32 @nvlist_remove(i32* %326, i32 %327, i32 %328)
  store i32 %329, i32* %6, align 4
  %330 = load i32, i32* %6, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %337, label %332

332:                                              ; preds = %325
  %333 = load i32*, i32** %4, align 8
  %334 = call i32 @zpool_prop_to_name(i32 136)
  %335 = load i32, i32* %8, align 4
  %336 = call i32 @nvlist_add_uint64(i32* %333, i32 %334, i32 %335)
  store i32 %336, i32* %6, align 4
  br label %337

337:                                              ; preds = %332, %325
  br label %338

338:                                              ; preds = %337, %322, %319
  %339 = load i32, i32* %6, align 4
  ret i32 %339
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @zpool_name_to_prop(i8*) #1

declare dso_local i32 @zpool_prop_feature(i8*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i32 @nvpair_value_uint64(i32*, i32*) #1

declare dso_local i32 @strchr(i8*, i8 signext) #1

declare dso_local i32 @zfeature_lookup_name(i8*, i32*) #1

declare dso_local i32 @spa_version(%struct.TYPE_5__*) #1

declare dso_local i32 @vdev_is_bootable(i32) #1

declare dso_local i32 @nvpair_value_string(i32*, i8**) #1

declare dso_local i32 @zpool_prop_default_numeric(i32) #1

declare dso_local i32 @dmu_objset_hold(i8*, i32, i32**) #1

declare dso_local i32 @dmu_objset_type(i32*) #1

declare dso_local i32 @dsl_prop_get_int_ds(i32, i32, i32*) #1

declare dso_local i32 @dmu_objset_ds(i32*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @BOOTFS_COMPRESS_VALID(i32) #1

declare dso_local i32 @dmu_objset_id(i32*) #1

declare dso_local i32 @dmu_objset_rele(i32*, i32) #1

declare dso_local i32 @spa_suspended(%struct.TYPE_5__*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i8* @strrchr(i8*, i8 signext) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @nvlist_remove(i32*, i32, i32) #1

declare dso_local i32 @zpool_prop_to_name(i32) #1

declare dso_local i32 @nvlist_add_uint64(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
