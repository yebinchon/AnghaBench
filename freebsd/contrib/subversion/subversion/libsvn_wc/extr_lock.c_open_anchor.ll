; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_open_anchor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_lock.c_open_anchor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_16__* null, align 8
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i64 0, align 8
@SVN_ERR_WC_LOCKED = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_16__* (i32**, i32**, i8**, i32*, i64, i8*, i64, i32, i32, i8*, i32*)* @open_anchor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_16__* @open_anchor(i32** %0, i32** %1, i8** %2, i32* %3, i64 %4, i8* %5, i64 %6, i32 %7, i32 %8, i8* %9, i32* %10) #0 {
  %12 = alloca %struct.TYPE_16__*, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i8**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_16__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca %struct.TYPE_16__*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.TYPE_16__*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32, align 4
  store i32** %0, i32*** %13, align 8
  store i32** %1, i32*** %14, align 8
  store i8** %2, i8*** %15, align 8
  store i32* %3, i32** %16, align 8
  store i64 %4, i64* %17, align 8
  store i8* %5, i8** %18, align 8
  store i64 %6, i64* %19, align 8
  store i32 %7, i32* %20, align 4
  store i32 %8, i32* %21, align 4
  store i8* %9, i8** %22, align 8
  store i32* %10, i32** %23, align 8
  %37 = load i8*, i8** %18, align 8
  %38 = load i32*, i32** %23, align 8
  %39 = call i8* @svn_dirent_basename(i8* %37, i32* %38)
  store i8* %39, i8** %24, align 8
  %40 = load i64, i64* %17, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %11
  %43 = load i64, i64* @FALSE, align 8
  %44 = load i32, i32* @TRUE, align 4
  %45 = load i32*, i32** %23, align 8
  %46 = load i32*, i32** %23, align 8
  %47 = call %struct.TYPE_16__* @svn_wc__db_open(i32** %16, i32* null, i64 %43, i32 %44, i32* %45, i32* %46)
  %48 = call i32 @SVN_ERR(%struct.TYPE_16__* %47)
  br label %49

