; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_rollback_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_rollback_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.TYPE_16__ = type { i32, i32*, i32* }
%struct.TYPE_15__ = type { i64, i64, i64, i32, %struct.TYPE_15__*, i64 }
%struct.TYPE_19__ = type { i64, i64, i32 }
%struct.TYPE_18__ = type { i64 }

@FTAG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TXG_INITIAL = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ZFS_PROP_CREATETXG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"value\00", align 1
@EDQUOT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dsl_dataset_rollback_check(i8* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %6, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %20 = call i32* @dmu_tx_pool(%struct.TYPE_17__* %19)
  store i32* %20, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* @FTAG, align 4
  %26 = call i32 @dsl_dataset_hold(i32* %21, i32* %24, i32 %25, %struct.TYPE_15__** %8)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %10, align 4
  store i32 %30, i32* %3, align 4
  br label %277

31:                                               ; preds = %2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 5
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %38 = load i32, i32* @FTAG, align 4
  %39 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %37, i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = call i32 @SET_ERROR(i32 %40)
  store i32 %41, i32* %3, align 4
  br label %277

42:                                               ; preds = %31
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %44 = call %struct.TYPE_19__* @dsl_dataset_phys(%struct.TYPE_15__* %43)
  %45 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @TXG_INITIAL, align 8
  %48 = icmp slt i64 %46, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %42
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %51 = load i32, i32* @FTAG, align 4
  %52 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %50, i32 %51)
  %53 = load i32, i32* @ESRCH, align 4
  %54 = call i32 @SET_ERROR(i32 %53)
  store i32 %54, i32* %3, align 4
  br label %277

55:                                               ; preds = %42
  %56 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %57 = call i64 @dmu_tx_is_syncing(%struct.TYPE_17__* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %55
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %61 = call %struct.TYPE_19__* @dsl_dataset_phys(%struct.TYPE_15__* %60)
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %63, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %59
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %70 = load i32, i32* @FTAG, align 4
  %71 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %69, i32 %70)
  %72 = load i32, i32* @EAGAIN, align 4
  %73 = call i32 @SET_ERROR(i32 %72)
  store i32 %73, i32* %3, align 4
  br label %277

74:                                               ; preds = %59, %55
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %157

79:                                               ; preds = %74
  %80 = load i32*, i32** %7, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* @FTAG, align 4
  %85 = call i32 @dsl_dataset_hold(i32* %80, i32* %83, i32 %84, %struct.TYPE_15__** %11)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %79
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @ENOENT, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %96, label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @EXDEV, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92, %88
  %97 = load i32, i32* @ESRCH, align 4
  %98 = call i32 @SET_ERROR(i32 %97)
  store i32 %98, i32* %10, align 4
  br label %99

99:                                               ; preds = %96, %92
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %101 = load i32, i32* @FTAG, align 4
  %102 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %100, i32 %101)
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %3, align 4
  br label %277

104:                                              ; preds = %79
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 5
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @ASSERT(i64 %107)
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = icmp ne %struct.TYPE_15__* %109, %112
  br i1 %113, label %114, label %153

114:                                              ; preds = %104
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br i1 %121, label %139, label %122

122:                                              ; preds = %114
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = call i64 @dsl_dir_is_clone(i64 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %142

128:                                              ; preds = %122
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call %struct.TYPE_18__* @dsl_dir_phys(i64 %131)
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = icmp eq i64 %134, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %128, %114
  %140 = load i32, i32* @EEXIST, align 4
  %141 = call i32 @SET_ERROR(i32 %140)
  store i32 %141, i32* %10, align 4
  br label %145

142:                                              ; preds = %128, %122
  %143 = load i32, i32* @ESRCH, align 4
  %144 = call i32 @SET_ERROR(i32 %143)
  store i32 %144, i32* %10, align 4
  br label %145

145:                                              ; preds = %142, %139
  %146 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %147 = load i32, i32* @FTAG, align 4
  %148 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %146, i32 %147)
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %150 = load i32, i32* @FTAG, align 4
  %151 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %149, i32 %150)
  %152 = load i32, i32* %10, align 4
  store i32 %152, i32* %3, align 4
  br label %277

153:                                              ; preds = %104
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %155 = load i32, i32* @FTAG, align 4
  %156 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %154, i32 %155)
  br label %157

157:                                              ; preds = %153, %74
  %158 = call i32* (...) @fnvlist_alloc()
  store i32* %158, i32** %12, align 8
  %159 = load i32*, i32** %12, align 8
  %160 = load i32, i32* @ZFS_PROP_CREATETXG, align 4
  %161 = call i32 @zfs_prop_to_name(i32 %160)
  %162 = call i32 @fnvlist_add_boolean(i32* %159, i32 %161)
  %163 = call i32* (...) @fnvlist_alloc()
  store i32* %163, i32** %13, align 8
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %165 = load i32*, i32** %12, align 8
  %166 = load i32*, i32** %13, align 8
  %167 = call i32 @dsl_get_bookmarks_impl(%struct.TYPE_15__* %164, i32* %165, i32* %166)
  store i32 %167, i32* %10, align 4
  %168 = load i32*, i32** %12, align 8
  %169 = call i32 @fnvlist_free(i32* %168)
  %170 = load i32, i32* %10, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %157
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %174 = load i32, i32* @FTAG, align 4
  %175 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %173, i32 %174)
  %176 = load i32, i32* %10, align 4
  store i32 %176, i32* %3, align 4
  br label %277

177:                                              ; preds = %157
  %178 = load i32*, i32** %13, align 8
  %179 = call i32* @nvlist_next_nvpair(i32* %178, i32* null)
  store i32* %179, i32** %14, align 8
  br label %180

180:                                              ; preds = %206, %177
  %181 = load i32*, i32** %14, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %210

