; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_unload.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_unload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32*, i8*, i64, %struct.TYPE_21__, %struct.TYPE_20__, i32*, i32*, %struct.TYPE_23__*, i32, i32*, i32*, i32*, %struct.TYPE_23__**, i8* }
%struct.TYPE_21__ = type { i32, i32*, %struct.TYPE_23__** }
%struct.TYPE_20__ = type { i32, i32*, %struct.TYPE_23__** }
%struct.TYPE_23__ = type { i32, i32* }

@spa_namespace_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"UNLOADING\00", align 1
@VDEV_INITIALIZE_ACTIVE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@SCL_ALL = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@max_ncpus = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @spa_unload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spa_unload(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %6 = call i32 @MUTEX_HELD(i32* @spa_namespace_lock)
  %7 = call i32 @ASSERT(i32 %6)
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %9 = call i32 @spa_load_note(%struct.TYPE_22__* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %11 = call i32 @trim_thread_destroy(%struct.TYPE_22__* %10)
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %13 = call i32 @spa_async_suspend(%struct.TYPE_22__* %12)
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 7
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  %17 = icmp ne %struct.TYPE_23__* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %1
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 7
  %21 = load %struct.TYPE_23__*, %struct.TYPE_23__** %20, align 8
  %22 = load i32, i32* @VDEV_INITIALIZE_ACTIVE, align 4
  %23 = call i32 @vdev_initialize_stop_all(%struct.TYPE_23__* %21, i32 %22)
  br label %24

24:                                               ; preds = %18, %1
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 13
  %27 = load i8*, i8** %26, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 6
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @txg_sync_stop(i32* %32)
  %34 = load i8*, i8** @B_FALSE, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 13
  store i8* %34, i8** %36, align 8
  br label %37

37:                                               ; preds = %29, %24
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 7
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %39, align 8
  %41 = icmp ne %struct.TYPE_23__* %40, null
  br i1 %41, label %42, label %75

42:                                               ; preds = %37
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %44 = load i32, i32* @SCL_ALL, align 4
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %46 = load i32, i32* @RW_WRITER, align 4
  %47 = call i32 @spa_config_enter(%struct.TYPE_22__* %43, i32 %44, %struct.TYPE_22__* %45, i32 %46)
  store i32 0, i32* %4, align 4
  br label %48

48:                                               ; preds = %67, %42
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 7
  %52 = load %struct.TYPE_23__*, %struct.TYPE_23__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %48
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %58 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %57, i32 0, i32 7
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @vdev_metaslab_fini(i32 %65)
  br label %67

67:                                               ; preds = %56
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %48

70:                                               ; preds = %48
  %71 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %72 = load i32, i32* @SCL_ALL, align 4
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %74 = call i32 @spa_config_exit(%struct.TYPE_22__* %71, i32 %72, %struct.TYPE_22__* %73)
  br label %75

75:                                               ; preds = %70, %37
  %76 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %76, i32 0, i32 12
  %78 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %77, align 8
  %79 = icmp ne %struct.TYPE_23__** %78, null
  br i1 %79, label %80, label %108

80:                                               ; preds = %75
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %94, %80
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @max_ncpus, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %97

85:                                               ; preds = %81
  %86 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %86, i32 0, i32 12
  %88 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %87, align 8
  %89 = load i32, i32* %5, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %88, i64 %90
  %92 = load %struct.TYPE_23__*, %struct.TYPE_23__** %91, align 8
  %93 = call i32 @zio_wait(%struct.TYPE_23__* %92)
  br label %94

94:                                               ; preds = %85
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %81

97:                                               ; preds = %81
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 12
  %100 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %99, align 8
  %101 = load i32, i32* @max_ncpus, align 4
  %102 = sext i32 %101 to i64
  %103 = mul i64 %102, 8
  %104 = trunc i64 %103 to i32
  %105 = call i32 @kmem_free(%struct.TYPE_23__** %100, i32 %104)
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 12
  store %struct.TYPE_23__** null, %struct.TYPE_23__*** %107, align 8
  br label %108

108:                                              ; preds = %97, %75
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %110 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %109, i32 0, i32 11
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %108
  %114 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %114, i32 0, i32 11
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @spa_vdev_removal_destroy(i32* %116)
  %118 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %118, i32 0, i32 11
  store i32* null, i32** %119, align 8
  br label %120

120:                                              ; preds = %113, %108
  %121 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %122 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %121, i32 0, i32 10
  %123 = load i32*, i32** %122, align 8
  %124 = icmp ne i32* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %120
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 10
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @zthr_destroy(i32* %128)
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 10
  store i32* null, i32** %131, align 8
  br label %132

132:                                              ; preds = %125, %120
  %133 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %134 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %133, i32 0, i32 9
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 9
  %140 = load i32*, i32** %139, align 8
  %141 = call i32 @zthr_destroy(i32* %140)
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 9
  store i32* null, i32** %143, align 8
  br label %144

144:                                              ; preds = %137, %132
  %145 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %146 = call i32 @spa_condense_fini(%struct.TYPE_22__* %145)
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 8
  %149 = call i32 @bpobj_close(i32* %148)
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %151 = load i32, i32* @SCL_ALL, align 4
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %153 = load i32, i32* @RW_WRITER, align 4
  %154 = call i32 @spa_config_enter(%struct.TYPE_22__* %150, i32 %151, %struct.TYPE_22__* %152, i32 %153)
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 7
  %157 = load %struct.TYPE_23__*, %struct.TYPE_23__** %156, align 8
  %158 = icmp ne %struct.TYPE_23__* %157, null
  br i1 %158, label %159, label %164

159:                                              ; preds = %144
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 7
  %162 = load %struct.TYPE_23__*, %struct.TYPE_23__** %161, align 8
  %163 = call i32 @vdev_free(%struct.TYPE_23__* %162)
  br label %164

164:                                              ; preds = %159, %144
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 7
  %167 = load %struct.TYPE_23__*, %struct.TYPE_23__** %166, align 8
  %168 = icmp eq %struct.TYPE_23__* %167, null
  %169 = zext i1 %168 to i32
  %170 = call i32 @ASSERT(i32 %169)
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 6
  %173 = load i32*, i32** %172, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %175, label %184

175:                                              ; preds = %164
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 6
  %178 = load i32*, i32** %177, align 8
  %179 = call i32 @dsl_pool_close(i32* %178)
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 6
  store i32* null, i32** %181, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 5
  store i32* null, i32** %183, align 8
  br label %184

184:                                              ; preds = %175, %164
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %186 = call i32 @ddt_unload(%struct.TYPE_22__* %185)
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %188 = call i32 @spa_l2cache_drop(%struct.TYPE_22__* %187)
  store i32 0, i32* %3, align 4
  br label %189

189:                                              ; preds = %206, %184
  %190 = load i32, i32* %3, align 4
  %191 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp slt i32 %190, %194
  br i1 %195, label %196, label %209

196:                                              ; preds = %189
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 2
  %200 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %199, align 8
  %201 = load i32, i32* %3, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %200, i64 %202
  %204 = load %struct.TYPE_23__*, %struct.TYPE_23__** %203, align 8
  %205 = call i32 @vdev_free(%struct.TYPE_23__* %204)
  br label %206

206:                                              ; preds = %196
  %207 = load i32, i32* %3, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %3, align 4
  br label %189

209:                                              ; preds = %189
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 4
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 2
  %213 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %212, align 8
  %214 = icmp ne %struct.TYPE_23__** %213, null
  br i1 %214, label %215, label %231

215:                                              ; preds = %209
  %216 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %216, i32 0, i32 4
  %218 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %217, i32 0, i32 2
  %219 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %218, align 8
  %220 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %221 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %220, i32 0, i32 4
  %222 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = mul i64 %224, 8
  %226 = trunc i64 %225 to i32
  %227 = call i32 @kmem_free(%struct.TYPE_23__** %219, i32 %226)
  %228 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %229 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %228, i32 0, i32 4
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 2
  store %struct.TYPE_23__** null, %struct.TYPE_23__*** %230, align 8
  br label %231

231:                                              ; preds = %215, %209
  %232 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %233 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %232, i32 0, i32 4
  %234 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %246

237:                                              ; preds = %231
  %238 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %239 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %238, i32 0, i32 4
  %240 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = call i32 @nvlist_free(i32* %241)
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 4
  %245 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %244, i32 0, i32 1
  store i32* null, i32** %245, align 8
  br label %246

246:                                              ; preds = %237, %231
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %248 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %247, i32 0, i32 4
  %249 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %248, i32 0, i32 0
  store i32 0, i32* %249, align 8
  store i32 0, i32* %3, align 4
  br label %250

250:                                              ; preds = %276, %246
  %251 = load i32, i32* %3, align 4
  %252 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %253 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp slt i32 %251, %255
  br i1 %256, label %257, label %279

257:                                              ; preds = %250
  %258 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %259 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %259, i32 0, i32 2
  %261 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %260, align 8
  %262 = load i32, i32* %3, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %261, i64 %263
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %264, align 8
  %266 = call i32 @vdev_clear_stats(%struct.TYPE_23__* %265)
  %267 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %268 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %267, i32 0, i32 3
  %269 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %268, i32 0, i32 2
  %270 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %269, align 8
  %271 = load i32, i32* %3, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %270, i64 %272
  %274 = load %struct.TYPE_23__*, %struct.TYPE_23__** %273, align 8
  %275 = call i32 @vdev_free(%struct.TYPE_23__* %274)
  br label %276

276:                                              ; preds = %257
  %277 = load i32, i32* %3, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %3, align 4
  br label %250

279:                                              ; preds = %250
  %280 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %281 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %280, i32 0, i32 3
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 2
  %283 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %282, align 8
  %284 = icmp ne %struct.TYPE_23__** %283, null
  br i1 %284, label %285, label %301

285:                                              ; preds = %279
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %287, i32 0, i32 2
  %289 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %288, align 8
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 3
  %292 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %291, i32 0, i32 0
  %293 = load i32, i32* %292, align 8
  %294 = sext i32 %293 to i64
  %295 = mul i64 %294, 8
  %296 = trunc i64 %295 to i32
  %297 = call i32 @kmem_free(%struct.TYPE_23__** %289, i32 %296)
  %298 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %299 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %298, i32 0, i32 3
  %300 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %299, i32 0, i32 2
  store %struct.TYPE_23__** null, %struct.TYPE_23__*** %300, align 8
  br label %301

301:                                              ; preds = %285, %279
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %302, i32 0, i32 3
  %304 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %303, i32 0, i32 1
  %305 = load i32*, i32** %304, align 8
  %306 = icmp ne i32* %305, null
  br i1 %306, label %307, label %316

307:                                              ; preds = %301
  %308 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %309 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %308, i32 0, i32 3
  %310 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %309, i32 0, i32 1
  %311 = load i32*, i32** %310, align 8
  %312 = call i32 @nvlist_free(i32* %311)
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %314 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %313, i32 0, i32 3
  %315 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %314, i32 0, i32 1
  store i32* null, i32** %315, align 8
  br label %316

316:                                              ; preds = %307, %301
  %317 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %318 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %317, i32 0, i32 3
  %319 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %318, i32 0, i32 0
  store i32 0, i32* %319, align 8
  %320 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %321 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %320, i32 0, i32 2
  store i64 0, i64* %321, align 8
  %322 = load i8*, i8** @B_FALSE, align 8
  %323 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %324 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %323, i32 0, i32 1
  store i8* %322, i8** %324, align 8
  %325 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %326 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %325, i32 0, i32 0
  %327 = load i32*, i32** %326, align 8
  %328 = icmp ne i32* %327, null
  br i1 %328, label %329, label %336

329:                                              ; preds = %316
  %330 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %331 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %330, i32 0, i32 0
  %332 = load i32*, i32** %331, align 8
  %333 = call i32 @spa_strfree(i32* %332)
  %334 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %335 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %334, i32 0, i32 0
  store i32* null, i32** %335, align 8
  br label %336

336:                                              ; preds = %329, %316
  %337 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %338 = load i32, i32* @SCL_ALL, align 4
  %339 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %340 = call i32 @spa_config_exit(%struct.TYPE_22__* %337, i32 %338, %struct.TYPE_22__* %339)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @spa_load_note(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @trim_thread_destroy(%struct.TYPE_22__*) #1

declare dso_local i32 @spa_async_suspend(%struct.TYPE_22__*) #1

declare dso_local i32 @vdev_initialize_stop_all(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @txg_sync_stop(i32*) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_22__*, i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @vdev_metaslab_fini(i32) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_22__*, i32, %struct.TYPE_22__*) #1

declare dso_local i32 @zio_wait(%struct.TYPE_23__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_23__**, i32) #1

declare dso_local i32 @spa_vdev_removal_destroy(i32*) #1

declare dso_local i32 @zthr_destroy(i32*) #1

declare dso_local i32 @spa_condense_fini(%struct.TYPE_22__*) #1

declare dso_local i32 @bpobj_close(i32*) #1

declare dso_local i32 @vdev_free(%struct.TYPE_23__*) #1

declare dso_local i32 @dsl_pool_close(i32*) #1

declare dso_local i32 @ddt_unload(%struct.TYPE_22__*) #1

declare dso_local i32 @spa_l2cache_drop(%struct.TYPE_22__*) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @vdev_clear_stats(%struct.TYPE_23__*) #1

declare dso_local i32 @spa_strfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
