; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_ra.c_svn_client__open_ra_session_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_ra.c_svn_client__open_ra_session_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64 }
%struct.TYPE_23__ = type { i32, i32, i32 (i32, i32*, i32*)*, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32*, %struct.TYPE_24__*, i32, i32, i32*, i32*, i32*, i32*, i32 }
%struct.TYPE_24__ = type { i32*, i32, i32, %struct.TYPE_23__*, i32* }

@open_tmp_file = common dso_local global i32 0, align 4
@get_wc_prop = common dso_local global i32* null, align 8
@set_wc_prop = common dso_local global i32* null, align 8
@push_wc_prop = common dso_local global i32* null, align 8
@invalidate_wc_props = common dso_local global i32* null, align 8
@progress_func = common dso_local global i32 0, align 4
@cancel_callback = common dso_local global i32* null, align 8
@get_client_string = common dso_local global i32 0, align 4
@get_wc_contents = common dso_local global i32 0, align 4
@SVN_ERR_WC_NOT_WORKING_COPY = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_ERR_WC_UPGRADE_REQUIRED = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_CLIENT__MAX_REDIRECT_ATTEMPTS = common dso_local global i32 0, align 4
@svn_wc_notify_url_redirect = common dso_local global i32 0, align 4
@SVN_ERR_CLIENT_CYCLE_DETECTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Redirect cycle detected for URL '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_22__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_22__* @svn_client__open_ra_session_internal(i32** %0, i8** %1, i8* %2, i8* %3, i32* %4, i64 %5, i64 %6, %struct.TYPE_23__* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_22__*, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_21__*, align 8
  %23 = alloca %struct.TYPE_24__*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_22__*, align 8
  %26 = alloca %struct.TYPE_22__*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32*, align 8
  store i32** %0, i32*** %12, align 8
  store i8** %1, i8*** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store i32* %4, i32** %16, align 8
  store i64 %5, i64* %17, align 8
  store i64 %6, i64* %18, align 8
  store %struct.TYPE_23__* %7, %struct.TYPE_23__** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %31 = load i32*, i32** %20, align 8
  %32 = call %struct.TYPE_24__* @apr_pcalloc(i32* %31, i32 32)
  store %struct.TYPE_24__* %32, %struct.TYPE_24__** %23, align 8
  store i8* null, i8** %24, align 8
  %33 = load i64, i64* %17, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %10
  %36 = load i64, i64* %18, align 8
  %37 = icmp ne i64 %36, 0
  br label %38

