; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_label_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_label.c_vdev_label_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i32, i64, i64, i64, i64, i64, i32, i32, %struct.TYPE_23__*, %struct.TYPE_21__*, %struct.TYPE_23__**, %struct.TYPE_26__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_26__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_24__ = type { i8* }
%struct.TYPE_25__ = type { i64 }

@ZIO_FLAG_CONFIG_WRITER = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@SCL_ALL = common dso_local global i64 0, align 8
@RW_WRITER = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@VDEV_LABEL_REMOVE = common dso_local global i64 0, align 8
@VDEV_LABEL_SPLIT = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@VDEV_LABEL_L2CACHE = common dso_local global i64 0, align 8
@VDEV_LABEL_SPARE = common dso_local global i64 0, align 8
@VDEV_LABEL_REPLACE = common dso_local global i64 0, align 8
@zfs_trim_enabled = common dso_local global i64 0, align 8
@vdev_trim_on_init = common dso_local global i64 0, align 8
@VDEV_LABEL_CREATE = common dso_local global i64 0, align 8
@VDEV_SKIP_SIZE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_VERSION = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@POOL_STATE_SPARE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@POOL_STATE_L2CACHE = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_CREATE_TXG = common dso_local global i32 0, align 4
@NV_ENCODE_XDR = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@VDEV_UBERBLOCK_RING = common dso_local global i32 0, align 4
@VDEV_PAD_SIZE = common dso_local global i32 0, align 4
@VDEV_LABELS = common dso_local global i32 0, align 4
@vdev_label_t = common dso_local global i32 0, align 4
@vl_vdev_phys = common dso_local global i32 0, align 4
@vl_pad2 = common dso_local global i32 0, align 4
@vl_uberblock = common dso_local global i32 0, align 4
@ZIO_FLAG_TRYHARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vdev_label_init(%struct.TYPE_23__* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_25__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca %struct.TYPE_23__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.TYPE_23__*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32, align 4
  store %struct.TYPE_23__* %0, %struct.TYPE_23__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 11
  %31 = load %struct.TYPE_26__*, %struct.TYPE_26__** %30, align 8
  store %struct.TYPE_26__* %31, %struct.TYPE_26__** %8, align 8
  %32 = load i32, i32* @ZIO_FLAG_CONFIG_WRITER, align 4
  %33 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %21, align 4
  %35 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %36 = load i64, i64* @SCL_ALL, align 8
  %37 = load i32, i32* @RW_WRITER, align 4
  %38 = call i64 @spa_config_held(%struct.TYPE_26__* %35, i64 %36, i32 %37)
  %39 = load i64, i64* @SCL_ALL, align 8
  %40 = icmp eq i64 %38, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  store i32 0, i32* %22, align 4
  br label %43

43:                                               ; preds = %64, %3
  %44 = load i32, i32* %22, align 4
  %45 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp slt i32 %44, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %50, i32 0, i32 10
  %52 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %51, align 8
  %53 = load i32, i32* %22, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %52, i64 %54
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @vdev_label_init(%struct.TYPE_23__* %56, i64 %57, i64 %58)
  store i32 %59, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %49
  %62 = load i32, i32* %18, align 4
  store i32 %62, i32* %4, align 4
  br label %515

63:                                               ; preds = %49
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %22, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %22, align 4
  br label %43

67:                                               ; preds = %43
  %68 = load i64, i64* %6, align 8
  %69 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %69, i32 0, i32 1
  store i64 %68, i64* %70, align 8
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 9
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %67
  %78 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %79 = call i32 @spa_writeable(%struct.TYPE_26__* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77, %67
  store i32 0, i32* %4, align 4
  br label %515

82:                                               ; preds = %77
  %83 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %84 = call i64 @vdev_is_dead(%struct.TYPE_23__* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %82
  %87 = load i32, i32* @EIO, align 4
  %88 = call i32 @SET_ERROR(i32 %87)
  store i32 %88, i32* %4, align 4
  br label %515

89:                                               ; preds = %82
  %90 = load i64, i64* %7, align 8
  %91 = load i64, i64* @VDEV_LABEL_REMOVE, align 8
  %92 = icmp ne i64 %90, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load i64, i64* %7, align 8
  %95 = load i64, i64* @VDEV_LABEL_SPLIT, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i64 @vdev_inuse(%struct.TYPE_23__* %98, i64 %99, i64 %100, i64* %19, i64* %20)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %97
  %104 = load i32, i32* @EBUSY, align 4
  %105 = call i32 @SET_ERROR(i32 %104)
  store i32 %105, i32* %4, align 4
  br label %515

106:                                              ; preds = %97, %93, %89
  %107 = load i64, i64* %7, align 8
  %108 = load i64, i64* @VDEV_LABEL_REMOVE, align 8
  %109 = icmp ne i64 %107, %108
  br i1 %109, label %110, label %161

110:                                              ; preds = %106
  %111 = load i64, i64* %7, align 8
  %112 = load i64, i64* @VDEV_LABEL_L2CACHE, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %161

114:                                              ; preds = %110
  %115 = load i64, i64* %19, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %161

117:                                              ; preds = %114
  %118 = load i64, i64* %19, align 8
  %119 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = sub i64 %118, %121
  store i64 %122, i64* %23, align 8
  %123 = load i64, i64* %23, align 8
  %124 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = add i64 %126, %123
  store i64 %127, i64* %125, align 8
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %128, %struct.TYPE_23__** %24, align 8
  br label %129

129:                                              ; preds = %140, %117
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %131 = icmp ne %struct.TYPE_23__* %130, null
  br i1 %131, label %132, label %144

132:                                              ; preds = %129
  %133 = load i64, i64* %23, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 7
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = add i64 %137, %133
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %135, align 4
  br label %140

140:                                              ; preds = %132
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %24, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 8
  %143 = load %struct.TYPE_23__*, %struct.TYPE_23__** %142, align 8
  store %struct.TYPE_23__* %143, %struct.TYPE_23__** %24, align 8
  br label %129

144:                                              ; preds = %129
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* @VDEV_LABEL_SPARE, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 0, i32* %4, align 4
  br label %515

149:                                              ; preds = %144
  %150 = load i64, i64* %7, align 8
  %151 = load i64, i64* @VDEV_LABEL_REPLACE, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %157, label %153

153:                                              ; preds = %149
  %154 = load i64, i64* %7, align 8
  %155 = load i64, i64* @VDEV_LABEL_SPLIT, align 8
  %156 = icmp eq i64 %154, %155
  br label %157

157:                                              ; preds = %153, %149
  %158 = phi i1 [ true, %149 ], [ %156, %153 ]
  %159 = zext i1 %158 to i32
  %160 = call i32 @ASSERT(i32 %159)
  br label %161

161:                                              ; preds = %157, %114, %110, %106
  %162 = load i64, i64* %7, align 8
  %163 = load i64, i64* @VDEV_LABEL_REMOVE, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %210

165:                                              ; preds = %161
  %166 = load i64, i64* %7, align 8
  %167 = load i64, i64* @VDEV_LABEL_SPARE, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %210

169:                                              ; preds = %165
  %170 = load i64, i64* %20, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %210

172:                                              ; preds = %169
  %173 = load i64, i64* %20, align 8
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = sub i64 %173, %176
  store i64 %177, i64* %25, align 8
  %178 = load i64, i64* %25, align 8
  %179 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = add i64 %181, %178
  store i64 %182, i64* %180, align 8
  %183 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  store %struct.TYPE_23__* %183, %struct.TYPE_23__** %26, align 8
  br label %184

184:                                              ; preds = %195, %172
  %185 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %186 = icmp ne %struct.TYPE_23__* %185, null
  br i1 %186, label %187, label %199

187:                                              ; preds = %184
  %188 = load i64, i64* %25, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = add i64 %192, %188
  %194 = trunc i64 %193 to i32
  store i32 %194, i32* %190, align 4
  br label %195

195:                                              ; preds = %187
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %26, align 8
  %197 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %196, i32 0, i32 8
  %198 = load %struct.TYPE_23__*, %struct.TYPE_23__** %197, align 8
  store %struct.TYPE_23__* %198, %struct.TYPE_23__** %26, align 8
  br label %184

199:                                              ; preds = %184
  %200 = load i64, i64* %7, align 8
  %201 = load i64, i64* @VDEV_LABEL_L2CACHE, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %204

203:                                              ; preds = %199
  store i32 0, i32* %4, align 4
  br label %515

204:                                              ; preds = %199
  %205 = load i64, i64* %7, align 8
  %206 = load i64, i64* @VDEV_LABEL_REPLACE, align 8
  %207 = icmp eq i64 %205, %206
  %208 = zext i1 %207 to i32
  %209 = call i32 @ASSERT(i32 %208)
  br label %210

210:                                              ; preds = %204, %169, %165, %161
  %211 = load i64, i64* @zfs_trim_enabled, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %244

213:                                              ; preds = %210
  %214 = load i64, i64* @vdev_trim_on_init, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %244

216:                                              ; preds = %213
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 8
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %244, label %221

221:                                              ; preds = %216
  %222 = load i64, i64* %7, align 8
  %223 = load i64, i64* @VDEV_LABEL_CREATE, align 8
  %224 = icmp eq i64 %222, %223
  br i1 %224, label %233, label %225

225:                                              ; preds = %221
  %226 = load i64, i64* %7, align 8
  %227 = load i64, i64* @VDEV_LABEL_SPARE, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = load i64, i64* %7, align 8
  %231 = load i64, i64* @VDEV_LABEL_L2CACHE, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %244

233:                                              ; preds = %229, %225, %221
  %234 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %235 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %236 = load i64, i64* @VDEV_SKIP_SIZE, align 8
  %237 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %238 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %237, i32 0, i32 5
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @VDEV_SKIP_SIZE, align 8
  %241 = sub nsw i64 %239, %240
  %242 = call i32* @zio_trim(i32* null, %struct.TYPE_26__* %234, %struct.TYPE_23__* %235, i64 %236, i64 %241)
  %243 = call i32 @zio_wait(i32* %242)
  br label %244

244:                                              ; preds = %233, %229, %216, %213, %210
  %245 = load i32, i32* @B_TRUE, align 4
  %246 = call i32* @abd_alloc_linear(i32 8, i32 %245)
  store i32* %246, i32** %11, align 8
  %247 = load i32*, i32** %11, align 8
  %248 = call i32 @abd_zero(i32* %247, i32 8)
  %249 = load i32*, i32** %11, align 8
  %250 = call i8* @abd_to_buf(i32* %249)
  %251 = bitcast i8* %250 to %struct.TYPE_24__*
  store %struct.TYPE_24__* %251, %struct.TYPE_24__** %10, align 8
  %252 = load i64, i64* %7, align 8
  %253 = load i64, i64* @VDEV_LABEL_SPARE, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %264, label %255

255:                                              ; preds = %244
  %256 = load i64, i64* %7, align 8
  %257 = load i64, i64* @VDEV_LABEL_REMOVE, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %295

259:                                              ; preds = %255
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 4
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %295

264:                                              ; preds = %259, %244
  %265 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %266 = load i32, i32* @KM_SLEEP, align 4
  %267 = call i64 @nvlist_alloc(i32** %9, i32 %265, i32 %266)
  %268 = icmp eq i64 %267, 0
  %269 = zext i1 %268 to i32
  %270 = call i32 @VERIFY(i32 %269)
  %271 = load i32*, i32** %9, align 8
  %272 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %273 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %274 = call i64 @spa_version(%struct.TYPE_26__* %273)
  %275 = call i64 @nvlist_add_uint64(i32* %271, i32 %272, i64 %274)
  %276 = icmp eq i64 %275, 0
  %277 = zext i1 %276 to i32
  %278 = call i32 @VERIFY(i32 %277)
  %279 = load i32*, i32** %9, align 8
  %280 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %281 = load i64, i64* @POOL_STATE_SPARE, align 8
  %282 = call i64 @nvlist_add_uint64(i32* %279, i32 %280, i64 %281)
  %283 = icmp eq i64 %282, 0
  %284 = zext i1 %283 to i32
  %285 = call i32 @VERIFY(i32 %284)
  %286 = load i32*, i32** %9, align 8
  %287 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %288 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %289 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = call i64 @nvlist_add_uint64(i32* %286, i32 %287, i64 %290)
  %292 = icmp eq i64 %291, 0
  %293 = zext i1 %292 to i32
  %294 = call i32 @VERIFY(i32 %293)
  br label %362

295:                                              ; preds = %259, %255
  %296 = load i64, i64* %7, align 8
  %297 = load i64, i64* @VDEV_LABEL_L2CACHE, align 8
  %298 = icmp eq i64 %296, %297
  br i1 %298, label %308, label %299

299:                                              ; preds = %295
  %300 = load i64, i64* %7, align 8
  %301 = load i64, i64* @VDEV_LABEL_REMOVE, align 8
  %302 = icmp eq i64 %300, %301
  br i1 %302, label %303, label %339

303:                                              ; preds = %299
  %304 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %304, i32 0, i32 3
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %339

308:                                              ; preds = %303, %295
  %309 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %310 = load i32, i32* @KM_SLEEP, align 4
  %311 = call i64 @nvlist_alloc(i32** %9, i32 %309, i32 %310)
  %312 = icmp eq i64 %311, 0
  %313 = zext i1 %312 to i32
  %314 = call i32 @VERIFY(i32 %313)
  %315 = load i32*, i32** %9, align 8
  %316 = load i32, i32* @ZPOOL_CONFIG_VERSION, align 4
  %317 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %318 = call i64 @spa_version(%struct.TYPE_26__* %317)
  %319 = call i64 @nvlist_add_uint64(i32* %315, i32 %316, i64 %318)
  %320 = icmp eq i64 %319, 0
  %321 = zext i1 %320 to i32
  %322 = call i32 @VERIFY(i32 %321)
  %323 = load i32*, i32** %9, align 8
  %324 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %325 = load i64, i64* @POOL_STATE_L2CACHE, align 8
  %326 = call i64 @nvlist_add_uint64(i32* %323, i32 %324, i64 %325)
  %327 = icmp eq i64 %326, 0
  %328 = zext i1 %327 to i32
  %329 = call i32 @VERIFY(i32 %328)
  %330 = load i32*, i32** %9, align 8
  %331 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %332 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %333 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %332, i32 0, i32 2
  %334 = load i64, i64* %333, align 8
  %335 = call i64 @nvlist_add_uint64(i32* %330, i32 %331, i64 %334)
  %336 = icmp eq i64 %335, 0
  %337 = zext i1 %336 to i32
  %338 = call i32 @VERIFY(i32 %337)
  br label %361

339:                                              ; preds = %303, %299
  store i64 0, i64* %27, align 8
  %340 = load i64, i64* %7, align 8
  %341 = load i64, i64* @VDEV_LABEL_SPLIT, align 8
  %342 = icmp eq i64 %340, %341
  br i1 %342, label %343, label %348

343:                                              ; preds = %339
  %344 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %344, i32 0, i32 0
  %346 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %345, i32 0, i32 0
  %347 = load i64, i64* %346, align 8
  store i64 %347, i64* %27, align 8
  br label %348

348:                                              ; preds = %343, %339
  %349 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %350 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %351 = load i64, i64* %27, align 8
  %352 = load i32, i32* @B_FALSE, align 4
  %353 = call i32* @spa_config_generate(%struct.TYPE_26__* %349, %struct.TYPE_23__* %350, i64 %351, i32 %352)
  store i32* %353, i32** %9, align 8
  %354 = load i32*, i32** %9, align 8
  %355 = load i32, i32* @ZPOOL_CONFIG_CREATE_TXG, align 4
  %356 = load i64, i64* %6, align 8
  %357 = call i64 @nvlist_add_uint64(i32* %354, i32 %355, i64 %356)
  %358 = icmp eq i64 %357, 0
  %359 = zext i1 %358 to i32
  %360 = call i32 @VERIFY(i32 %359)
  br label %361

361:                                              ; preds = %348, %308
  br label %362

362:                                              ; preds = %361, %264
  %363 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %363, i32 0, i32 0
  %365 = load i8*, i8** %364, align 8
  store i8* %365, i8** %16, align 8
  store i64 8, i64* %17, align 8
  %366 = load i32*, i32** %9, align 8
  %367 = load i32, i32* @NV_ENCODE_XDR, align 4
  %368 = load i32, i32* @KM_SLEEP, align 4
  %369 = call i32 @nvlist_pack(i32* %366, i8** %16, i64* %17, i32 %367, i32 %368)
  store i32 %369, i32* %18, align 4
  %370 = load i32, i32* %18, align 4
  %371 = icmp ne i32 %370, 0
  br i1 %371, label %372, label %386

372:                                              ; preds = %362
  %373 = load i32*, i32** %9, align 8
  %374 = call i32 @nvlist_free(i32* %373)
  %375 = load i32*, i32** %11, align 8
  %376 = call i32 @abd_free(i32* %375)
  %377 = load i32, i32* %18, align 4
  %378 = load i32, i32* @EFAULT, align 4
  %379 = icmp eq i32 %377, %378
  br i1 %379, label %380, label %382

380:                                              ; preds = %372
  %381 = load i32, i32* @ENAMETOOLONG, align 4
  br label %384

382:                                              ; preds = %372
  %383 = load i32, i32* @EINVAL, align 4
  br label %384

384:                                              ; preds = %382, %380
  %385 = phi i32 [ %381, %380 ], [ %383, %382 ]
  store i32 %385, i32* %4, align 4
  br label %515

386:                                              ; preds = %362
  %387 = load i32, i32* @VDEV_UBERBLOCK_RING, align 4
  %388 = load i32, i32* @B_TRUE, align 4
  %389 = call i32* @abd_alloc_linear(i32 %387, i32 %388)
  store i32* %389, i32** %14, align 8
  %390 = load i32*, i32** %14, align 8
  %391 = load i32, i32* @VDEV_UBERBLOCK_RING, align 4
  %392 = call i32 @abd_zero(i32* %390, i32 %391)
  %393 = load i32*, i32** %14, align 8
  %394 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %395 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %394, i32 0, i32 0
  %396 = call i32 @abd_copy_from_buf(i32* %393, %struct.TYPE_22__* %395, i32 8)
  %397 = load i32*, i32** %14, align 8
  %398 = call i8* @abd_to_buf(i32* %397)
  %399 = bitcast i8* %398 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %399, %struct.TYPE_25__** %13, align 8
  %400 = load %struct.TYPE_25__*, %struct.TYPE_25__** %13, align 8
  %401 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %400, i32 0, i32 0
  store i64 0, i64* %401, align 8
  %402 = load i32, i32* @VDEV_PAD_SIZE, align 4
  %403 = load i32, i32* @B_TRUE, align 4
  %404 = call i32* @abd_alloc_for_io(i32 %402, i32 %403)
  store i32* %404, i32** %12, align 8
  %405 = load i32*, i32** %12, align 8
  %406 = load i32, i32* @VDEV_PAD_SIZE, align 4
  %407 = call i32 @abd_zero(i32* %405, i32 %406)
  br label %408

408:                                              ; preds = %459, %386
  %409 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %410 = load i32, i32* %21, align 4
  %411 = call i32* @zio_root(%struct.TYPE_26__* %409, i32* null, i32* null, i32 %410)
  store i32* %411, i32** %15, align 8
  store i32 0, i32* %28, align 4
  br label %412

412:                                              ; preds = %446, %408
  %413 = load i32, i32* %28, align 4
  %414 = load i32, i32* @VDEV_LABELS, align 4
  %415 = icmp slt i32 %413, %414
  br i1 %415, label %416, label %449

416:                                              ; preds = %412
  %417 = load i32*, i32** %15, align 8
  %418 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %419 = load i32, i32* %28, align 4
  %420 = load i32*, i32** %11, align 8
  %421 = load i32, i32* @vdev_label_t, align 4
  %422 = load i32, i32* @vl_vdev_phys, align 4
  %423 = call i32 @offsetof(i32 %421, i32 %422)
  %424 = load i32, i32* %21, align 4
  %425 = call i32 @vdev_label_write(i32* %417, %struct.TYPE_23__* %418, i32 %419, i32* %420, i32 %423, i32 8, i32* null, i32* null, i32 %424)
  %426 = load i32*, i32** %15, align 8
  %427 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %428 = load i32, i32* %28, align 4
  %429 = load i32*, i32** %12, align 8
  %430 = load i32, i32* @vdev_label_t, align 4
  %431 = load i32, i32* @vl_pad2, align 4
  %432 = call i32 @offsetof(i32 %430, i32 %431)
  %433 = load i32, i32* @VDEV_PAD_SIZE, align 4
  %434 = load i32, i32* %21, align 4
  %435 = call i32 @vdev_label_write(i32* %426, %struct.TYPE_23__* %427, i32 %428, i32* %429, i32 %432, i32 %433, i32* null, i32* null, i32 %434)
  %436 = load i32*, i32** %15, align 8
  %437 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %438 = load i32, i32* %28, align 4
  %439 = load i32*, i32** %14, align 8
  %440 = load i32, i32* @vdev_label_t, align 4
  %441 = load i32, i32* @vl_uberblock, align 4
  %442 = call i32 @offsetof(i32 %440, i32 %441)
  %443 = load i32, i32* @VDEV_UBERBLOCK_RING, align 4
  %444 = load i32, i32* %21, align 4
  %445 = call i32 @vdev_label_write(i32* %436, %struct.TYPE_23__* %437, i32 %438, i32* %439, i32 %442, i32 %443, i32* null, i32* null, i32 %444)
  br label %446

446:                                              ; preds = %416
  %447 = load i32, i32* %28, align 4
  %448 = add nsw i32 %447, 1
  store i32 %448, i32* %28, align 4
  br label %412

449:                                              ; preds = %412
  %450 = load i32*, i32** %15, align 8
  %451 = call i32 @zio_wait(i32* %450)
  store i32 %451, i32* %18, align 4
  %452 = load i32, i32* %18, align 4
  %453 = icmp ne i32 %452, 0
  br i1 %453, label %454, label %463

454:                                              ; preds = %449
  %455 = load i32, i32* %21, align 4
  %456 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %457 = and i32 %455, %456
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %463, label %459

459:                                              ; preds = %454
  %460 = load i32, i32* @ZIO_FLAG_TRYHARD, align 4
  %461 = load i32, i32* %21, align 4
  %462 = or i32 %461, %460
  store i32 %462, i32* %21, align 4
  br label %408

463:                                              ; preds = %454, %449
  %464 = load i32*, i32** %9, align 8
  %465 = call i32 @nvlist_free(i32* %464)
  %466 = load i32*, i32** %12, align 8
  %467 = call i32 @abd_free(i32* %466)
  %468 = load i32*, i32** %14, align 8
  %469 = call i32 @abd_free(i32* %468)
  %470 = load i32*, i32** %11, align 8
  %471 = call i32 @abd_free(i32* %470)
  %472 = load i32, i32* %18, align 4
  %473 = icmp eq i32 %472, 0
  br i1 %473, label %474, label %492

474:                                              ; preds = %463
  %475 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %476 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %475, i32 0, i32 4
  %477 = load i64, i64* %476, align 8
  %478 = icmp ne i64 %477, 0
  br i1 %478, label %492, label %479

479:                                              ; preds = %474
  %480 = load i64, i64* %7, align 8
  %481 = load i64, i64* @VDEV_LABEL_SPARE, align 8
  %482 = icmp eq i64 %480, %481
  br i1 %482, label %489, label %483

483:                                              ; preds = %479
  %484 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %485 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %484, i32 0, i32 2
  %486 = load i64, i64* %485, align 8
  %487 = call i64 @spa_spare_exists(i64 %486, i32* null, i32* null)
  %488 = icmp ne i64 %487, 0
  br i1 %488, label %489, label %492

489:                                              ; preds = %483, %479
  %490 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %491 = call i32 @spa_spare_add(%struct.TYPE_23__* %490)
  br label %492

492:                                              ; preds = %489, %483, %474, %463
  %493 = load i32, i32* %18, align 4
  %494 = icmp eq i32 %493, 0
  br i1 %494, label %495, label %513

495:                                              ; preds = %492
  %496 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %497 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %496, i32 0, i32 3
  %498 = load i64, i64* %497, align 8
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %513, label %500

500:                                              ; preds = %495
  %501 = load i64, i64* %7, align 8
  %502 = load i64, i64* @VDEV_LABEL_L2CACHE, align 8
  %503 = icmp eq i64 %501, %502
  br i1 %503, label %510, label %504

504:                                              ; preds = %500
  %505 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %506 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %505, i32 0, i32 2
  %507 = load i64, i64* %506, align 8
  %508 = call i64 @spa_l2cache_exists(i64 %507, i32* null)
  %509 = icmp ne i64 %508, 0
  br i1 %509, label %510, label %513

510:                                              ; preds = %504, %500
  %511 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %512 = call i32 @spa_l2cache_add(%struct.TYPE_23__* %511)
  br label %513

513:                                              ; preds = %510, %504, %495, %492
  %514 = load i32, i32* %18, align 4
  store i32 %514, i32* %4, align 4
  br label %515

515:                                              ; preds = %513, %384, %203, %148, %103, %86, %81, %61
  %516 = load i32, i32* %4, align 4
  ret i32 %516
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(%struct.TYPE_26__*, i64, i32) #1

declare dso_local i32 @spa_writeable(%struct.TYPE_26__*) #1

declare dso_local i64 @vdev_is_dead(%struct.TYPE_23__*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i64 @vdev_inuse(%struct.TYPE_23__*, i64, i64, i64*, i64*) #1

declare dso_local i32 @zio_wait(i32*) #1

declare dso_local i32* @zio_trim(i32*, %struct.TYPE_26__*, %struct.TYPE_23__*, i64, i64) #1

declare dso_local i32* @abd_alloc_linear(i32, i32) #1

declare dso_local i32 @abd_zero(i32*, i32) #1

declare dso_local i8* @abd_to_buf(i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #1

declare dso_local i64 @spa_version(%struct.TYPE_26__*) #1

declare dso_local i32* @spa_config_generate(%struct.TYPE_26__*, %struct.TYPE_23__*, i64, i32) #1

declare dso_local i32 @nvlist_pack(i32*, i8**, i64*, i32, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @abd_free(i32*) #1

declare dso_local i32 @abd_copy_from_buf(i32*, %struct.TYPE_22__*, i32) #1

declare dso_local i32* @abd_alloc_for_io(i32, i32) #1

declare dso_local i32* @zio_root(%struct.TYPE_26__*, i32*, i32*, i32) #1

declare dso_local i32 @vdev_label_write(i32*, %struct.TYPE_23__*, i32, i32*, i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i64 @spa_spare_exists(i64, i32*, i32*) #1

declare dso_local i32 @spa_spare_add(%struct.TYPE_23__*) #1

declare dso_local i64 @spa_l2cache_exists(i64, i32*) #1

declare dso_local i32 @spa_l2cache_add(%struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