49:                                               ; preds = %42, %11
  %50 = load i8*, i8** %18, align 8
  %51 = call i64 @svn_path_is_empty(i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %49
  %54 = load i8*, i8** %18, align 8
  %55 = load i8*, i8** %18, align 8
  %56 = call i32 @strlen(i8* %55)
  %57 = call i64 @svn_dirent_is_root(i8* %54, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %53
  %60 = load i8*, i8** %24, align 8
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %79, label %63

63:                                               ; preds = %59, %53, %49
  %64 = load i32**, i32*** %13, align 8
  %65 = load i8*, i8** %18, align 8
  %66 = load i32*, i32** %16, align 8
  %67 = load i64, i64* %17, align 8
  %68 = load i64, i64* %19, align 8
  %69 = load i32, i32* %20, align 4
  %70 = load i32, i32* %21, align 4
  %71 = load i8*, i8** %22, align 8
  %72 = load i32*, i32** %23, align 8
  %73 = call %struct.TYPE_16__* @open_all(i32** %64, i8* %65, i32* %66, i64 %67, i64 %68, i32 %69, i32 %70, i8* %71, i32* %72)
  %74 = call i32 @SVN_ERR(%struct.TYPE_16__* %73)
  %75 = load i32**, i32*** %13, align 8
  %76 = load i32*, i32** %75, align 8
  %77 = load i32**, i32*** %14, align 8
  store i32* %76, i32** %77, align 8
  %78 = load i8**, i8*** %15, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %78, align 8
  br label %332

79:                                               ; preds = %59
  store i32* null, i32** %26, align 8
  store i32* null, i32** %27, align 8
  %80 = load i8*, i8** %18, align 8
  %81 = load i32*, i32** %23, align 8
  %82 = call i8* @svn_dirent_dirname(i8* %80, i32* %81)
  store i8* %82, i8** %28, align 8
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %83, %struct.TYPE_16__** %30, align 8
  %84 = load i8*, i8** %18, align 8
  %85 = load i32*, i32** %23, align 8
  %86 = call %struct.TYPE_16__* @svn_dirent_get_absolute(i8** %29, i8* %84, i32* %85)
  %87 = call i32 @SVN_ERR(%struct.TYPE_16__* %86)
  %88 = load i8*, i8** %28, align 8
  %89 = load i64, i64* %19, align 8
  %90 = load i32*, i32** %16, align 8
  %91 = load i64, i64* %17, align 8
  %92 = load i32*, i32** %23, align 8
  %93 = load i32*, i32** %23, align 8
  %94 = call %struct.TYPE_16__* @open_single(i32** %26, i8* %88, i64 %89, i32* %90, i64 %91, i32* %92, i32* %93)
  store %struct.TYPE_16__* %94, %struct.TYPE_16__** %25, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %96 = icmp ne %struct.TYPE_16__* %95, null
  br i1 %96, label %97, label %162

97:                                               ; preds = %79
  %98 = load i8*, i8** %29, align 8
  %99 = load i32*, i32** %23, align 8
  %100 = call i8* @svn_dirent_dirname(i8* %98, i32* %99)
  store i8* %100, i8** %31, align 8
  %101 = load i32*, i32** %16, align 8
  %102 = load i8*, i8** %31, align 8
  %103 = load i32*, i32** %23, align 8
  %104 = call i32* @svn_wc__db_temp_get_access(i32* %101, i8* %102, i32* %103)
  store i32* %104, i32** %32, align 8
  %105 = load i32*, i32** %32, align 8
  %106 = call i64 @IS_MISSING(i32* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %97
  %109 = load i32*, i32** %16, align 8
  %110 = load i8*, i8** %31, align 8
  %111 = load i32*, i32** %23, align 8
  %112 = call i32 @svn_wc__db_temp_clear_access(i32* %109, i8* %110, i32* %111)
  br label %118

113:                                              ; preds = %97
  %114 = load i32*, i32** %32, align 8
  %115 = icmp eq i32* %114, null
  %116 = zext i1 %115 to i32
  %117 = call i32 @SVN_ERR_ASSERT(i32 %116)
  br label %118

118:                                              ; preds = %113, %108
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %127

124:                                              ; preds = %118
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %126 = call i32 @svn_error_clear(%struct.TYPE_16__* %125)
  store i32* null, i32** %26, align 8
  br label %161

127:                                              ; preds = %118
  %128 = load i64, i64* %19, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %158

130:                                              ; preds = %127
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @SVN_ERR_WC_LOCKED, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %142, label %136

136:                                              ; preds = %130
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = call i64 @APR_STATUS_IS_EACCES(i64 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %158

142:                                              ; preds = %136, %130
  %143 = load i8*, i8** %28, align 8
  %144 = load i64, i64* @FALSE, align 8
  %145 = load i32*, i32** %16, align 8
  %146 = load i64, i64* %17, align 8
  %147 = load i32*, i32** %23, align 8
  %148 = load i32*, i32** %23, align 8
  %149 = call %struct.TYPE_16__* @open_single(i32** %26, i8* %143, i64 %144, i32* %145, i64 %146, i32* %147, i32* %148)
  store %struct.TYPE_16__* %149, %struct.TYPE_16__** %33, align 8
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %151 = icmp ne %struct.TYPE_16__* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %142
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %154 = call i32 @svn_error_clear(%struct.TYPE_16__* %153)
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  store %struct.TYPE_16__* %155, %struct.TYPE_16__** %12, align 8
  br label %334

156:                                              ; preds = %142
  %157 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  store %struct.TYPE_16__* %157, %struct.TYPE_16__** %30, align 8
  br label %160

158:                                              ; preds = %136, %127
  %159 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  store %struct.TYPE_16__* %159, %struct.TYPE_16__** %12, align 8
  br label %334

160:                                              ; preds = %156
  br label %161

161:                                              ; preds = %160, %124
  br label %162

162:                                              ; preds = %161, %79
  %163 = load i8*, i8** %18, align 8
  %164 = load i32*, i32** %16, align 8
  %165 = load i64, i64* %17, align 8
  %166 = load i64, i64* %19, align 8
  %167 = load i32, i32* %20, align 4
  %168 = load i32, i32* %21, align 4
  %169 = load i8*, i8** %22, align 8
  %170 = load i32*, i32** %23, align 8
  %171 = call %struct.TYPE_16__* @open_all(i32** %27, i8* %163, i32* %164, i64 %165, i64 %166, i32 %167, i32 %168, i8* %169, i32* %170)
  store %struct.TYPE_16__* %171, %struct.TYPE_16__** %25, align 8
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %173 = icmp ne %struct.TYPE_16__* %172, null
  br i1 %173, label %174, label %204

174:                                              ; preds = %162
  %175 = load i32*, i32** %26, align 8
  %176 = icmp eq i32* %175, null
  br i1 %176, label %177, label %182

177:                                              ; preds = %174
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %179 = call i32 @svn_error_clear(%struct.TYPE_16__* %178)
  %180 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %181 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %180)
  store %struct.TYPE_16__* %181, %struct.TYPE_16__** %12, align 8
  br label %334

182:                                              ; preds = %174
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %184 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %183, i32 0, i32 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %187 = icmp ne i64 %185, %186
  br i1 %187, label %188, label %201

188:                                              ; preds = %182
  %189 = load i32*, i32** %26, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %196

191:                                              ; preds = %188
  %192 = load i32*, i32** %26, align 8
  %193 = load i32*, i32** %23, align 8
  %194 = call %struct.TYPE_16__* @svn_wc_adm_close2(i32* %192, i32* %193)
  %195 = call i32 @svn_error_clear(%struct.TYPE_16__* %194)
  br label %196

196:                                              ; preds = %191, %188
  %197 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %198 = call i32 @svn_error_clear(%struct.TYPE_16__* %197)
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %200 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %199)
  store %struct.TYPE_16__* %200, %struct.TYPE_16__** %12, align 8
  br label %334

201:                                              ; preds = %182
  %202 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %203 = call i32 @svn_error_clear(%struct.TYPE_16__* %202)
  store i32* null, i32** %27, align 8
  br label %204

204:                                              ; preds = %201, %162
  %205 = load i32*, i32** %26, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %251

207:                                              ; preds = %204
  %208 = load i32*, i32** %27, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %251

210:                                              ; preds = %207
  %211 = load i32*, i32** %16, align 8
  %212 = load i8*, i8** %29, align 8
  %213 = load i32*, i32** %23, align 8
  %214 = call %struct.TYPE_16__* @child_is_disjoint(i64* %34, i32* %211, i8* %212, i32* %213)
  store %struct.TYPE_16__* %214, %struct.TYPE_16__** %25, align 8
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %216 = icmp ne %struct.TYPE_16__* %215, null
  br i1 %216, label %217, label %230

217:                                              ; preds = %210
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %219 = call i32 @svn_error_clear(%struct.TYPE_16__* %218)
  %220 = load i32*, i32** %26, align 8
  %221 = load i32*, i32** %23, align 8
  %222 = call %struct.TYPE_16__* @svn_wc_adm_close2(i32* %220, i32* %221)
  %223 = call i32 @svn_error_clear(%struct.TYPE_16__* %222)
  %224 = load i32*, i32** %27, align 8
  %225 = load i32*, i32** %23, align 8
  %226 = call %struct.TYPE_16__* @svn_wc_adm_close2(i32* %224, i32* %225)
  %227 = call i32 @svn_error_clear(%struct.TYPE_16__* %226)
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %229 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %228)
  store %struct.TYPE_16__* %229, %struct.TYPE_16__** %12, align 8
  br label %334

230:                                              ; preds = %210
  %231 = load i64, i64* %34, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %250

233:                                              ; preds = %230
  %234 = load i32*, i32** %26, align 8
  %235 = load i64, i64* @FALSE, align 8
  %236 = load i32*, i32** %23, align 8
  %237 = call %struct.TYPE_16__* @close_single(i32* %234, i64 %235, i32* %236)
  store %struct.TYPE_16__* %237, %struct.TYPE_16__** %25, align 8
  %238 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %239 = icmp ne %struct.TYPE_16__* %238, null
  br i1 %239, label %240, label %249

240:                                              ; preds = %233
  %241 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %242 = call i32 @svn_error_clear(%struct.TYPE_16__* %241)
  %243 = load i32*, i32** %27, align 8
  %244 = load i32*, i32** %23, align 8
  %245 = call %struct.TYPE_16__* @svn_wc_adm_close2(i32* %243, i32* %244)
  %246 = call i32 @svn_error_clear(%struct.TYPE_16__* %245)
  %247 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %248 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %247)
  store %struct.TYPE_16__* %248, %struct.TYPE_16__** %12, align 8
  br label %334