38:                                               ; preds = %35, %10
  %39 = phi i1 [ true, %10 ], [ %37, %35 ]
  %40 = zext i1 %39 to i32
  %41 = call i32 @SVN_ERR_ASSERT(i32 %40)
  %42 = load i64, i64* %18, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %15, align 8
  %46 = icmp ne i8* %45, null
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi i1 [ true, %38 ], [ %46, %44 ]
  %49 = zext i1 %48 to i32
  %50 = call i32 @SVN_ERR_ASSERT(i32 %49)
  %51 = load i8*, i8** %15, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = load i8*, i8** %15, align 8
  %55 = call i64 @svn_dirent_is_absolute(i8* %54)
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %53, %47
  %58 = phi i1 [ true, %47 ], [ %56, %53 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @SVN_ERR_ASSERT(i32 %59)
  %61 = load i32*, i32** %20, align 8
  %62 = call %struct.TYPE_22__* @svn_ra_create_callbacks(%struct.TYPE_21__** %22, i32* %61)
  %63 = call i32 @SVN_ERR(%struct.TYPE_22__* %62)
  %64 = load i32, i32* @open_tmp_file, align 4
  %65 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %66 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %65, i32 0, i32 13
  store i32 %64, i32* %66, align 8
  %67 = load i64, i64* %18, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = load i32*, i32** @get_wc_prop, align 8
  br label %72

71:                                               ; preds = %57
  br label %72

72:                                               ; preds = %71, %69
  %73 = phi i32* [ %70, %69 ], [ null, %71 ]
  %74 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %75 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %74, i32 0, i32 12
  store i32* %73, i32** %75, align 8
  %76 = load i64, i64* %17, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %72
  %79 = load i64, i64* %18, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = load i32*, i32** @set_wc_prop, align 8
  br label %84

83:                                               ; preds = %78, %72
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32* [ %82, %81 ], [ null, %83 ]
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 11
  store i32* %85, i32** %87, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32*, i32** @push_wc_prop, align 8
  br label %93

92:                                               ; preds = %84
  br label %93

93:                                               ; preds = %92, %90
  %94 = phi i32* [ %91, %90 ], [ null, %92 ]
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 10
  store i32* %94, i32** %96, align 8
  %97 = load i64, i64* %17, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load i64, i64* %18, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i32*, i32** @invalidate_wc_props, align 8
  br label %105

104:                                              ; preds = %99, %93
  br label %105

105:                                              ; preds = %104, %102
  %106 = phi i32* [ %103, %102 ], [ null, %104 ]
  %107 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %108 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %107, i32 0, i32 9
  store i32* %106, i32** %108, align 8
  %109 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %110 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %113 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %112, i32 0, i32 8
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* @progress_func, align 4
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %119 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %118, i32 0, i32 6
  store %struct.TYPE_24__* %117, %struct.TYPE_24__** %119, align 8
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 7
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %105
  %125 = load i32*, i32** @cancel_callback, align 8
  br label %127

126:                                              ; preds = %105
  br label %127

127:                                              ; preds = %126, %124
  %128 = phi i32* [ %125, %124 ], [ null, %126 ]
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %130 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %129, i32 0, i32 5
  store i32* %128, i32** %130, align 8
  %131 = load i32, i32* @get_client_string, align 4
  %132 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %133 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 8
  %134 = load i8*, i8** %15, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %136, label %140

136:                                              ; preds = %127
  %137 = load i32, i32* @get_wc_contents, align 4
  %138 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %139 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %138, i32 0, i32 3
  store i32 %137, i32* %139, align 4
  br label %140

140:                                              ; preds = %136, %127
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 6
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 2
  store i32 %143, i32* %145, align 8
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 5
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 1
  store i32 %148, i32* %150, align 4
  %151 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %152 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %155 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load i32*, i32** %16, align 8
  %157 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %158 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %157, i32 0, i32 4
  store i32* %156, i32** %158, align 8
  %159 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %160 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %161 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %160, i32 0, i32 3
  store %struct.TYPE_23__* %159, %struct.TYPE_23__** %161, align 8
  %162 = load i8*, i8** %15, align 8
  %163 = icmp ne i8* %162, null
  br i1 %163, label %164, label %213

164:                                              ; preds = %140
  %165 = load i64, i64* %18, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %170, label %167

167:                                              ; preds = %164
  %168 = load i64, i64* %17, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %213

170:                                              ; preds = %167, %164
  %171 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %172 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 8
  %174 = load i8*, i8** %15, align 8
  %175 = load i32*, i32** %20, align 8
  %176 = load i32*, i32** %21, align 8
  %177 = call %struct.TYPE_22__* @svn_wc__node_get_repos_info(i32* null, i32* null, i32* null, i8** %24, i32 %173, i8* %174, i32* %175, i32* %176)
  store %struct.TYPE_22__* %177, %struct.TYPE_22__** %25, align 8
  %178 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %179 = icmp ne %struct.TYPE_22__* %178, null
  br i1 %179, label %180, label %201

180:                                              ; preds = %170
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %198, label %186

186:                                              ; preds = %180
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %198, label %192

192:                                              ; preds = %186
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %194 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @SVN_ERR_WC_UPGRADE_REQUIRED, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %192, %186, %180
  %199 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %200 = call i32 @svn_error_clear(%struct.TYPE_22__* %199)
  store i8* null, i8** %24, align 8
  br label %207

201:                                              ; preds = %192, %170
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %203 = call i32 @SVN_ERR(%struct.TYPE_22__* %202)
  %204 = load i32, i32* @TRUE, align 4
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %201, %198
  %208 = load i32*, i32** %20, align 8
  %209 = load i8*, i8** %15, align 8
  %210 = call i32 @apr_pstrdup(i32* %208, i8* %209)
  %211 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %212 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 8
  br label %213

213:                                              ; preds = %207, %167, %140
  %214 = load i8*, i8** %15, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %216, label %255

216:                                              ; preds = %213
  %217 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %218 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %217, i32 0, i32 0
  %219 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %220 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 8
  %222 = load i8*, i8** %15, align 8
  %223 = load i32*, i32** %20, align 8
  %224 = load i32*, i32** %21, align 8
  %225 = call %struct.TYPE_22__* @svn_wc__get_wcroot(i32** %218, i32 %221, i8* %222, i32* %223, i32* %224)
  store %struct.TYPE_22__* %225, %struct.TYPE_22__** %26, align 8
  %226 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %227 = icmp ne %struct.TYPE_22__* %226, null
  br i1 %227, label %228, label %254

228:                                              ; preds = %216
  %229 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %230 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @SVN_ERR_WC_NOT_WORKING_COPY, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %249

234:                                              ; preds = %228
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %249

240:                                              ; preds = %234
  %241 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %242 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* @SVN_ERR_WC_UPGRADE_REQUIRED, align 8
  %245 = icmp ne i64 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %240
  %247 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %248 = call %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__* %247)
  store %struct.TYPE_22__* %248, %struct.TYPE_22__** %11, align 8
  br label %339

