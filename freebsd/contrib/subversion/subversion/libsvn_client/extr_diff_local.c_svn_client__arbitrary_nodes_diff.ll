; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_local.c_svn_client__arbitrary_nodes_diff.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff_local.c_svn_client__arbitrary_nodes_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 (i8*, i32*, i32*, i8*, %struct.TYPE_7__*, i32*)*, i32 (i8**, i64*, i64*, i8*, i32*, i32*, i32*, i32*, %struct.TYPE_7__*, i32*, i32*)* }

@TRUE = common dso_local global i64 0, align 8
@svn_depth_unknown = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FALSE = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_NODE_UNEXPECTED_KIND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"'%s' is not a file or directory\00", align 1
@svn_node_none = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__arbitrary_nodes_diff(i8** %0, i64* %1, i8* %2, i8* %3, i32 %4, %struct.TYPE_7__* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  store i8** %0, i8*** %11, align 8
  store i64* %1, i64** %12, align 8
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store %struct.TYPE_7__* %5, %struct.TYPE_7__** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %30 = load i64, i64* @TRUE, align 8
  store i64 %30, i64* %24, align 8
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* @svn_depth_unknown, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %9
  %35 = load i32, i32* @svn_depth_infinity, align 4
  store i32 %35, i32* %15, align 4
  br label %36

36:                                               ; preds = %34, %9
  %37 = load i8*, i8** %13, align 8
  %38 = load i32*, i32** %19, align 8
  %39 = call i32 @svn_io_check_resolved_path(i8* %37, i64* %20, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i8*, i8** %14, align 8
  %42 = load i32*, i32** %19, align 8
  %43 = call i32 @svn_io_check_resolved_path(i8* %41, i64* %21, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i64, i64* %20, align 8
  %46 = load i64, i64* @svn_node_dir, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %36
  %49 = load i64, i64* %21, align 8
  %50 = load i64, i64* @svn_node_dir, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %66

52:                                               ; preds = %48
  %53 = load i8*, i8** %13, align 8
  store i8* %53, i8** %22, align 8
  %54 = load i8*, i8** %14, align 8
  store i8* %54, i8** %23, align 8
  %55 = load i8**, i8*** %11, align 8
  %56 = icmp ne i8** %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i8**, i8*** %11, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %58, align 8
  br label %59

59:                                               ; preds = %57, %52
  %60 = load i64*, i64** %12, align 8
  %61 = icmp ne i64* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i64, i64* @TRUE, align 8
  %64 = load i64*, i64** %12, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %62, %59
  br label %89

66:                                               ; preds = %48, %36
  %67 = load i8**, i8*** %11, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = load i32*, i32** %19, align 8
  %70 = call i32 @svn_dirent_split(i8** %22, i8** %67, i8* %68, i32* %69)
  %71 = load i8*, i8** %14, align 8
  %72 = load i32*, i32** %19, align 8
  %73 = call i8* @svn_dirent_dirname(i8* %71, i32* %72)
  store i8* %73, i8** %23, align 8
  %74 = load i8**, i8*** %11, align 8
  %75 = icmp ne i8** %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %66
  %77 = load i32*, i32** %18, align 8
  %78 = load i8**, i8*** %11, align 8
  %79 = load i8*, i8** %78, align 8
  %80 = call i8* @apr_pstrdup(i32* %77, i8* %79)
  %81 = load i8**, i8*** %11, align 8
  store i8* %80, i8** %81, align 8
  br label %82

82:                                               ; preds = %76, %66
  %83 = load i64*, i64** %12, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i64, i64* @FALSE, align 8
  %87 = load i64*, i64** %12, align 8
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %82
  br label %89

89:                                               ; preds = %88, %65
  %90 = load i64, i64* %20, align 8
  %91 = load i64, i64* @svn_node_dir, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %111

93:                                               ; preds = %89
  %94 = load i64, i64* %21, align 8
  %95 = load i64, i64* @svn_node_dir, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %93
  %98 = load i8*, i8** %13, align 8
  %99 = load i8*, i8** %14, align 8
  %100 = load i8*, i8** %22, align 8
  %101 = load i8*, i8** %23, align 8
  %102 = load i64, i64* @FALSE, align 8
  %103 = load i64, i64* @FALSE, align 8
  %104 = load i64, i64* %24, align 8
  %105 = load i32, i32* %15, align 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %107 = load i32*, i32** %17, align 8
  %108 = load i32*, i32** %19, align 8
  %109 = call i32 @do_dir_diff(i8* %98, i8* %99, i8* %100, i8* %101, i64 %102, i64 %103, i64 %104, i32 %105, i32* null, %struct.TYPE_7__* %106, i32* %107, i32* %108)
  %110 = call i32 @SVN_ERR(i32 %109)
  br label %316

111:                                              ; preds = %93, %89
  %112 = load i64, i64* %20, align 8
  %113 = load i64, i64* @svn_node_file, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %131

115:                                              ; preds = %111
  %116 = load i64, i64* %21, align 8
  %117 = load i64, i64* @svn_node_file, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %131

119:                                              ; preds = %115
  %120 = load i8*, i8** %13, align 8
  %121 = load i8*, i8** %14, align 8
  %122 = load i8*, i8** %22, align 8
  %123 = load i8*, i8** %23, align 8
  %124 = load i64, i64* @FALSE, align 8
  %125 = load i64, i64* @FALSE, align 8
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %127 = load i32*, i32** %17, align 8
  %128 = load i32*, i32** %19, align 8
  %129 = call i32 @do_file_diff(i8* %120, i8* %121, i8* %122, i8* %123, i64 %124, i64 %125, i32* null, %struct.TYPE_7__* %126, i32* %127, i32* %128)
  %130 = call i32 @SVN_ERR(i32 %129)
  br label %315

131:                                              ; preds = %115, %111
  %132 = load i64, i64* %20, align 8
  %133 = load i64, i64* @svn_node_file, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %147, label %135

135:                                              ; preds = %131
  %136 = load i64, i64* %20, align 8
  %137 = load i64, i64* @svn_node_dir, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %147, label %139

139:                                              ; preds = %135
  %140 = load i64, i64* %21, align 8
  %141 = load i64, i64* @svn_node_file, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %147, label %143

143:                                              ; preds = %139
  %144 = load i64, i64* %21, align 8
  %145 = load i64, i64* @svn_node_dir, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %299

147:                                              ; preds = %143, %139, %135, %131
  %148 = load i64, i64* @FALSE, align 8
  store i64 %148, i64* %26, align 8
  %149 = load i64, i64* @FALSE, align 8
  store i64 %149, i64* %27, align 8
  %150 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %151 = load i32*, i32** %19, align 8
  %152 = call i32* @svn_diff__source_create(i32 %150, i32* %151)
  store i32* %152, i32** %28, align 8
  %153 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %154 = load i32*, i32** %19, align 8
  %155 = call i32* @svn_diff__source_create(i32 %153, i32* %154)
  store i32* %155, i32** %29, align 8
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 1
  %158 = load i32 (i8**, i64*, i64*, i8*, i32*, i32*, i32*, i32*, %struct.TYPE_7__*, i32*, i32*)*, i32 (i8**, i64*, i64*, i8*, i32*, i32*, i32*, i32*, %struct.TYPE_7__*, i32*, i32*)** %157, align 8
  %159 = load i32*, i32** %28, align 8
  %160 = load i32*, i32** %29, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %162 = load i32*, i32** %19, align 8
  %163 = load i32*, i32** %19, align 8
  %164 = call i32 %158(i8** %25, i64* %26, i64* %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %159, i32* %160, i32* null, i32* null, %struct.TYPE_7__* %161, i32* %162, i32* %163)
  %165 = call i32 @SVN_ERR(i32 %164)
  %166 = load i64, i64* %26, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %147
  %169 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %169, i32** %10, align 8
  br label %318

170:                                              ; preds = %147
  %171 = load i64, i64* %27, align 8
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %287, label %173

173:                                              ; preds = %170
  %174 = load i64, i64* %24, align 8
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %212

176:                                              ; preds = %173
  %177 = load i64, i64* %20, align 8
  %178 = load i64, i64* @svn_node_file, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %192

180:                                              ; preds = %176
  %181 = load i8*, i8** %13, align 8
  %182 = load i8*, i8** %14, align 8
  %183 = load i8*, i8** %22, align 8
  %184 = load i8*, i8** %23, align 8
  %185 = load i64, i64* @TRUE, align 8
  %186 = load i64, i64* @FALSE, align 8
  %187 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %188 = load i32*, i32** %17, align 8
  %189 = load i32*, i32** %19, align 8
  %190 = call i32 @do_file_diff(i8* %181, i8* %182, i8* %183, i8* %184, i64 %185, i64 %186, i32* null, %struct.TYPE_7__* %187, i32* %188, i32* %189)
  %191 = call i32 @SVN_ERR(i32 %190)
  br label %211

192:                                              ; preds = %176
  %193 = load i64, i64* %20, align 8
  %194 = load i64, i64* @svn_node_dir, align 8
  %195 = icmp eq i64 %193, %194
  br i1 %195, label %196, label %210

196:                                              ; preds = %192
  %197 = load i8*, i8** %13, align 8
  %198 = load i8*, i8** %14, align 8
  %199 = load i8*, i8** %22, align 8
  %200 = load i8*, i8** %23, align 8
  %201 = load i64, i64* @TRUE, align 8
  %202 = load i64, i64* @FALSE, align 8
  %203 = load i64, i64* %24, align 8
  %204 = load i32, i32* %15, align 4
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %206 = load i32*, i32** %17, align 8
  %207 = load i32*, i32** %19, align 8
  %208 = call i32 @do_dir_diff(i8* %197, i8* %198, i8* %199, i8* %200, i64 %201, i64 %202, i64 %203, i32 %204, i32* null, %struct.TYPE_7__* %205, i32* %206, i32* %207)
  %209 = call i32 @SVN_ERR(i32 %208)
  br label %210

210:                                              ; preds = %196, %192
  br label %211

211:                                              ; preds = %210, %180
  br label %212

212:                                              ; preds = %211, %173
  %213 = load i64, i64* %21, align 8
  %214 = load i64, i64* @svn_node_file, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %228

216:                                              ; preds = %212
  %217 = load i8*, i8** %13, align 8
  %218 = load i8*, i8** %14, align 8
  %219 = load i8*, i8** %22, align 8
  %220 = load i8*, i8** %23, align 8
  %221 = load i64, i64* @FALSE, align 8
  %222 = load i64, i64* @TRUE, align 8
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %224 = load i32*, i32** %17, align 8
  %225 = load i32*, i32** %19, align 8
  %226 = call i32 @do_file_diff(i8* %217, i8* %218, i8* %219, i8* %220, i64 %221, i64 %222, i32* null, %struct.TYPE_7__* %223, i32* %224, i32* %225)
  %227 = call i32 @SVN_ERR(i32 %226)
  br label %247

228:                                              ; preds = %212
  %229 = load i64, i64* %21, align 8
  %230 = load i64, i64* @svn_node_dir, align 8
  %231 = icmp eq i64 %229, %230
  br i1 %231, label %232, label %246

232:                                              ; preds = %228
  %233 = load i8*, i8** %13, align 8
  %234 = load i8*, i8** %14, align 8
  %235 = load i8*, i8** %22, align 8
  %236 = load i8*, i8** %23, align 8
  %237 = load i64, i64* @FALSE, align 8
  %238 = load i64, i64* @TRUE, align 8
  %239 = load i64, i64* %24, align 8
  %240 = load i32, i32* %15, align 4
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %242 = load i32*, i32** %17, align 8
  %243 = load i32*, i32** %19, align 8
  %244 = call i32 @do_dir_diff(i8* %233, i8* %234, i8* %235, i8* %236, i64 %237, i64 %238, i64 %239, i32 %240, i32* null, %struct.TYPE_7__* %241, i32* %242, i32* %243)
  %245 = call i32 @SVN_ERR(i32 %244)
  br label %246

246:                                              ; preds = %232, %228
  br label %247

247:                                              ; preds = %246, %216
  %248 = load i64, i64* %24, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %286, label %250

250:                                              ; preds = %247
  %251 = load i64, i64* %20, align 8
  %252 = load i64, i64* @svn_node_file, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %266

254:                                              ; preds = %250
  %255 = load i8*, i8** %13, align 8
  %256 = load i8*, i8** %14, align 8
  %257 = load i8*, i8** %22, align 8
  %258 = load i8*, i8** %23, align 8
  %259 = load i64, i64* @TRUE, align 8
  %260 = load i64, i64* @FALSE, align 8
  %261 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %262 = load i32*, i32** %17, align 8
  %263 = load i32*, i32** %19, align 8
  %264 = call i32 @do_file_diff(i8* %255, i8* %256, i8* %257, i8* %258, i64 %259, i64 %260, i32* null, %struct.TYPE_7__* %261, i32* %262, i32* %263)
  %265 = call i32 @SVN_ERR(i32 %264)
  br label %285

266:                                              ; preds = %250
  %267 = load i64, i64* %20, align 8
  %268 = load i64, i64* @svn_node_dir, align 8
  %269 = icmp eq i64 %267, %268
  br i1 %269, label %270, label %284

270:                                              ; preds = %266
  %271 = load i8*, i8** %13, align 8
  %272 = load i8*, i8** %14, align 8
  %273 = load i8*, i8** %22, align 8
  %274 = load i8*, i8** %23, align 8
  %275 = load i64, i64* @TRUE, align 8
  %276 = load i64, i64* @FALSE, align 8
  %277 = load i64, i64* %24, align 8
  %278 = load i32, i32* %15, align 4
  %279 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %280 = load i32*, i32** %17, align 8
  %281 = load i32*, i32** %19, align 8
  %282 = call i32 @do_dir_diff(i8* %271, i8* %272, i8* %273, i8* %274, i64 %275, i64 %276, i64 %277, i32 %278, i32* null, %struct.TYPE_7__* %279, i32* %280, i32* %281)
  %283 = call i32 @SVN_ERR(i32 %282)
  br label %284

284:                                              ; preds = %270, %266
  br label %285

285:                                              ; preds = %284, %254
  br label %286

286:                                              ; preds = %285, %247
  br label %287

287:                                              ; preds = %286, %170
  br label %288

288:                                              ; preds = %287
  %289 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %290 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %289, i32 0, i32 0
  %291 = load i32 (i8*, i32*, i32*, i8*, %struct.TYPE_7__*, i32*)*, i32 (i8*, i32*, i32*, i8*, %struct.TYPE_7__*, i32*)** %290, align 8
  %292 = load i32*, i32** %28, align 8
  %293 = load i32*, i32** %29, align 8
  %294 = load i8*, i8** %25, align 8
  %295 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %296 = load i32*, i32** %19, align 8
  %297 = call i32 %291(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %292, i32* %293, i8* %294, %struct.TYPE_7__* %295, i32* %296)
  %298 = call i32 @SVN_ERR(i32 %297)
  br label %314

299:                                              ; preds = %143
  %300 = load i32, i32* @SVN_ERR_NODE_UNEXPECTED_KIND, align 4
  %301 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %302 = load i64, i64* %20, align 8
  %303 = load i64, i64* @svn_node_none, align 8
  %304 = icmp eq i64 %302, %303
  br i1 %304, label %305, label %307

305:                                              ; preds = %299
  %306 = load i8*, i8** %13, align 8
  br label %309

307:                                              ; preds = %299
  %308 = load i8*, i8** %14, align 8
  br label %309

309:                                              ; preds = %307, %305
  %310 = phi i8* [ %306, %305 ], [ %308, %307 ]
  %311 = load i32*, i32** %19, align 8
  %312 = call i32 @svn_dirent_local_style(i8* %310, i32* %311)
  %313 = call i32* @svn_error_createf(i32 %300, i32* null, i32 %301, i32 %312)
  store i32* %313, i32** %10, align 8
  br label %318

314:                                              ; preds = %288
  br label %315

315:                                              ; preds = %314, %119
  br label %316

316:                                              ; preds = %315, %97
  %317 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %317, i32** %10, align 8
  br label %318

318:                                              ; preds = %316, %309, %168
  %319 = load i32*, i32** %10, align 8
  ret i32* %319
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_resolved_path(i8*, i64*, i32*) #1

declare dso_local i32 @svn_dirent_split(i8**, i8**, i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @do_dir_diff(i8*, i8*, i8*, i8*, i64, i64, i64, i32, i32*, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32 @do_file_diff(i8*, i8*, i8*, i8*, i64, i64, i32*, %struct.TYPE_7__*, i32*, i32*) #1

declare dso_local i32* @svn_diff__source_create(i32, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