249:                                              ; preds = %233
  store i32* null, i32** %26, align 8
  br label %250

250:                                              ; preds = %249, %230
  br label %251

251:                                              ; preds = %250, %207, %204
  %252 = load i32*, i32** %26, align 8
  %253 = icmp ne i32* %252, null
  br i1 %253, label %254, label %272

254:                                              ; preds = %251
  %255 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %256 = icmp ne %struct.TYPE_16__* %255, null
  br i1 %256, label %257, label %272

257:                                              ; preds = %254
  %258 = load i32*, i32** %27, align 8
  %259 = icmp ne i32* %258, null
  br i1 %259, label %260, label %265

260:                                              ; preds = %257
  %261 = load i32*, i32** %27, align 8
  %262 = load i32*, i32** %23, align 8
  %263 = call %struct.TYPE_16__* @svn_wc_adm_close2(i32* %261, i32* %262)
  %264 = call i32 @svn_error_clear(%struct.TYPE_16__* %263)
  br label %265

265:                                              ; preds = %260, %257
  %266 = load i32*, i32** %26, align 8
  %267 = load i32*, i32** %23, align 8
  %268 = call %struct.TYPE_16__* @svn_wc_adm_close2(i32* %266, i32* %267)
  %269 = call i32 @svn_error_clear(%struct.TYPE_16__* %268)
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %271 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %270)
  store %struct.TYPE_16__* %271, %struct.TYPE_16__** %12, align 8
  br label %334