183:                                              ; preds = %180
  %184 = load i32*, i32** %14, align 8
  %185 = call i32 @fnvpair_value_nvlist(i32* %184)
  %186 = load i32, i32* @ZFS_PROP_CREATETXG, align 4
  %187 = call i32 @zfs_prop_to_name(i32 %186)
  %188 = call i32* @fnvlist_lookup_nvlist(i32 %185, i32 %187)
  store i32* %188, i32** %15, align 8
  %189 = load i32*, i32** %15, align 8
  %190 = call i64 @fnvlist_lookup_uint64(i32* %189, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store i64 %190, i64* %16, align 8
  %191 = load i64, i64* %16, align 8
  %192 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %193 = call %struct.TYPE_19__* @dsl_dataset_phys(%struct.TYPE_15__* %192)
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp sgt i64 %191, %195
  br i1 %196, label %197, label %205

197:                                              ; preds = %183
  %198 = load i32*, i32** %13, align 8
  %199 = call i32 @fnvlist_free(i32* %198)
  %200 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %201 = load i32, i32* @FTAG, align 4
  %202 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %200, i32 %201)
  %203 = load i32, i32* @EEXIST, align 4
  %204 = call i32 @SET_ERROR(i32 %203)
  store i32 %204, i32* %3, align 4
  br label %277

205:                                              ; preds = %183
  br label %206

206:                                              ; preds = %205
  %207 = load i32*, i32** %13, align 8
  %208 = load i32*, i32** %14, align 8
  %209 = call i32* @nvlist_next_nvpair(i32* %207, i32* %208)
  store i32* %209, i32** %14, align 8
  br label %180

210:                                              ; preds = %180
  %211 = load i32*, i32** %13, align 8
  %212 = call i32 @fnvlist_free(i32* %211)
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %214 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %218 = call i32 @dsl_dataset_handoff_check(%struct.TYPE_15__* %213, i32 %216, %struct.TYPE_17__* %217)
  store i32 %218, i32* %10, align 4
  %219 = load i32, i32* %10, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %210
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %223 = load i32, i32* @FTAG, align 4
  %224 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %222, i32 %223)
  %225 = load i32, i32* %10, align 4
  store i32 %225, i32* %3, align 4
  br label %277

226:                                              ; preds = %210
  %227 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %248

231:                                              ; preds = %226
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %233 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %232, i32 0, i32 4
  %234 = load %struct.TYPE_15__*, %struct.TYPE_15__** %233, align 8
  %235 = call %struct.TYPE_19__* @dsl_dataset_phys(%struct.TYPE_15__* %234)
  %236 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %235, i32 0, i32 1
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = icmp sgt i64 %237, %240
  br i1 %241, label %242, label %248

242:                                              ; preds = %231
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %244 = load i32, i32* @FTAG, align 4
  %245 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %243, i32 %244)
  %246 = load i32, i32* @EDQUOT, align 4
  %247 = call i32 @SET_ERROR(i32 %246)
  store i32 %247, i32* %3, align 4
  br label %277

248:                                              ; preds = %231, %226
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %253 = call %struct.TYPE_19__* @dsl_dataset_phys(%struct.TYPE_15__* %252)
  %254 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = call i64 @MIN(i32 %251, i32 %255)
  store i64 %256, i64* %9, align 8
  %257 = load i64, i64* %9, align 8
  %258 = icmp sgt i64 %257, 0
  br i1 %258, label %259, label %273

259:                                              ; preds = %248
  %260 = load i64, i64* %9, align 8
  %261 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %262 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = load i32, i32* @TRUE, align 4
  %265 = call i64 @dsl_dir_space_available(i64 %263, i32* null, i32 0, i32 %264)
  %266 = icmp sgt i64 %260, %265
  br i1 %266, label %267, label %273

267:                                              ; preds = %259
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %269 = load i32, i32* @FTAG, align 4
  %270 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %268, i32 %269)
  %271 = load i32, i32* @ENOSPC, align 4
  %272 = call i32 @SET_ERROR(i32 %271)
  store i32 %272, i32* %3, align 4
  br label %277

273:                                              ; preds = %259, %248
  %274 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %275 = load i32, i32* @FTAG, align 4
  %276 = call i32 @dsl_dataset_rele(%struct.TYPE_15__* %274, i32 %275)
  store i32 0, i32* %3, align 4
  br label %277

277:                                              ; preds = %273, %267, %242, %221, %197, %172, %145, %99, %68, %49, %36, %29
  %278 = load i32, i32* %3, align 4
  ret i32 %278
}

declare dso_local i32* @dmu_tx_pool(%struct.TYPE_17__*) #1

declare dso_local i32 @dsl_dataset_hold(i32*, i32*, i32, %struct.TYPE_15__**) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local %struct.TYPE_19__* @dsl_dataset_phys(%struct.TYPE_15__*) #1

declare dso_local i64 @dmu_tx_is_syncing(%struct.TYPE_17__*) #1

declare dso_local i32 @ASSERT(i64) #1

declare dso_local i64 @dsl_dir_is_clone(i64) #1

declare dso_local %struct.TYPE_18__* @dsl_dir_phys(i64) #1

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @fnvlist_add_boolean(i32*, i32) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @dsl_get_bookmarks_impl(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32* @fnvlist_lookup_nvlist(i32, i32) #1

declare dso_local i32 @fnvpair_value_nvlist(i32*) #1

declare dso_local i64 @fnvlist_lookup_uint64(i32*, i8*) #1

declare dso_local i32 @dsl_dataset_handoff_check(%struct.TYPE_15__*, i32, %struct.TYPE_17__*) #1

declare dso_local i64 @MIN(i32, i32) #1

declare dso_local i64 @dsl_dir_space_available(i64, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
