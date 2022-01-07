; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_hotcopy.c_hotcopy_revisions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_hotcopy.c_hotcopy_revisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i64 }

@SVN_FS_FS__MIN_PACKED_FORMAT = common dso_local global i64 0, align 8
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [108 x i8] c"The hotcopy destination already contains more packed revisions (%lu) than the hotcopy source contains (%lu)\00", align 1
@PATH_MIN_UNPACKED_REV = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*, %struct.TYPE_13__*, i64, i64, i64, i8*, i8*, i8*, i8*, i32 (i8*, i64, i64, i32*)*, i8*, i32 (i8*)*, i8*, i32*)* @hotcopy_revisions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @hotcopy_revisions(%struct.TYPE_13__* %0, %struct.TYPE_13__* %1, i64 %2, i64 %3, i64 %4, i8* %5, i8* %6, i8* %7, i8* %8, i32 (i8*, i64, i64, i32*)* %9, i8* %10, i32 (i8*)* %11, i8* %12, i32* %13) #0 {
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca %struct.TYPE_13__*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32 (i8*, i64, i64, i32*)*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32 (i8*)*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_14__*, align 8
  %31 = alloca %struct.TYPE_14__*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %16, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %17, align 8
  store i64 %2, i64* %18, align 8
  store i64 %3, i64* %19, align 8
  store i64 %4, i64* %20, align 8
  store i8* %5, i8** %21, align 8
  store i8* %6, i8** %22, align 8
  store i8* %7, i8** %23, align 8
  store i8* %8, i8** %24, align 8
  store i32 (i8*, i64, i64, i32*)* %9, i32 (i8*, i64, i64, i32*)** %25, align 8
  store i8* %10, i8** %26, align 8
  store i32 (i8*)* %11, i32 (i8*)** %27, align 8
  store i8* %12, i8** %28, align 8
  store i32* %13, i32** %29, align 8
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  store %struct.TYPE_14__* %42, %struct.TYPE_14__** %30, align 8
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %44, align 8
  store %struct.TYPE_14__* %45, %struct.TYPE_14__** %31, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %32, align 4
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SVN_FS_FS__MIN_PACKED_FORMAT, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %85