272:                                              ; preds = %254, %251
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %274 = call i32 @svn_error_clear(%struct.TYPE_16__* %273)
  %275 = load i32*, i32** %27, align 8
  %276 = icmp ne i32* %275, null
  br i1 %276, label %305, label %277

277:                                              ; preds = %272
  %278 = load i32*, i32** %16, align 8
  %279 = load i8*, i8** %29, align 8
  %280 = load i32*, i32** %23, align 8
  %281 = call %struct.TYPE_16__* @adm_available(i64* %35, i32* %36, i32* %278, i8* %279, i32* %280)
  store %struct.TYPE_16__* %281, %struct.TYPE_16__** %25, align 8
  %282 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %283 = icmp ne %struct.TYPE_16__* %282, null
  br i1 %283, label %284, label %293

284:                                              ; preds = %277
  %285 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %286 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %289 = icmp eq i64 %287, %288
  br i1 %289, label %290, label %293

290:                                              ; preds = %284
  %291 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %292 = call i32 @svn_error_clear(%struct.TYPE_16__* %291)
  br label %304

293:                                              ; preds = %284, %277
  %294 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %295 = icmp ne %struct.TYPE_16__* %294, null
  br i1 %295, label %296, label %303

296:                                              ; preds = %293
  %297 = load i32*, i32** %26, align 8
  %298 = load i32*, i32** %23, align 8
  %299 = call %struct.TYPE_16__* @svn_wc_adm_close2(i32* %297, i32* %298)
  %300 = call i32 @svn_error_clear(%struct.TYPE_16__* %299)
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %302 = call %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__* %301)
  store %struct.TYPE_16__* %302, %struct.TYPE_16__** %12, align 8
  br label %334