249:                                              ; preds = %240, %234, %228
  %250 = load %struct.TYPE_22__*, %struct.TYPE_22__** %26, align 8
  %251 = call i32 @svn_error_clear(%struct.TYPE_22__* %250)
  %252 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %253 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %252, i32 0, i32 0
  store i32* null, i32** %253, align 8
  br label %254

254:                                              ; preds = %249, %216
  br label %255

255:                                              ; preds = %254, %213
  %256 = load i8**, i8*** %13, align 8
  %257 = icmp ne i8** %256, null
  br i1 %257, label %258, label %325

258:                                              ; preds = %255
  %259 = load i32*, i32** %21, align 8
  %260 = call i32* @apr_hash_make(i32* %259)
  store i32* %260, i32** %27, align 8
  %261 = load i32, i32* @SVN_CLIENT__MAX_REDIRECT_ATTEMPTS, align 4
  store i32 %261, i32* %28, align 4
  %262 = load i8**, i8*** %13, align 8
  store i8* null, i8** %262, align 8
  br label %263

263:                                              ; preds = %319, %258
  %264 = load i32, i32* %28, align 4
  %265 = add nsw i32 %264, -1
  store i32 %265, i32* %28, align 4
  %266 = icmp ne i32 %264, 0
  br i1 %266, label %267, label %324

267:                                              ; preds = %263
  store i8* null, i8** %29, align 8
  %268 = load i32**, i32*** %12, align 8
  %269 = load i32, i32* %28, align 4
  %270 = icmp eq i32 %269, 0
  br i1 %270, label %271, label %272

271:                                              ; preds = %267
  br label %273

272:                                              ; preds = %267
  br label %273

273:                                              ; preds = %272, %271
  %274 = phi i8** [ null, %271 ], [ %29, %272 ]
  %275 = load i8*, i8** %14, align 8
  %276 = load i8*, i8** %24, align 8
  %277 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %278 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %279 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %280 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32*, i32** %20, align 8
  %283 = call %struct.TYPE_22__* @svn_ra_open4(i32** %268, i8** %274, i8* %275, i8* %276, %struct.TYPE_21__* %277, %struct.TYPE_24__* %278, i32 %281, i32* %282)
  %284 = call i32 @SVN_ERR(%struct.TYPE_22__* %283)
  %285 = load i8*, i8** %29, align 8
  %286 = icmp ne i8* %285, null
  br i1 %286, label %288, label %287

287:                                              ; preds = %273
  br label %324

