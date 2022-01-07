; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zfs_ioctl.c_zfs_ioc_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i8*, i64, i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@cap_pread_rights = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@SPA_VERSION_RECVD_PROPS = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i8* null, align 8
@ZPROP_ERR_NOCLEAR = common dso_local global i32 0, align 4
@ZPROP_SRC_RECEIVED = common dso_local global i32 0, align 4
@MAXOFFSET_T = common dso_local global i64 0, align 8
@ZPROP_ERR_NORESTORE = common dso_local global i32 0, align 4
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4
@zfs_ioc_recv_inject_err = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*)* @zfs_ioc_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfs_ioc_recv(%struct.TYPE_18__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_18__*, align 8
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_17__*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %3, align 8
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %25, i32 0, i32 12
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  store i8* %29, i8** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  store i32* null, i32** %14, align 8
  store i8* null, i8** %15, align 8
  %30 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %17, align 8
  %33 = alloca i8, i64 %31, align 16
  store i64 %31, i64* %18, align 8
  %34 = load i8*, i8** @B_FALSE, align 8
  store i8* %34, i8** %19, align 8
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i64 @dataset_namecheck(i8* %37, i32* null, i32* null)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %52, label %40

40:                                               ; preds = %1
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i8* @strchr(i8* %43, i8 signext 64)
  %45 = icmp eq i8* %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i8* @strchr(i8* %49, i8 signext 37)
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %55

52:                                               ; preds = %46, %40, %1
  %53 = load i32, i32* @EINVAL, align 4
  %54 = call i32 @SET_ERROR(i32 %53)
  store i32 %54, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %385

55:                                               ; preds = %46
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i32 @strcpy(i8* %33, i8* %58)
  %60 = call i8* @strchr(i8* %33, i8 signext 64)
  store i8* %60, i8** %16, align 8
  %61 = load i8*, i8** %16, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %16, align 8
  store i8 0, i8* %61, align 1
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %55
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 10
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @get_nvlist(i64 %70, i32 %73, i32 %76, i32** %12)
  store i32 %77, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %67
  %80 = load i32, i32* %8, align 4
  store i32 %80, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %385

81:                                               ; preds = %67, %55
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* @curthread, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @fget_read(i32 %85, i32 %86, i32* @cap_pread_rights, %struct.TYPE_19__** %4)
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %89 = icmp eq %struct.TYPE_19__* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %81
  %91 = load i32*, i32** %12, align 8
  %92 = call i32 @nvlist_free(i32* %91)
  %93 = load i32, i32* @EBADF, align 4
  %94 = call i32 @SET_ERROR(i32 %93)
  store i32 %94, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %385

95:                                               ; preds = %81
  %96 = call i32* (...) @fnvlist_alloc()
  store i32* %96, i32** %10, align 8
  %97 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %97, i32 0, i32 3
  %99 = load i8*, i8** %98, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = icmp ne i8 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %95
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  store i8* %106, i8** %15, align 8
  br label %107

107:                                              ; preds = %103, %95
  %108 = load i8*, i8** %16, align 8
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %110 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %109, i32 0, i32 9
  %111 = load i8*, i8** %6, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 8
  %114 = load i32, i32* %113, align 8
  %115 = load i8*, i8** %15, align 8
  %116 = call i32 @dmu_recv_begin(i8* %33, i8* %108, i32* %110, i8* %111, i32 %114, i8* %115, %struct.TYPE_20__* %5)
  store i32 %116, i32* %8, align 4
  %117 = load i32, i32* %8, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %107
  br label %370

120:                                              ; preds = %107
  %121 = load i32*, i32** %12, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %184

123:                                              ; preds = %120
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %184, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @dsl_dataset_get_spa(i32 %129)
  %131 = call i64 @spa_version(i32 %130)
  %132 = load i64, i64* @SPA_VERSION_RECVD_PROPS, align 8
  %133 = icmp sge i64 %131, %132
  br i1 %133, label %134, label %139

134:                                              ; preds = %127
  %135 = call i32 @dsl_prop_get_hasrecvd(i8* %33)
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %134
  %138 = load i8*, i8** @B_TRUE, align 8
  store i8* %138, i8** %19, align 8
  br label %139

139:                                              ; preds = %137, %134, %127
  %140 = call i64 @dsl_prop_get_received(i8* %33, i32** %13)
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %177

142:                                              ; preds = %139
  store i32* null, i32** %21, align 8
  %143 = load i8*, i8** %19, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %149, label %145

145:                                              ; preds = %142
  %146 = load i32*, i32** %12, align 8
  %147 = load i32*, i32** %13, align 8
  %148 = call i32 @props_reduce(i32* %146, i32* %147)
  br label %149

149:                                              ; preds = %145, %142
  %150 = load i32*, i32** %13, align 8
  %151 = call i64 @zfs_check_clearable(i8* %33, i32* %150, i32** %21)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %157

153:                                              ; preds = %149
  %154 = load i32*, i32** %10, align 8
  %155 = load i32*, i32** %21, align 8
  %156 = call i64 @nvlist_merge(i32* %154, i32* %155, i32 0)
  br label %157

157:                                              ; preds = %153, %149
  %158 = load i32*, i32** %21, align 8
  %159 = call i32 @nvlist_free(i32* %158)
  %160 = load i32*, i32** %13, align 8
  %161 = load i8*, i8** %19, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %157
  br label %166

164:                                              ; preds = %157
  %165 = load i32*, i32** %12, align 8
  br label %166

166:                                              ; preds = %164, %163
  %167 = phi i32* [ null, %163 ], [ %165, %164 ]
  %168 = call i64 @clear_received_props(i8* %33, i32* %160, i32* %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %166
  %171 = load i32, i32* @ZPROP_ERR_NOCLEAR, align 4
  %172 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %173 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %171
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %170, %166
  br label %183

177:                                              ; preds = %139
  %178 = load i32, i32* @ZPROP_ERR_NOCLEAR, align 4
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %179, i32 0, i32 4
  %181 = load i32, i32* %180, align 8
  %182 = or i32 %181, %178
  store i32 %182, i32* %180, align 8
  br label %183

183:                                              ; preds = %177, %176
  br label %184

184:                                              ; preds = %183, %123, %120
  %185 = load i32*, i32** %12, align 8
  %186 = icmp ne i32* %185, null
  br i1 %186, label %187, label %199

187:                                              ; preds = %184
  %188 = call i32 @dsl_prop_set_hasrecvd(i8* %33)
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %187
  %192 = load i32*, i32** %12, align 8
  %193 = call i32* @extract_delay_props(i32* %192)
  store i32* %193, i32** %14, align 8
  %194 = load i32, i32* @ZPROP_SRC_RECEIVED, align 4
  %195 = load i32*, i32** %12, align 8
  %196 = load i32*, i32** %10, align 8
  %197 = call i64 @zfs_set_prop_nvlist(i8* %33, i32 %194, i32* %195, i32* %196)
  br label %198

198:                                              ; preds = %191, %187
  br label %199

199:                                              ; preds = %198, %184
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  store i64 %202, i64* %11, align 8
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %204 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %204, i32 0, i32 7
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 6
  %209 = call i32 @dmu_recv_stream(%struct.TYPE_20__* %5, %struct.TYPE_19__* %203, i64* %11, i32 %206, i32* %208)
  store i32 %209, i32* %8, align 4
  %210 = load i32, i32* %8, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %257

212:                                              ; preds = %199
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %22, align 8
  %213 = call i64 @getzfsvfs(i8* %33, %struct.TYPE_17__** %22)
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %215, label %243

215:                                              ; preds = %212
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32* @dmu_objset_ds(i32 %218)
  store i32* %219, i32** %23, align 8
  %220 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %221 = call i32 @zfs_suspend_fs(%struct.TYPE_17__* %220)
  store i32 %221, i32* %8, align 4
  %222 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %223 = call i32 @dmu_recv_end(%struct.TYPE_20__* %5, %struct.TYPE_17__* %222)
  store i32 %223, i32* %24, align 4
  %224 = load i32, i32* %8, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %215
  %227 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %228 = load i32*, i32** %23, align 8
  %229 = call i32 @zfs_resume_fs(%struct.TYPE_17__* %227, i32* %228)
  store i32 %229, i32* %8, align 4
  br label %230

230:                                              ; preds = %226, %215
  %231 = load i32, i32* %8, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %230
  %234 = load i32, i32* %8, align 4
  br label %237

235:                                              ; preds = %230
  %236 = load i32, i32* %24, align 4
  br label %237

237:                                              ; preds = %235, %233
  %238 = phi i32 [ %234, %233 ], [ %236, %235 ]
  store i32 %238, i32* %8, align 4
  %239 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %240 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @vfs_unbusy(i32 %241)
  br label %245

243:                                              ; preds = %212
  %244 = call i32 @dmu_recv_end(%struct.TYPE_20__* %5, %struct.TYPE_17__* null)
  store i32 %244, i32* %8, align 4
  br label %245

245:                                              ; preds = %243, %237
  %246 = load i32*, i32** %14, align 8
  %247 = icmp ne i32* %246, null
  br i1 %247, label %248, label %256

248:                                              ; preds = %245
  %249 = load i32, i32* %8, align 4
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %256

251:                                              ; preds = %248
  %252 = load i32, i32* @ZPROP_SRC_RECEIVED, align 4
  %253 = load i32*, i32** %14, align 8
  %254 = load i32*, i32** %10, align 8
  %255 = call i64 @zfs_set_prop_nvlist(i8* %33, i32 %252, i32* %253, i32* %254)
  br label %256

256:                                              ; preds = %251, %248, %245
  br label %257

257:                                              ; preds = %256, %199
  %258 = load i32*, i32** %14, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %260, label %269

260:                                              ; preds = %257
  %261 = load i32*, i32** %12, align 8
  %262 = load i32*, i32** %14, align 8
  %263 = call i64 @nvlist_merge(i32* %261, i32* %262, i32 0)
  %264 = icmp eq i64 %263, 0
  %265 = zext i1 %264 to i32
  %266 = call i32 @ASSERT(i32 %265)
  %267 = load i32*, i32** %14, align 8
  %268 = call i32 @nvlist_free(i32* %267)
  br label %269

269:                                              ; preds = %260, %257
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %289

274:                                              ; preds = %269
  %275 = load i32*, i32** %10, align 8
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 5
  %278 = load i32, i32* %277, align 4
  %279 = call i64 @nvlist_smush(i32* %275, i32 %278)
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %286, label %281

281:                                              ; preds = %274
  %282 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %283 = load i32*, i32** %10, align 8
  %284 = call i64 @put_nvlist(%struct.TYPE_18__* %282, i32* %283)
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %281, %274
  %287 = load i32, i32* @EINVAL, align 4
  %288 = call i32 @SET_ERROR(i32 %287)
  store i32 %288, i32* %9, align 4
  br label %289

289:                                              ; preds = %286, %281, %269
  %290 = load i64, i64* %11, align 8
  %291 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = sub nsw i64 %290, %293
  %295 = trunc i64 %294 to i32
  %296 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %297 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %296, i32 0, i32 2
  store i32 %295, i32* %297, align 8
  %298 = load i64, i64* %11, align 8
  %299 = icmp sge i64 %298, 0
  br i1 %299, label %300, label %308

300:                                              ; preds = %289
  %301 = load i64, i64* %11, align 8
  %302 = load i64, i64* @MAXOFFSET_T, align 8
  %303 = icmp sle i64 %301, %302
  br i1 %303, label %304, label %308

304:                                              ; preds = %300
  %305 = load i64, i64* %11, align 8
  %306 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %306, i32 0, i32 0
  store i64 %305, i64* %307, align 8
  br label %308

308:                                              ; preds = %304, %300, %289
  %309 = load i32, i32* %8, align 4
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %369

311:                                              ; preds = %308
  %312 = load i32*, i32** %12, align 8
  %313 = icmp ne i32* %312, null
  br i1 %313, label %314, label %369

314:                                              ; preds = %311
  %315 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %316 = load i32, i32* %315, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %369, label %318

318:                                              ; preds = %314
  %319 = load i32*, i32** %12, align 8
  %320 = call i64 @clear_received_props(i8* %33, i32* %319, i32* null)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %328

322:                                              ; preds = %318
  %323 = load i32, i32* @ZPROP_ERR_NORESTORE, align 4
  %324 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %324, i32 0, i32 4
  %326 = load i32, i32* %325, align 8
  %327 = or i32 %326, %323
  store i32 %327, i32* %325, align 8
  br label %334

328:                                              ; preds = %318
  %329 = load i8*, i8** %19, align 8
  %330 = icmp ne i8* %329, null
  br i1 %330, label %331, label %333

331:                                              ; preds = %328
  %332 = call i32 @dsl_prop_unset_hasrecvd(i8* %33)
  br label %333

333:                                              ; preds = %331, %328
  br label %334

334:                                              ; preds = %333, %322
  %335 = load i32*, i32** %13, align 8
  %336 = icmp eq i32* %335, null
  br i1 %336, label %337, label %347

337:                                              ; preds = %334
  %338 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %5, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %347, label %341

341:                                              ; preds = %337
  %342 = load i32, i32* @ZPROP_ERR_NORESTORE, align 4
  %343 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %344 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %343, i32 0, i32 4
  %345 = load i32, i32* %344, align 8
  %346 = or i32 %345, %342
  store i32 %346, i32* %344, align 8
  br label %347

347:                                              ; preds = %341, %337, %334
  %348 = load i32*, i32** %13, align 8
  %349 = icmp ne i32* %348, null
  br i1 %349, label %350, label %368

350:                                              ; preds = %347
  %351 = load i8*, i8** %19, align 8
  %352 = icmp ne i8* %351, null
  br i1 %352, label %353, label %355

353:                                              ; preds = %350
  %354 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  br label %357

355:                                              ; preds = %350
  %356 = load i32, i32* @ZPROP_SRC_RECEIVED, align 4
  br label %357

357:                                              ; preds = %355, %353
  %358 = phi i32 [ %354, %353 ], [ %356, %355 ]
  %359 = load i32*, i32** %13, align 8
  %360 = call i64 @zfs_set_prop_nvlist(i8* %33, i32 %358, i32* %359, i32* null)
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %368

362:                                              ; preds = %357
  %363 = load i32, i32* @ZPROP_ERR_NORESTORE, align 4
  %364 = load %struct.TYPE_18__*, %struct.TYPE_18__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %364, i32 0, i32 4
  %366 = load i32, i32* %365, align 8
  %367 = or i32 %366, %363
  store i32 %367, i32* %365, align 8
  br label %368

368:                                              ; preds = %362, %357, %347
  br label %369

369:                                              ; preds = %368, %314, %311, %308
  br label %370

370:                                              ; preds = %369, %119
  %371 = load i32*, i32** %12, align 8
  %372 = call i32 @nvlist_free(i32* %371)
  %373 = load i32*, i32** %13, align 8
  %374 = call i32 @nvlist_free(i32* %373)
  %375 = load i32*, i32** %10, align 8
  %376 = call i32 @nvlist_free(i32* %375)
  %377 = load i32, i32* %7, align 4
  %378 = call i32 @releasef(i32 %377)
  %379 = load i32, i32* %8, align 4
  %380 = icmp eq i32 %379, 0
  br i1 %380, label %381, label %383

381:                                              ; preds = %370
  %382 = load i32, i32* %9, align 4
  store i32 %382, i32* %8, align 4
  br label %383

383:                                              ; preds = %381, %370
  %384 = load i32, i32* %8, align 4
  store i32 %384, i32* %2, align 4
  store i32 1, i32* %20, align 4
  br label %385

385:                                              ; preds = %383, %90, %79, %52
  %386 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %386)
  %387 = load i32, i32* %2, align 4
  ret i32 %387
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @dataset_namecheck(i8*, i32*, i32*) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i32 @SET_ERROR(i32) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i32 @get_nvlist(i64, i32, i32, i32**) #2

declare dso_local i32 @fget_read(i32, i32, i32*, %struct.TYPE_19__**) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32* @fnvlist_alloc(...) #2

declare dso_local i32 @dmu_recv_begin(i8*, i8*, i32*, i8*, i32, i8*, %struct.TYPE_20__*) #2

declare dso_local i64 @spa_version(i32) #2

declare dso_local i32 @dsl_dataset_get_spa(i32) #2

declare dso_local i32 @dsl_prop_get_hasrecvd(i8*) #2

declare dso_local i64 @dsl_prop_get_received(i8*, i32**) #2

declare dso_local i32 @props_reduce(i32*, i32*) #2

declare dso_local i64 @zfs_check_clearable(i8*, i32*, i32**) #2

declare dso_local i64 @nvlist_merge(i32*, i32*, i32) #2

declare dso_local i64 @clear_received_props(i8*, i32*, i32*) #2

declare dso_local i32 @dsl_prop_set_hasrecvd(i8*) #2

declare dso_local i32* @extract_delay_props(i32*) #2

declare dso_local i64 @zfs_set_prop_nvlist(i8*, i32, i32*, i32*) #2

declare dso_local i32 @dmu_recv_stream(%struct.TYPE_20__*, %struct.TYPE_19__*, i64*, i32, i32*) #2

declare dso_local i64 @getzfsvfs(i8*, %struct.TYPE_17__**) #2

declare dso_local i32* @dmu_objset_ds(i32) #2

declare dso_local i32 @zfs_suspend_fs(%struct.TYPE_17__*) #2

declare dso_local i32 @dmu_recv_end(%struct.TYPE_20__*, %struct.TYPE_17__*) #2

declare dso_local i32 @zfs_resume_fs(%struct.TYPE_17__*, i32*) #2

declare dso_local i32 @vfs_unbusy(i32) #2

declare dso_local i32 @ASSERT(i32) #2

declare dso_local i64 @nvlist_smush(i32*, i32) #2

declare dso_local i64 @put_nvlist(%struct.TYPE_18__*, i32*) #2

declare dso_local i32 @dsl_prop_unset_hasrecvd(i8*) #2

declare dso_local i32 @releasef(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