303:                                              ; preds = %293
  br label %304

304:                                              ; preds = %303, %290
  br label %305

305:                                              ; preds = %304, %272
  %306 = load i32*, i32** %26, align 8
  %307 = icmp ne i32* %306, null
  br i1 %307, label %308, label %310

308:                                              ; preds = %305
  %309 = load i32*, i32** %26, align 8
  br label %312

310:                                              ; preds = %305
  %311 = load i32*, i32** %27, align 8
  br label %312

312:                                              ; preds = %310, %308
  %313 = phi i32* [ %309, %308 ], [ %311, %310 ]
  %314 = load i32**, i32*** %13, align 8
  store i32* %313, i32** %314, align 8
  %315 = load i32*, i32** %27, align 8
  %316 = icmp ne i32* %315, null
  br i1 %316, label %317, label %319

317:                                              ; preds = %312
  %318 = load i32*, i32** %27, align 8
  br label %321

319:                                              ; preds = %312
  %320 = load i32*, i32** %26, align 8
  br label %321

321:                                              ; preds = %319, %317
  %322 = phi i32* [ %318, %317 ], [ %320, %319 ]
  %323 = load i32**, i32*** %14, align 8
  store i32* %322, i32** %323, align 8
  %324 = load i32*, i32** %26, align 8
  %325 = icmp ne i32* %324, null
  br i1 %325, label %328, label %326

326:                                              ; preds = %321
  %327 = load i8**, i8*** %15, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8** %327, align 8
  br label %331

328:                                              ; preds = %321
  %329 = load i8*, i8** %24, align 8
  %330 = load i8**, i8*** %15, align 8
  store i8* %329, i8** %330, align 8
  br label %331

331:                                              ; preds = %328, %326
  br label %332

332:                                              ; preds = %331, %63
  %333 = load %struct.TYPE_16__*, %struct.TYPE_16__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_16__* %333, %struct.TYPE_16__** %12, align 8
  br label %334

334:                                              ; preds = %332, %296, %265, %240, %217, %196, %177, %158, %152
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  ret %struct.TYPE_16__* %335
}

declare dso_local i8* @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @svn_wc__db_open(i32**, i32*, i64, i32, i32*, i32*) #1

declare dso_local i64 @svn_path_is_empty(i8*) #1

declare dso_local i64 @svn_dirent_is_root(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_16__* @open_all(i32**, i8*, i32*, i64, i64, i32, i32, i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_16__* @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_16__* @open_single(i32**, i8*, i64, i32*, i64, i32*, i32*) #1

declare dso_local i32* @svn_wc__db_temp_get_access(i32*, i8*, i32*) #1

declare dso_local i64 @IS_MISSING(i32*) #1

declare dso_local i32 @svn_wc__db_temp_clear_access(i32*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_16__*) #1

declare dso_local i64 @APR_STATUS_IS_EACCES(i64) #1

declare dso_local %struct.TYPE_16__* @svn_error_trace(%struct.TYPE_16__*) #1

declare dso_local %struct.TYPE_16__* @svn_wc_adm_close2(i32*, i32*) #1

declare dso_local %struct.TYPE_16__* @child_is_disjoint(i64*, i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_16__* @close_single(i32*, i64, i32*) #1

declare dso_local %struct.TYPE_16__* @adm_available(i64*, i32*, i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