288:                                              ; preds = %273
  %289 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %290 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %289, i32 0, i32 2
  %291 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %290, align 8
  %292 = icmp ne i32 (i32, i32*, i32*)* %291, null
  br i1 %292, label %293, label %307

293:                                              ; preds = %288
  %294 = load i8*, i8** %29, align 8
  %295 = load i32, i32* @svn_wc_notify_url_redirect, align 4
  %296 = load i32*, i32** %21, align 8
  %297 = call i32* @svn_wc_create_notify_url(i8* %294, i32 %295, i32* %296)
  store i32* %297, i32** %30, align 8
  %298 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %299 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %298, i32 0, i32 2
  %300 = load i32 (i32, i32*, i32*)*, i32 (i32, i32*, i32*)** %299, align 8
  %301 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %302 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = load i32*, i32** %30, align 8
  %305 = load i32*, i32** %21, align 8
  %306 = call i32 %300(i32 %303, i32* %304, i32* %305)
  br label %307

307:                                              ; preds = %293, %288
  %308 = load i8*, i8** %29, align 8
  %309 = load i8**, i8*** %13, align 8
  store i8* %308, i8** %309, align 8
  %310 = load i32*, i32** %27, align 8
  %311 = load i8*, i8** %29, align 8
  %312 = call i64 @svn_hash_gets(i32* %310, i8* %311)
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %319

314:                                              ; preds = %307
  %315 = load i32, i32* @SVN_ERR_CLIENT_CYCLE_DETECTED, align 4
  %316 = call i32 @_(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %317 = load i8*, i8** %29, align 8
  %318 = call %struct.TYPE_22__* @svn_error_createf(i32 %315, i32* null, i32 %316, i8* %317)
  store %struct.TYPE_22__* %318, %struct.TYPE_22__** %11, align 8
  br label %339

319:                                              ; preds = %307
  %320 = load i32*, i32** %27, align 8
  %321 = load i8*, i8** %29, align 8
  %322 = call i32 @svn_hash_sets(i32* %320, i8* %321, i8* inttoptr (i64 1 to i8*))
  %323 = load i8*, i8** %29, align 8
  store i8* %323, i8** %14, align 8
  br label %263

324:                                              ; preds = %287, %263
  br label %337

325:                                              ; preds = %255
  %326 = load i32**, i32*** %12, align 8
  %327 = load i8*, i8** %14, align 8
  %328 = load i8*, i8** %24, align 8
  %329 = load %struct.TYPE_21__*, %struct.TYPE_21__** %22, align 8
  %330 = load %struct.TYPE_24__*, %struct.TYPE_24__** %23, align 8
  %331 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %332 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32*, i32** %20, align 8
  %335 = call %struct.TYPE_22__* @svn_ra_open4(i32** %326, i8** null, i8* %327, i8* %328, %struct.TYPE_21__* %329, %struct.TYPE_24__* %330, i32 %333, i32* %334)
  %336 = call i32 @SVN_ERR(%struct.TYPE_22__* %335)
  br label %337

337:                                              ; preds = %325, %324
  %338 = load %struct.TYPE_22__*, %struct.TYPE_22__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_22__* %338, %struct.TYPE_22__** %11, align 8
  br label %339

339:                                              ; preds = %337, %314, %246
  %340 = load %struct.TYPE_22__*, %struct.TYPE_22__** %11, align 8
  ret %struct.TYPE_22__* %340
}

declare dso_local %struct.TYPE_24__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_22__* @svn_ra_create_callbacks(%struct.TYPE_21__**, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_wc__node_get_repos_info(i32*, i32*, i32*, i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_22__*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local %struct.TYPE_22__* @svn_wc__get_wcroot(i32**, i32, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_error_trace(%struct.TYPE_22__*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local %struct.TYPE_22__* @svn_ra_open4(i32**, i8**, i8*, i8*, %struct.TYPE_21__*, %struct.TYPE_24__*, i32, i32*) #1

declare dso_local i32* @svn_wc_create_notify_url(i8*, i32, i32*) #1

declare dso_local i64 @svn_hash_gets(i32*, i8*) #1

declare dso_local %struct.TYPE_22__* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