54:                                               ; preds = %14
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %56 = load i32*, i32** %29, align 8
  %57 = call i32 @svn_fs_fs__read_min_unpacked_rev(i64* %33, %struct.TYPE_13__* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %60 = load i32*, i32** %29, align 8
  %61 = call i32 @svn_fs_fs__read_min_unpacked_rev(i64* %34, %struct.TYPE_13__* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i64, i64* %33, align 8
  %64 = load i64, i64* %34, align 8
  %65 = icmp slt i64 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %54
  %67 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %68 = call i32 @_(i8* getelementptr inbounds ([108 x i8], [108 x i8]* @.str, i64 0, i64 0))
  %69 = load i64, i64* %34, align 8
  %70 = sub nsw i64 %69, 1
  %71 = load i64, i64* %33, align 8
  %72 = sub nsw i64 %71, 1
  %73 = call i32* @svn_error_createf(i32 %67, i32* null, i32 %68, i64 %70, i64 %72)
  store i32* %73, i32** %15, align 8
  br label %309

74:                                               ; preds = %54
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @PATH_MIN_UNPACKED_REV, align 4
  %82 = load i32*, i32** %29, align 8
  %83 = call i32 @svn_io_dir_file_copy(i32 %77, i32 %80, i32 %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  br label %86

85:                                               ; preds = %14
  store i64 0, i64* %33, align 8
  store i64 0, i64* %34, align 8
  br label %86

86:                                               ; preds = %85, %74
  %87 = load i32 (i8*)*, i32 (i8*)** %27, align 8
  %88 = icmp ne i32 (i8*)* %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %86
  %90 = load i32 (i8*)*, i32 (i8*)** %27, align 8
  %91 = load i8*, i8** %28, align 8
  %92 = call i32 %90(i8* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  br label %94

94:                                               ; preds = %89, %86
  %95 = load i32*, i32** %29, align 8
  %96 = call i32* @svn_pool_create(i32* %95)
  store i32* %96, i32** %36, align 8
  store i64 0, i64* %35, align 8
  br label %97

97:                                               ; preds = %209, %94
  %98 = load i64, i64* %35, align 8
  %99 = load i64, i64* %33, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %214

101:                                              ; preds = %97
  %102 = load i64, i64* @TRUE, align 8
  store i64 %102, i64* %37, align 8
  %103 = load i32*, i32** %36, align 8
  %104 = call i32 @svn_pool_clear(i32* %103)
  %105 = load i32 (i8*)*, i32 (i8*)** %27, align 8
  %106 = icmp ne i32 (i8*)* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %101
  %108 = load i32 (i8*)*, i32 (i8*)** %27, align 8
  %109 = load i8*, i8** %28, align 8
  %110 = call i32 %108(i8* %109)
  %111 = call i32 @SVN_ERR(i32 %110)
  br label %112

112:                                              ; preds = %107, %101
  %113 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %115 = load i64, i64* %35, align 8
  %116 = load i32, i32* %32, align 4
  %117 = load i32*, i32** %36, align 8
  %118 = call i32 @hotcopy_copy_packed_shard(i64* %37, i64* %34, %struct.TYPE_13__* %113, %struct.TYPE_13__* %114, i64 %115, i32 %116, i32* %117)
  %119 = call i32 @SVN_ERR(i32 %118)
  %120 = load i64, i64* %35, align 8
  %121 = load i32, i32* %32, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %120, %122
  %124 = sub nsw i64 %123, 1
  store i64 %124, i64* %38, align 8
  %125 = load i64, i64* %38, align 8
  %126 = load i64, i64* %19, align 8
  %127 = icmp sgt i64 %125, %126
  br i1 %127, label %128, label %134

128:                                              ; preds = %112
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %130 = load i64, i64* %38, align 8
  %131 = load i32*, i32** %36, align 8
  %132 = call i32 @svn_fs_fs__write_current(%struct.TYPE_13__* %129, i64 %130, i32 0, i32 0, i32* %131)
  %133 = call i32 @SVN_ERR(i32 %132)
  br label %134

134:                                              ; preds = %128, %112
  %135 = load i32 (i8*, i64, i64, i32*)*, i32 (i8*, i64, i64, i32*)** %25, align 8
  %136 = icmp ne i32 (i8*, i64, i64, i32*)* %135, null
  br i1 %136, label %137, label %147

137:                                              ; preds = %134
  %138 = load i64, i64* %37, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %137
  %141 = load i32 (i8*, i64, i64, i32*)*, i32 (i8*, i64, i64, i32*)** %25, align 8
  %142 = load i8*, i8** %26, align 8
  %143 = load i64, i64* %35, align 8
  %144 = load i64, i64* %38, align 8
  %145 = load i32*, i32** %36, align 8
  %146 = call i32 %141(i8* %142, i64 %143, i64 %144, i32* %145)
  br label %147

147:                                              ; preds = %140, %137, %134
  %148 = load i64, i64* %20, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %180

150:                                              ; preds = %147
  %151 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %152 = load i64, i64* %35, align 8
  %153 = load i64, i64* %35, align 8
  %154 = load i32, i32* %32, align 4
  %155 = sext i32 %154 to i64
  %156 = add nsw i64 %153, %155
  %157 = trunc i64 %156 to i32
  %158 = load i32, i32* %32, align 4
  %159 = load i32*, i32** %36, align 8
  %160 = call i32 @hotcopy_remove_rev_files(%struct.TYPE_13__* %151, i64 %152, i32 %157, i32 %158, i32* %159)
  %161 = call i32 @SVN_ERR(i32 %160)
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT, align 8
  %166 = icmp sge i64 %164, %165
  br i1 %166, label %167, label %179

167:                                              ; preds = %150
  %168 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %169 = load i64, i64* %35, align 8
  %170 = load i64, i64* %35, align 8
  %171 = load i32, i32* %32, align 4
  %172 = sext i32 %171 to i64
  %173 = add nsw i64 %170, %172
  %174 = trunc i64 %173 to i32
  %175 = load i32, i32* %32, align 4
  %176 = load i32*, i32** %36, align 8
  %177 = call i32 @hotcopy_remove_revprop_files(%struct.TYPE_13__* %168, i64 %169, i32 %174, i32 %175, i32* %176)
  %178 = call i32 @SVN_ERR(i32 %177)
  br label %179

179:                                              ; preds = %167, %150
  br label %180

180:                                              ; preds = %179, %147
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %182 = load i64, i64* %35, align 8
  %183 = load i32*, i32** %36, align 8
  %184 = call i32 @svn_fs_fs__path_rev_shard(%struct.TYPE_13__* %181, i64 %182, i32* %183)
  %185 = load i32 (i8*)*, i32 (i8*)** %27, align 8
  %186 = load i8*, i8** %28, align 8
  %187 = load i32*, i32** %36, align 8
  %188 = call i32 @remove_folder(i32 %184, i32 (i8*)* %185, i8* %186, i32* %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  %190 = load i64, i64* %35, align 8
  %191 = icmp sgt i64 %190, 0
  br i1 %191, label %192, label %208

192:                                              ; preds = %180
  %193 = load %struct.TYPE_14__*, %struct.TYPE_14__** %31, align 8
  %194 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @SVN_FS_FS__MIN_PACKED_REVPROP_FORMAT, align 8
  %197 = icmp sge i64 %195, %196
  br i1 %197, label %198, label %208

198:                                              ; preds = %192
  %199 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %200 = load i64, i64* %35, align 8
  %201 = load i32*, i32** %36, align 8
  %202 = call i32 @svn_fs_fs__path_revprops_shard(%struct.TYPE_13__* %199, i64 %200, i32* %201)
  %203 = load i32 (i8*)*, i32 (i8*)** %27, align 8
  %204 = load i8*, i8** %28, align 8
  %205 = load i32*, i32** %36, align 8
  %206 = call i32 @remove_folder(i32 %202, i32 (i8*)* %203, i8* %204, i32* %205)
  %207 = call i32 @SVN_ERR(i32 %206)
  br label %208

208:                                              ; preds = %198, %192, %180
  br label %209

209:                                              ; preds = %208
  %210 = load i32, i32* %32, align 4
  %211 = sext i32 %210 to i64
  %212 = load i64, i64* %35, align 8
  %213 = add nsw i64 %212, %211
  store i64 %213, i64* %35, align 8
  br label %97

214:                                              ; preds = %97
  %215 = load i32 (i8*)*, i32 (i8*)** %27, align 8
  %216 = icmp ne i32 (i8*)* %215, null
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load i32 (i8*)*, i32 (i8*)** %27, align 8
  %219 = load i8*, i8** %28, align 8
  %220 = call i32 %218(i8* %219)
  %221 = call i32 @SVN_ERR(i32 %220)
  br label %222

222:                                              ; preds = %217, %214
  %223 = load i64, i64* %35, align 8
  %224 = load i64, i64* %33, align 8
  %225 = icmp eq i64 %223, %224
  %226 = zext i1 %225 to i32
  %227 = call i32 @SVN_ERR_ASSERT(i32 %226)
  %228 = load i64, i64* %33, align 8
  %229 = load i64, i64* %34, align 8
  %230 = icmp eq i64 %228, %229
  %231 = zext i1 %230 to i32
  %232 = call i32 @SVN_ERR_ASSERT(i32 %231)
  br label %233

233:                                              ; preds = %296, %222
  %234 = load i64, i64* %35, align 8
  %235 = load i64, i64* %18, align 8
  %236 = icmp sle i64 %234, %235
  br i1 %236, label %237, label %299

237:                                              ; preds = %233
  %238 = load i64, i64* @TRUE, align 8
  store i64 %238, i64* %39, align 8
  %239 = load i32*, i32** %36, align 8
  %240 = call i32 @svn_pool_clear(i32* %239)
  %241 = load i32 (i8*)*, i32 (i8*)** %27, align 8
  %242 = icmp ne i32 (i8*)* %241, null
  br i1 %242, label %243, label %248

243:                                              ; preds = %237
  %244 = load i32 (i8*)*, i32 (i8*)** %27, align 8
  %245 = load i8*, i8** %28, align 8
  %246 = call i32 %244(i8* %245)
  %247 = call i32 @SVN_ERR(i32 %246)
  br label %248

248:                                              ; preds = %243, %237
  %249 = load i8*, i8** %21, align 8
  %250 = load i8*, i8** %22, align 8
  %251 = load i64, i64* %35, align 8
  %252 = load i32, i32* %32, align 4
  %253 = load i32*, i32** %36, align 8
  %254 = call i32 @hotcopy_copy_shard_file(i64* %39, i8* %249, i8* %250, i64 %251, i32 %252, i32* %253)
  %255 = call i32 @SVN_ERR(i32 %254)
  %256 = load i8*, i8** %23, align 8
  %257 = load i8*, i8** %24, align 8
  %258 = load i64, i64* %35, align 8
  %259 = load i32, i32* %32, align 4
  %260 = load i32*, i32** %36, align 8
  %261 = call i32 @hotcopy_copy_shard_file(i64* %39, i8* %256, i8* %257, i64 %258, i32 %259, i32* %260)
  %262 = call i32 @SVN_ERR(i32 %261)
  %263 = load i64, i64* %35, align 8
  %264 = load i64, i64* %19, align 8
  %265 = icmp sgt i64 %263, %264
  br i1 %265, label %266, label %282

266:                                              ; preds = %248
  %267 = load i32, i32* %32, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %281

269:                                              ; preds = %266
  %270 = load i64, i64* %35, align 8
  %271 = load i32, i32* %32, align 4
  %272 = sext i32 %271 to i64
  %273 = srem i64 %270, %272
  %274 = icmp eq i64 %273, 0
  br i1 %274, label %275, label %281

275:                                              ; preds = %269
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %17, align 8
  %277 = load i64, i64* %35, align 8
  %278 = load i32*, i32** %36, align 8
  %279 = call i32 @svn_fs_fs__write_current(%struct.TYPE_13__* %276, i64 %277, i32 0, i32 0, i32* %278)
  %280 = call i32 @SVN_ERR(i32 %279)
  br label %281

281:                                              ; preds = %275, %269, %266
  br label %282

282:                                              ; preds = %281, %248
  %283 = load i32 (i8*, i64, i64, i32*)*, i32 (i8*, i64, i64, i32*)** %25, align 8
  %284 = icmp ne i32 (i8*, i64, i64, i32*)* %283, null
  br i1 %284, label %285, label %295

285:                                              ; preds = %282
  %286 = load i64, i64* %39, align 8
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %295, label %288

288:                                              ; preds = %285
  %289 = load i32 (i8*, i64, i64, i32*)*, i32 (i8*, i64, i64, i32*)** %25, align 8
  %290 = load i8*, i8** %26, align 8
  %291 = load i64, i64* %35, align 8
  %292 = load i64, i64* %35, align 8
  %293 = load i32*, i32** %36, align 8
  %294 = call i32 %289(i8* %290, i64 %291, i64 %292, i32* %293)
  br label %295

295:                                              ; preds = %288, %285, %282
  br label %296

296:                                              ; preds = %295
  %297 = load i64, i64* %35, align 8
  %298 = add nsw i64 %297, 1
  store i64 %298, i64* %35, align 8
  br label %233

299:                                              ; preds = %233
  %300 = load i32*, i32** %36, align 8
  %301 = call i32 @svn_pool_destroy(i32* %300)
  %302 = load i64, i64* %35, align 8
  %303 = load i64, i64* %18, align 8
  %304 = add nsw i64 %303, 1
  %305 = icmp eq i64 %302, %304
  %306 = zext i1 %305 to i32
  %307 = call i32 @SVN_ERR_ASSERT(i32 %306)
  %308 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %308, i32** %15, align 8
  br label %309

309:                                              ; preds = %299, %66
  %310 = load i32*, i32** %15, align 8
  ret i32* %310
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_fs__read_min_unpacked_rev(i64*, %struct.TYPE_13__*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i64, i64) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_io_dir_file_copy(i32, i32, i32, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @hotcopy_copy_packed_shard(i64*, i64*, %struct.TYPE_13__*, %struct.TYPE_13__*, i64, i32, i32*) #1

declare dso_local i32 @svn_fs_fs__write_current(%struct.TYPE_13__*, i64, i32, i32, i32*) #1

declare dso_local i32 @hotcopy_remove_rev_files(%struct.TYPE_13__*, i64, i32, i32, i32*) #1

declare dso_local i32 @hotcopy_remove_revprop_files(%struct.TYPE_13__*, i64, i32, i32, i32*) #1

declare dso_local i32 @remove_folder(i32, i32 (i8*)*, i8*, i32*) #1

declare dso_local i32 @svn_fs_fs__path_rev_shard(%struct.TYPE_13__*, i64, i32*) #1

declare dso_local i32 @svn_fs_fs__path_revprops_shard(%struct.TYPE_13__*, i64, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @hotcopy_copy_shard_file(i64*, i8*, i8*, i64, i32, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
