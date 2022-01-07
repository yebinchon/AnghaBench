; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_diff_prepare_repos_repos.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_diff_prepare_repos_repos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64 }
%struct.TYPE_33__ = type { i32 }
%struct.TYPE_31__ = type { i32 }
%struct.TYPE_34__ = type { i8*, i32 }

@svn_opt_revision_unspecified = common dso_local global i32 0, align 4
@SVN_ERR_CLIENT_UNRELATED_RESOURCES = common dso_local global i64 0, align 8
@SVN_ERR_FS_NOT_FOUND = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_node_none = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [78 x i8] c"Diff target '%s' was not found in the repository at revisions '%ld' and '%ld'\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"Diff targets '%s' and '%s' were not found in the repository at revisions '%ld' and '%ld'\00", align 1
@SVN_ERR_RA_DAV_FORBIDDEN = common dso_local global i64 0, align 8
@SVN_ERR_RA_NOT_AUTHORIZED = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_32__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_32__* (i8**, i8**, i32*, i32*, i8**, i8**, i8**, i8**, i64*, i64*, i32**, %struct.TYPE_33__*, i8*, i8*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_31__*, i32*)* @diff_prepare_repos_repos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_32__* @diff_prepare_repos_repos(i8** %0, i8** %1, i32* %2, i32* %3, i8** %4, i8** %5, i8** %6, i8** %7, i64* %8, i64* %9, i32** %10, %struct.TYPE_33__* %11, i8* %12, i8* %13, %struct.TYPE_31__* %14, %struct.TYPE_31__* %15, %struct.TYPE_31__* %16, i32* %17) #0 {
  %19 = alloca %struct.TYPE_32__*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i8**, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8**, align 8
  %25 = alloca i8**, align 8
  %26 = alloca i8**, align 8
  %27 = alloca i8**, align 8
  %28 = alloca i64*, align 8
  %29 = alloca i64*, align 8
  %30 = alloca i32**, align 8
  %31 = alloca %struct.TYPE_33__*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca %struct.TYPE_31__*, align 8
  %35 = alloca %struct.TYPE_31__*, align 8
  %36 = alloca %struct.TYPE_31__*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  %42 = alloca %struct.TYPE_34__*, align 8
  %43 = alloca %struct.TYPE_34__*, align 8
  %44 = alloca i32, align 4
  %45 = alloca %struct.TYPE_32__*, align 8
  %46 = alloca %struct.TYPE_32__*, align 8
  %47 = alloca i64, align 8
  %48 = alloca %struct.TYPE_32__*, align 8
  store i8** %0, i8*** %20, align 8
  store i8** %1, i8*** %21, align 8
  store i32* %2, i32** %22, align 8
  store i32* %3, i32** %23, align 8
  store i8** %4, i8*** %24, align 8
  store i8** %5, i8*** %25, align 8
  store i8** %6, i8*** %26, align 8
  store i8** %7, i8*** %27, align 8
  store i64* %8, i64** %28, align 8
  store i64* %9, i64** %29, align 8
  store i32** %10, i32*** %30, align 8
  store %struct.TYPE_33__* %11, %struct.TYPE_33__** %31, align 8
  store i8* %12, i8** %32, align 8
  store i8* %13, i8** %33, align 8
  store %struct.TYPE_31__* %14, %struct.TYPE_31__** %34, align 8
  store %struct.TYPE_31__* %15, %struct.TYPE_31__** %35, align 8
  store %struct.TYPE_31__* %16, %struct.TYPE_31__** %36, align 8
  store i32* %17, i32** %37, align 8
  store i8* null, i8** %38, align 8
  store i8* null, i8** %39, align 8
  store i8* null, i8** %41, align 8
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %43, align 8
  %49 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  %50 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %44, align 4
  %52 = load i8*, i8** %33, align 8
  %53 = call i32 @svn_path_is_url(i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %18
  %56 = load i8*, i8** %33, align 8
  %57 = load i32*, i32** %37, align 8
  %58 = call %struct.TYPE_32__* @svn_dirent_get_absolute(i8** %39, i8* %56, i32* %57)
  %59 = call i32 @SVN_ERR(%struct.TYPE_32__* %58)
  %60 = load i8**, i8*** %21, align 8
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %62 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %39, align 8
  %65 = load i32*, i32** %37, align 8
  %66 = load i32*, i32** %37, align 8
  %67 = call %struct.TYPE_32__* @svn_wc__node_get_url(i8** %60, i32 %63, i8* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(%struct.TYPE_32__* %67)
  %69 = load i8*, i8** %39, align 8
  store i8* %69, i8** %41, align 8
  br label %75

70:                                               ; preds = %18
  %71 = load i32*, i32** %37, align 8
  %72 = load i8*, i8** %33, align 8
  %73 = call i8* @apr_pstrdup(i32* %71, i8* %72)
  %74 = load i8**, i8*** %21, align 8
  store i8* %73, i8** %74, align 8
  br label %75

75:                                               ; preds = %70, %55
  %76 = load i8*, i8** %32, align 8
  %77 = call i32 @svn_path_is_url(i8* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %75
  %80 = load i8*, i8** %32, align 8
  %81 = load i32*, i32** %37, align 8
  %82 = call %struct.TYPE_32__* @svn_dirent_get_absolute(i8** %38, i8* %80, i32* %81)
  %83 = call i32 @SVN_ERR(%struct.TYPE_32__* %82)
  %84 = load i8*, i8** %38, align 8
  store i8* %84, i8** %41, align 8
  br label %85

85:                                               ; preds = %79, %75
  %86 = load i32**, i32*** %30, align 8
  %87 = load i8**, i8*** %21, align 8
  %88 = load i8*, i8** %87, align 8
  %89 = load i8*, i8** %41, align 8
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %91 = load i32*, i32** %37, align 8
  %92 = load i32*, i32** %37, align 8
  %93 = call %struct.TYPE_32__* @svn_client_open_ra_session2(i32** %86, i8* %88, i8* %89, %struct.TYPE_33__* %90, i32* %91, i32* %92)
  %94 = call i32 @SVN_ERR(%struct.TYPE_32__* %93)
  %95 = load i32, i32* %44, align 4
  %96 = load i32, i32* @svn_opt_revision_unspecified, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %105, label %98

98:                                               ; preds = %85
  %99 = load i8*, i8** %32, align 8
  %100 = load i8*, i8** %33, align 8
  %101 = icmp eq i8* %99, %100
  br i1 %101, label %105, label %102

102:                                              ; preds = %98
  %103 = load i8*, i8** %39, align 8
  %104 = icmp ne i8* %103, null
  br i1 %104, label %105, label %135

105:                                              ; preds = %102, %98, %85
  %106 = load i32**, i32*** %30, align 8
  %107 = load i32*, i32** %106, align 8
  %108 = load i8*, i8** %33, align 8
  %109 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  %110 = load %struct.TYPE_31__*, %struct.TYPE_31__** %35, align 8
  %111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %112 = load i32*, i32** %37, align 8
  %113 = call %struct.TYPE_32__* @svn_client__resolve_rev_and_url(%struct.TYPE_34__** %43, i32* %107, i8* %108, %struct.TYPE_31__* %109, %struct.TYPE_31__* %110, %struct.TYPE_33__* %111, i32* %112)
  store %struct.TYPE_32__* %113, %struct.TYPE_32__** %45, align 8
  %114 = load %struct.TYPE_32__*, %struct.TYPE_32__** %45, align 8
  %115 = icmp ne %struct.TYPE_32__* %114, null
  br i1 %115, label %116, label %134

116:                                              ; preds = %105
  %117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %45, align 8
  %118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @SVN_ERR_CLIENT_UNRELATED_RESOURCES, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %131

122:                                              ; preds = %116
  %123 = load %struct.TYPE_32__*, %struct.TYPE_32__** %45, align 8
  %124 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load %struct.TYPE_32__*, %struct.TYPE_32__** %45, align 8
  %130 = call %struct.TYPE_32__* @svn_error_trace(%struct.TYPE_32__* %129)
  store %struct.TYPE_32__* %130, %struct.TYPE_32__** %19, align 8
  br label %479

131:                                              ; preds = %122, %116
  %132 = load %struct.TYPE_32__*, %struct.TYPE_32__** %45, align 8
  %133 = call i32 @svn_error_clear(%struct.TYPE_32__* %132)
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %43, align 8
  br label %134

134:                                              ; preds = %131, %105
  br label %136

135:                                              ; preds = %102
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %43, align 8
  br label %136

136:                                              ; preds = %135, %134
  %137 = load i32, i32* %44, align 4
  %138 = load i32, i32* @svn_opt_revision_unspecified, align 4
  %139 = icmp ne i32 %137, %138
  br i1 %139, label %147, label %140

140:                                              ; preds = %136
  %141 = load i8*, i8** %32, align 8
  %142 = load i8*, i8** %33, align 8
  %143 = icmp eq i8* %141, %142
  br i1 %143, label %147, label %144

144:                                              ; preds = %140
  %145 = load i8*, i8** %38, align 8
  %146 = icmp ne i8* %145, null
  br i1 %146, label %147, label %177

147:                                              ; preds = %144, %140, %136
  %148 = load i32**, i32*** %30, align 8
  %149 = load i32*, i32** %148, align 8
  %150 = load i8*, i8** %32, align 8
  %151 = load %struct.TYPE_31__*, %struct.TYPE_31__** %36, align 8
  %152 = load %struct.TYPE_31__*, %struct.TYPE_31__** %34, align 8
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %154 = load i32*, i32** %37, align 8
  %155 = call %struct.TYPE_32__* @svn_client__resolve_rev_and_url(%struct.TYPE_34__** %42, i32* %149, i8* %150, %struct.TYPE_31__* %151, %struct.TYPE_31__* %152, %struct.TYPE_33__* %153, i32* %154)
  store %struct.TYPE_32__* %155, %struct.TYPE_32__** %46, align 8
  %156 = load %struct.TYPE_32__*, %struct.TYPE_32__** %46, align 8
  %157 = icmp ne %struct.TYPE_32__* %156, null
  br i1 %157, label %158, label %176

158:                                              ; preds = %147
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** %46, align 8
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @SVN_ERR_CLIENT_UNRELATED_RESOURCES, align 8
  %163 = icmp ne i64 %161, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %158
  %165 = load %struct.TYPE_32__*, %struct.TYPE_32__** %46, align 8
  %166 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %164
  %171 = load %struct.TYPE_32__*, %struct.TYPE_32__** %46, align 8
  %172 = call %struct.TYPE_32__* @svn_error_trace(%struct.TYPE_32__* %171)
  store %struct.TYPE_32__* %172, %struct.TYPE_32__** %19, align 8
  br label %479

173:                                              ; preds = %164, %158
  %174 = load %struct.TYPE_32__*, %struct.TYPE_32__** %46, align 8
  %175 = call i32 @svn_error_clear(%struct.TYPE_32__* %174)
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %42, align 8
  br label %176

176:                                              ; preds = %173, %147
  br label %178

177:                                              ; preds = %144
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %42, align 8
  br label %178

178:                                              ; preds = %177, %176
  %179 = load %struct.TYPE_34__*, %struct.TYPE_34__** %42, align 8
  %180 = icmp ne %struct.TYPE_34__* %179, null
  br i1 %180, label %181, label %190

181:                                              ; preds = %178
  %182 = load %struct.TYPE_34__*, %struct.TYPE_34__** %42, align 8
  %183 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %182, i32 0, i32 0
  %184 = load i8*, i8** %183, align 8
  %185 = load i8**, i8*** %20, align 8
  store i8* %184, i8** %185, align 8
  %186 = load %struct.TYPE_34__*, %struct.TYPE_34__** %42, align 8
  %187 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = load i32*, i32** %22, align 8
  store i32 %188, i32* %189, align 4
  br label %235

190:                                              ; preds = %178
  %191 = load %struct.TYPE_34__*, %struct.TYPE_34__** %43, align 8
  %192 = icmp ne %struct.TYPE_34__* %191, null
  br i1 %192, label %193, label %206

193:                                              ; preds = %190
  %194 = load i32, i32* %44, align 4
  %195 = load i32, i32* @svn_opt_revision_unspecified, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %201, label %197

197:                                              ; preds = %193
  %198 = load i8*, i8** %32, align 8
  %199 = load i8*, i8** %33, align 8
  %200 = icmp eq i8* %198, %199
  br i1 %200, label %201, label %206

201:                                              ; preds = %197, %193
  %202 = load %struct.TYPE_34__*, %struct.TYPE_34__** %43, align 8
  %203 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load i8**, i8*** %20, align 8
  store i8* %204, i8** %205, align 8
  br label %223

206:                                              ; preds = %197, %190
  %207 = load i8*, i8** %38, align 8
  %208 = icmp ne i8* %207, null
  br i1 %208, label %212, label %209

209:                                              ; preds = %206
  %210 = load i8*, i8** %32, align 8
  %211 = load i8**, i8*** %20, align 8
  store i8* %210, i8** %211, align 8
  br label %222

212:                                              ; preds = %206
  %213 = load i8**, i8*** %20, align 8
  %214 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %215 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = load i8*, i8** %38, align 8
  %218 = load i32*, i32** %37, align 8
  %219 = load i32*, i32** %37, align 8
  %220 = call %struct.TYPE_32__* @svn_wc__node_get_url(i8** %213, i32 %216, i8* %217, i32* %218, i32* %219)
  %221 = call i32 @SVN_ERR(%struct.TYPE_32__* %220)
  br label %222

222:                                              ; preds = %212, %209
  br label %223

223:                                              ; preds = %222, %201
  %224 = load i32*, i32** %22, align 8
  %225 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %226 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = load i8*, i8** %38, align 8
  %229 = load i32**, i32*** %30, align 8
  %230 = load i32*, i32** %229, align 8
  %231 = load %struct.TYPE_31__*, %struct.TYPE_31__** %34, align 8
  %232 = load i32*, i32** %37, align 8
  %233 = call %struct.TYPE_32__* @svn_client__get_revision_number(i32* %224, i32* null, i32 %227, i8* %228, i32* %230, %struct.TYPE_31__* %231, i32* %232)
  %234 = call i32 @SVN_ERR(%struct.TYPE_32__* %233)
  br label %235

235:                                              ; preds = %223, %181
  %236 = load %struct.TYPE_34__*, %struct.TYPE_34__** %43, align 8
  %237 = icmp ne %struct.TYPE_34__* %236, null
  br i1 %237, label %238, label %247

238:                                              ; preds = %235
  %239 = load %struct.TYPE_34__*, %struct.TYPE_34__** %43, align 8
  %240 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %239, i32 0, i32 0
  %241 = load i8*, i8** %240, align 8
  %242 = load i8**, i8*** %21, align 8
  store i8* %241, i8** %242, align 8
  %243 = load %struct.TYPE_34__*, %struct.TYPE_34__** %43, align 8
  %244 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = load i32*, i32** %23, align 8
  store i32 %245, i32* %246, align 4
  br label %275

247:                                              ; preds = %235
  %248 = load %struct.TYPE_34__*, %struct.TYPE_34__** %42, align 8
  %249 = icmp ne %struct.TYPE_34__* %248, null
  br i1 %249, label %250, label %263

250:                                              ; preds = %247
  %251 = load i32, i32* %44, align 4
  %252 = load i32, i32* @svn_opt_revision_unspecified, align 4
  %253 = icmp ne i32 %251, %252
  br i1 %253, label %258, label %254

254:                                              ; preds = %250
  %255 = load i8*, i8** %32, align 8
  %256 = load i8*, i8** %33, align 8
  %257 = icmp eq i8* %255, %256
  br i1 %257, label %258, label %263

258:                                              ; preds = %254, %250
  %259 = load %struct.TYPE_34__*, %struct.TYPE_34__** %42, align 8
  %260 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = load i8**, i8*** %21, align 8
  store i8* %261, i8** %262, align 8
  br label %263

263:                                              ; preds = %258, %254, %247
  %264 = load i32*, i32** %23, align 8
  %265 = load %struct.TYPE_33__*, %struct.TYPE_33__** %31, align 8
  %266 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = load i8*, i8** %39, align 8
  %269 = load i32**, i32*** %30, align 8
  %270 = load i32*, i32** %269, align 8
  %271 = load %struct.TYPE_31__*, %struct.TYPE_31__** %35, align 8
  %272 = load i32*, i32** %37, align 8
  %273 = call %struct.TYPE_32__* @svn_client__get_revision_number(i32* %264, i32* null, i32 %267, i8* %268, i32* %270, %struct.TYPE_31__* %271, i32* %272)
  %274 = call i32 @SVN_ERR(%struct.TYPE_32__* %273)
  br label %275

275:                                              ; preds = %263, %238
  %276 = load i32**, i32*** %30, align 8
  %277 = load i32*, i32** %276, align 8
  %278 = load i8**, i8*** %21, align 8
  %279 = load i8*, i8** %278, align 8
  %280 = load i32*, i32** %37, align 8
  %281 = call %struct.TYPE_32__* @svn_ra_reparent(i32* %277, i8* %279, i32* %280)
  %282 = call i32 @SVN_ERR(%struct.TYPE_32__* %281)
  %283 = load i32**, i32*** %30, align 8
  %284 = load i32*, i32** %283, align 8
  %285 = load i32*, i32** %23, align 8
  %286 = load i32, i32* %285, align 4
  %287 = load i64*, i64** %29, align 8
  %288 = load i32*, i32** %37, align 8
  %289 = call %struct.TYPE_32__* @svn_ra_check_path(i32* %284, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %286, i64* %287, i32* %288)
  %290 = call i32 @SVN_ERR(%struct.TYPE_32__* %289)
  %291 = load i32**, i32*** %30, align 8
  %292 = load i32*, i32** %291, align 8
  %293 = load i8**, i8*** %20, align 8
  %294 = load i8*, i8** %293, align 8
  %295 = load i32*, i32** %37, align 8
  %296 = call %struct.TYPE_32__* @svn_ra_reparent(i32* %292, i8* %294, i32* %295)
  %297 = call i32 @SVN_ERR(%struct.TYPE_32__* %296)
  %298 = load i32**, i32*** %30, align 8
  %299 = load i32*, i32** %298, align 8
  %300 = load i32*, i32** %22, align 8
  %301 = load i32, i32* %300, align 4
  %302 = load i64*, i64** %28, align 8
  %303 = load i32*, i32** %37, align 8
  %304 = call %struct.TYPE_32__* @svn_ra_check_path(i32* %299, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %301, i64* %302, i32* %303)
  %305 = call i32 @SVN_ERR(%struct.TYPE_32__* %304)
  %306 = load i64*, i64** %28, align 8
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @svn_node_none, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %346

310:                                              ; preds = %275
  %311 = load i64*, i64** %29, align 8
  %312 = load i64, i64* %311, align 8
  %313 = load i64, i64* @svn_node_none, align 8
  %314 = icmp eq i64 %312, %313
  br i1 %314, label %315, label %346

315:                                              ; preds = %310
  %316 = load i8**, i8*** %20, align 8
  %317 = load i8*, i8** %316, align 8
  %318 = load i8**, i8*** %21, align 8
  %319 = load i8*, i8** %318, align 8
  %320 = call i64 @strcmp(i8* %317, i8* %319)
  %321 = icmp eq i64 %320, 0
  br i1 %321, label %322, label %334

322:                                              ; preds = %315
  %323 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %324 = call i32 @_(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.1, i64 0, i64 0))
  %325 = load i8**, i8*** %20, align 8
  %326 = load i8*, i8** %325, align 8
  %327 = load i32*, i32** %22, align 8
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = inttoptr i64 %329 to i8*
  %331 = load i32*, i32** %23, align 8
  %332 = load i32, i32* %331, align 4
  %333 = call %struct.TYPE_32__* (i64, i32*, i32, i8*, i8*, i32, ...) @svn_error_createf(i64 %323, i32* null, i32 %324, i8* %326, i8* %330, i32 %332)
  store %struct.TYPE_32__* %333, %struct.TYPE_32__** %19, align 8
  br label %479

334:                                              ; preds = %315
  %335 = load i64, i64* @SVN_ERR_FS_NOT_FOUND, align 8
  %336 = call i32 @_(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0))
  %337 = load i8**, i8*** %20, align 8
  %338 = load i8*, i8** %337, align 8
  %339 = load i8**, i8*** %21, align 8
  %340 = load i8*, i8** %339, align 8
  %341 = load i32*, i32** %22, align 8
  %342 = load i32, i32* %341, align 4
  %343 = load i32*, i32** %23, align 8
  %344 = load i32, i32* %343, align 4
  %345 = call %struct.TYPE_32__* (i64, i32*, i32, i8*, i8*, i32, ...) @svn_error_createf(i64 %335, i32* null, i32 %336, i8* %338, i8* %340, i32 %342, i32 %344)
  store %struct.TYPE_32__* %345, %struct.TYPE_32__** %19, align 8
  br label %479

346:                                              ; preds = %310, %275
  %347 = load i64*, i64** %28, align 8
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @svn_node_none, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %363

351:                                              ; preds = %346
  %352 = load i8**, i8*** %20, align 8
  %353 = load i8*, i8** %352, align 8
  %354 = load i32*, i32** %23, align 8
  %355 = load i32, i32* %354, align 4
  %356 = load i32*, i32** %22, align 8
  %357 = load i32, i32* %356, align 4
  %358 = load i32**, i32*** %30, align 8
  %359 = load i32*, i32** %358, align 8
  %360 = load i32*, i32** %37, align 8
  %361 = call %struct.TYPE_32__* @check_diff_target_exists(i8* %353, i32 %355, i32 %357, i32* %359, i32* %360)
  %362 = call i32 @SVN_ERR(%struct.TYPE_32__* %361)
  br label %381

363:                                              ; preds = %346
  %364 = load i64*, i64** %29, align 8
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @svn_node_none, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %380

368:                                              ; preds = %363
  %369 = load i8**, i8*** %21, align 8
  %370 = load i8*, i8** %369, align 8
  %371 = load i32*, i32** %22, align 8
  %372 = load i32, i32* %371, align 4
  %373 = load i32*, i32** %23, align 8
  %374 = load i32, i32* %373, align 4
  %375 = load i32**, i32*** %30, align 8
  %376 = load i32*, i32** %375, align 8
  %377 = load i32*, i32** %37, align 8
  %378 = call %struct.TYPE_32__* @check_diff_target_exists(i8* %370, i32 %372, i32 %374, i32* %376, i32* %377)
  %379 = call i32 @SVN_ERR(%struct.TYPE_32__* %378)
  br label %380

380:                                              ; preds = %368, %363
  br label %381

381:                                              ; preds = %380, %351
  br label %382

382:                                              ; preds = %381
  %383 = load i32**, i32*** %30, align 8
  %384 = load i32*, i32** %383, align 8
  %385 = load i32*, i32** %37, align 8
  %386 = call %struct.TYPE_32__* @svn_ra_get_repos_root2(i32* %384, i8** %40, i32* %385)
  %387 = call i32 @SVN_ERR(%struct.TYPE_32__* %386)
  %388 = load i8**, i8*** %20, align 8
  %389 = load i8*, i8** %388, align 8
  %390 = load i8**, i8*** %24, align 8
  store i8* %389, i8** %390, align 8
  %391 = load i8**, i8*** %21, align 8
  %392 = load i8*, i8** %391, align 8
  %393 = load i8**, i8*** %25, align 8
  store i8* %392, i8** %393, align 8
  %394 = load i8**, i8*** %26, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %394, align 8
  %395 = load i8**, i8*** %27, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %395, align 8
  %396 = load i8**, i8*** %20, align 8
  %397 = load i8*, i8** %396, align 8
  %398 = load i8*, i8** %40, align 8
  %399 = call i64 @strcmp(i8* %397, i8* %398)
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %477

401:                                              ; preds = %382
  %402 = load i8**, i8*** %21, align 8
  %403 = load i8*, i8** %402, align 8
  %404 = load i8*, i8** %40, align 8
  %405 = call i64 @strcmp(i8* %403, i8* %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %477

407:                                              ; preds = %401
  %408 = load i8**, i8*** %24, align 8
  %409 = load i8**, i8*** %26, align 8
  %410 = load i8**, i8*** %20, align 8
  %411 = load i8*, i8** %410, align 8
  %412 = load i32*, i32** %37, align 8
  %413 = call i32 @svn_uri_split(i8** %408, i8** %409, i8* %411, i32* %412)
  %414 = load i8**, i8*** %25, align 8
  %415 = load i8**, i8*** %27, align 8
  %416 = load i8**, i8*** %21, align 8
  %417 = load i8*, i8** %416, align 8
  %418 = load i32*, i32** %37, align 8
  %419 = call i32 @svn_uri_split(i8** %414, i8** %415, i8* %417, i32* %418)
  %420 = load i32**, i32*** %30, align 8
  %421 = load i32*, i32** %420, align 8
  %422 = load i8**, i8*** %24, align 8
  %423 = load i8*, i8** %422, align 8
  %424 = load i32*, i32** %37, align 8
  %425 = call %struct.TYPE_32__* @svn_ra_reparent(i32* %421, i8* %423, i32* %424)
  %426 = call i32 @SVN_ERR(%struct.TYPE_32__* %425)
  %427 = load i32**, i32*** %30, align 8
  %428 = load i32*, i32** %427, align 8
  %429 = load i32*, i32** %22, align 8
  %430 = load i32, i32* %429, align 4
  %431 = load i32*, i32** %37, align 8
  %432 = call %struct.TYPE_32__* @svn_ra_check_path(i32* %428, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %430, i64* %47, i32* %431)
  store %struct.TYPE_32__* %432, %struct.TYPE_32__** %48, align 8
  %433 = load %struct.TYPE_32__*, %struct.TYPE_32__** %48, align 8
  %434 = icmp ne %struct.TYPE_32__* %433, null
  br i1 %434, label %435, label %473

435:                                              ; preds = %407
  %436 = load %struct.TYPE_32__*, %struct.TYPE_32__** %48, align 8
  %437 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %436, i32 0, i32 0
  %438 = load i64, i64* %437, align 8
  %439 = load i64, i64* @SVN_ERR_RA_DAV_FORBIDDEN, align 8
  %440 = icmp eq i64 %438, %439
  br i1 %440, label %447, label %441

441:                                              ; preds = %435
  %442 = load %struct.TYPE_32__*, %struct.TYPE_32__** %48, align 8
  %443 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %442, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = load i64, i64* @SVN_ERR_RA_NOT_AUTHORIZED, align 8
  %446 = icmp eq i64 %444, %445
  br i1 %446, label %447, label %473

447:                                              ; preds = %441, %435
  %448 = load %struct.TYPE_32__*, %struct.TYPE_32__** %48, align 8
  %449 = call i32 @svn_error_clear(%struct.TYPE_32__* %448)
  %450 = load i8**, i8*** %24, align 8
  %451 = load i8*, i8** %450, align 8
  %452 = load i8**, i8*** %26, align 8
  %453 = load i8*, i8** %452, align 8
  %454 = load i32*, i32** %37, align 8
  %455 = call i8* @svn_path_url_add_component2(i8* %451, i8* %453, i32* %454)
  %456 = load i8**, i8*** %24, align 8
  store i8* %455, i8** %456, align 8
  %457 = load i8**, i8*** %25, align 8
  %458 = load i8*, i8** %457, align 8
  %459 = load i8**, i8*** %27, align 8
  %460 = load i8*, i8** %459, align 8
  %461 = load i32*, i32** %37, align 8
  %462 = call i8* @svn_path_url_add_component2(i8* %458, i8* %460, i32* %461)
  %463 = load i8**, i8*** %25, align 8
  store i8* %462, i8** %463, align 8
  %464 = load i8**, i8*** %26, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %464, align 8
  %465 = load i8**, i8*** %27, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %465, align 8
  %466 = load i32**, i32*** %30, align 8
  %467 = load i32*, i32** %466, align 8
  %468 = load i8**, i8*** %24, align 8
  %469 = load i8*, i8** %468, align 8
  %470 = load i32*, i32** %37, align 8
  %471 = call %struct.TYPE_32__* @svn_ra_reparent(i32* %467, i8* %469, i32* %470)
  %472 = call i32 @SVN_ERR(%struct.TYPE_32__* %471)
  br label %476

473:                                              ; preds = %441, %407
  %474 = load %struct.TYPE_32__*, %struct.TYPE_32__** %48, align 8
  %475 = call i32 @SVN_ERR(%struct.TYPE_32__* %474)
  br label %476

476:                                              ; preds = %473, %447
  br label %477

477:                                              ; preds = %476, %401, %382
  %478 = load %struct.TYPE_32__*, %struct.TYPE_32__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_32__* %478, %struct.TYPE_32__** %19, align 8
  br label %479

479:                                              ; preds = %477, %334, %322, %170, %128
  %480 = load %struct.TYPE_32__*, %struct.TYPE_32__** %19, align 8
  ret %struct.TYPE_32__* %480
}

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_32__* @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_32__* @svn_wc__node_get_url(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local %struct.TYPE_32__* @svn_client_open_ra_session2(i32**, i8*, i8*, %struct.TYPE_33__*, i32*, i32*) #1

declare dso_local %struct.TYPE_32__* @svn_client__resolve_rev_and_url(%struct.TYPE_34__**, i32*, i8*, %struct.TYPE_31__*, %struct.TYPE_31__*, %struct.TYPE_33__*, i32*) #1

declare dso_local %struct.TYPE_32__* @svn_error_trace(%struct.TYPE_32__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_32__*) #1

declare dso_local %struct.TYPE_32__* @svn_client__get_revision_number(i32*, i32*, i32, i8*, i32*, %struct.TYPE_31__*, i32*) #1

declare dso_local %struct.TYPE_32__* @svn_ra_reparent(i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_32__* @svn_ra_check_path(i32*, i8*, i32, i64*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local %struct.TYPE_32__* @svn_error_createf(i64, i32*, i32, i8*, i8*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_32__* @check_diff_target_exists(i8*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_32__* @svn_ra_get_repos_root2(i32*, i8**, i32*) #1

declare dso_local i32 @svn_uri_split(i8**, i8**, i8*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
