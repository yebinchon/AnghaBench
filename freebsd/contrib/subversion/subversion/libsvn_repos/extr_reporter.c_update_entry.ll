; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_update_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_reporter.c_update_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_21__*, i32*, i64, i64, %struct.TYPE_20__*, i32 }
%struct.TYPE_21__ = type { i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i64, i32*, i8**)*, i32 (i8*, i32*)*, i32 (i8*, i8*, i32*, i64, i32*, i8**)*, i32 (i8*, i8*, i64, i32*, i8**)*, i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)*, i32 (i8*, i64, i8*, i32*)* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_25__ = type { i8*, i32, i32*, i64 }
%struct.TYPE_22__ = type { i32 }

@SVN_ERR_FS_NOT_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Working copy path '%s' does not exist in repository\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@svn_checksum_md5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_24__*, i64, i8*, %struct.TYPE_23__*, i8*, %struct.TYPE_23__*, i8*, i8*, %struct.TYPE_25__*, i64, i64, i32*)* @update_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @update_entry(%struct.TYPE_24__* %0, i64 %1, i8* %2, %struct.TYPE_23__* %3, i8* %4, %struct.TYPE_23__* %5, i8* %6, i8* %7, %struct.TYPE_25__* %8, i64 %9, i64 %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_24__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_23__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_23__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.TYPE_25__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_22__*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i8*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %14, align 8
  store i64 %1, i64* %15, align 8
  store i8* %2, i8** %16, align 8
  store %struct.TYPE_23__* %3, %struct.TYPE_23__** %17, align 8
  store i8* %4, i8** %18, align 8
  store %struct.TYPE_23__* %5, %struct.TYPE_23__** %19, align 8
  store i8* %6, i8** %20, align 8
  store i8* %7, i8** %21, align 8
  store %struct.TYPE_25__* %8, %struct.TYPE_25__** %22, align 8
  store i64 %9, i64* %23, align 8
  store i64 %10, i64* %24, align 8
  store i32* %11, i32** %25, align 8
  store i32* null, i32** %26, align 8
  %39 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %40 = icmp ne %struct.TYPE_25__* %39, null
  br i1 %40, label %41, label %62

41:                                               ; preds = %12
  %42 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %43 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %62

46:                                               ; preds = %41
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %46
  %52 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %53 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %18, align 8
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = load i8*, i8** %18, align 8
  %59 = load i32*, i32** %25, align 8
  %60 = call i32 @fake_dirent(%struct.TYPE_23__** %19, i32* %57, i8* %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  br label %62

62:                                               ; preds = %51, %46, %41, %12
  %63 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %64 = icmp ne %struct.TYPE_25__* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %67 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @SVN_IS_VALID_REVNUM(i64 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %65
  store i8* null, i8** %16, align 8
  store %struct.TYPE_23__* null, %struct.TYPE_23__** %17, align 8
  br label %104

72:                                               ; preds = %65, %62
  %73 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %74 = icmp ne %struct.TYPE_25__* %73, null
  br i1 %74, label %75, label %103

75:                                               ; preds = %72
  %76 = load i8*, i8** %16, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %103

78:                                               ; preds = %75
  %79 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %80 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  br label %89

87:                                               ; preds = %78
  %88 = load i8*, i8** %16, align 8
  br label %89

89:                                               ; preds = %87, %83
  %90 = phi i8* [ %86, %83 ], [ %88, %87 ]
  store i8* %90, i8** %16, align 8
  %91 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %92 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  store i64 %93, i64* %15, align 8
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %95 = load i64, i64* %15, align 8
  %96 = call i32 @get_source_root(%struct.TYPE_24__* %94, i32** %26, i64 %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i32*, i32** %26, align 8
  %99 = load i8*, i8** %16, align 8
  %100 = load i32*, i32** %25, align 8
  %101 = call i32 @fake_dirent(%struct.TYPE_23__** %17, i32* %98, i8* %99, i32* %100)
  %102 = call i32 @SVN_ERR(i32 %101)
  br label %103

103:                                              ; preds = %89, %75, %72
  br label %104

104:                                              ; preds = %103, %71
  %105 = load i8*, i8** %16, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %109 = icmp ne %struct.TYPE_23__* %108, null
  br i1 %109, label %115, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* @SVN_ERR_FS_NOT_FOUND, align 4
  %112 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %113 = load i8*, i8** %21, align 8
  %114 = call i32* @svn_error_createf(i32 %111, i32* null, i32 %112, i8* %113)
  store i32* %114, i32** %13, align 8
  br label %524

115:                                              ; preds = %107, %104
  %116 = load i32, i32* @FALSE, align 4
  store i32 %116, i32* %28, align 4
  %117 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %118 = icmp ne %struct.TYPE_23__* %117, null
  br i1 %118, label %119, label %257

119:                                              ; preds = %115
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %121 = icmp ne %struct.TYPE_23__* %120, null
  br i1 %121, label %122, label %257

122:                                              ; preds = %119
  %123 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %124 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %125, %128
  br i1 %129, label %130, label %257

130:                                              ; preds = %122
  %131 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %135 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @svn_fs_compare_ids(i32 %133, i32 %136)
  store i32 %137, i32* %32, align 4
  %138 = load i32, i32* @TRUE, align 4
  store i32 %138, i32* %33, align 4
  %139 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %139, i32 0, i32 3
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %183, label %143

143:                                              ; preds = %130
  %144 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %145 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @svn_node_file, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %183

149:                                              ; preds = %143
  %150 = load i32, i32* %32, align 4
  %151 = icmp eq i32 %150, 1
  br i1 %151, label %152, label %183

152:                                              ; preds = %149
  %153 = load i32*, i32** %26, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %160

155:                                              ; preds = %152
  %156 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %157 = load i64, i64* %15, align 8
  %158 = call i32 @get_source_root(%struct.TYPE_24__* %156, i32** %26, i64 %157)
  %159 = call i32 @SVN_ERR(i32 %158)
  br label %160

160:                                              ; preds = %155, %152
  %161 = load i32*, i32** %26, align 8
  %162 = load i8*, i8** %16, align 8
  %163 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %164 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i8*, i8** %18, align 8
  %167 = load i32*, i32** %25, align 8
  %168 = call i32 @svn_fs_props_changed(i32* %33, i32* %161, i8* %162, i32* %165, i8* %166, i32* %167)
  %169 = call i32 @SVN_ERR(i32 %168)
  %170 = load i32, i32* %33, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %182, label %172

172:                                              ; preds = %160
  %173 = load i32*, i32** %26, align 8
  %174 = load i8*, i8** %16, align 8
  %175 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %176 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = load i8*, i8** %18, align 8
  %179 = load i32*, i32** %25, align 8
  %180 = call i32 @svn_fs_contents_changed(i32* %33, i32* %173, i8* %174, i32* %177, i8* %178, i32* %179)
  %181 = call i32 @SVN_ERR(i32 %180)
  br label %182

182:                                              ; preds = %172, %160
  br label %183

183:                                              ; preds = %182, %149, %143, %130
  %184 = load i32, i32* %32, align 4
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %189, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %33, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %246, label %189

189:                                              ; preds = %186, %183
  %190 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %191 = load i8*, i8** %21, align 8
  %192 = call i32 @any_path_info(%struct.TYPE_24__* %190, i8* %191)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %246, label %194

194:                                              ; preds = %189
  %195 = load i64, i64* %24, align 8
  %196 = load i64, i64* %23, align 8
  %197 = icmp sle i64 %195, %196
  br i1 %197, label %204, label %198

198:                                              ; preds = %194
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @svn_node_file, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %246

204:                                              ; preds = %198, %194
  %205 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %206 = icmp ne %struct.TYPE_25__* %205, null
  br i1 %206, label %209, label %207

207:                                              ; preds = %204
  %208 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %208, i32** %13, align 8
  br label %524

209:                                              ; preds = %204
  %210 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %211 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %245, label %214

214:                                              ; preds = %209
  %215 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 2
  %217 = load i32*, i32** %216, align 8
  %218 = icmp ne i32* %217, null
  br i1 %218, label %221, label %219

219:                                              ; preds = %214
  %220 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %220, i32** %13, align 8
  br label %524

221:                                              ; preds = %214
  %222 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %222, i32 0, i32 4
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = load i8*, i8** %18, align 8
  %228 = load i32*, i32** %25, align 8
  %229 = call i32 @svn_fs_get_lock(%struct.TYPE_22__** %34, i32 %226, i8* %227, i32* %228)
  %230 = call i32 @SVN_ERR(i32 %229)
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %232 = icmp ne %struct.TYPE_22__* %231, null
  br i1 %232, label %233, label %244

233:                                              ; preds = %221
  %234 = load %struct.TYPE_22__*, %struct.TYPE_22__** %34, align 8
  %235 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %238 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = call i64 @strcmp(i32 %236, i32* %239)
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %244

242:                                              ; preds = %233
  %243 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %243, i32** %13, align 8
  br label %524

244:                                              ; preds = %233, %221
  br label %245

245:                                              ; preds = %244, %209
  br label %246

246:                                              ; preds = %245, %198, %189, %186
  %247 = load i32, i32* %32, align 4
  %248 = icmp ne i32 %247, -1
  br i1 %248, label %254, label %249

249:                                              ; preds = %246
  %250 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %251 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %250, i32 0, i32 3
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br label %254

254:                                              ; preds = %249, %246
  %255 = phi i1 [ true, %246 ], [ %253, %249 ]
  %256 = zext i1 %255 to i32
  store i32 %256, i32* %28, align 4
  br label %257

257:                                              ; preds = %254, %122, %119, %115
  %258 = load %struct.TYPE_23__*, %struct.TYPE_23__** %17, align 8
  %259 = icmp ne %struct.TYPE_23__* %258, null
  br i1 %259, label %260, label %308

260:                                              ; preds = %257
  %261 = load i32, i32* %28, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %308, label %263

263:                                              ; preds = %260
  %264 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %265 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %264, i32 0, i32 1
  %266 = load i32*, i32** %265, align 8
  %267 = call i32 @svn_fs_root_fs(i32* %266)
  %268 = load i8*, i8** %18, align 8
  %269 = load i64, i64* %15, align 8
  %270 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %271 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %270, i32 0, i32 2
  %272 = load i64, i64* %271, align 8
  %273 = load i32*, i32** %25, align 8
  %274 = call i32 @svn_repos_deleted_rev(i32 %267, i8* %268, i64 %269, i64 %272, i64* %35, i32* %273)
  %275 = call i32 @SVN_ERR(i32 %274)
  %276 = load i64, i64* %35, align 8
  %277 = call i32 @SVN_IS_VALID_REVNUM(i64 %276)
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %296, label %279

279:                                              ; preds = %263
  %280 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %281 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %280, i32 0, i32 1
  %282 = load i32*, i32** %281, align 8
  %283 = load i8*, i8** %18, align 8
  %284 = load i32*, i32** %25, align 8
  %285 = call i32 @svn_fs_check_path(i64* %36, i32* %282, i8* %283, i32* %284)
  %286 = call i32 @SVN_ERR(i32 %285)
  %287 = load i64, i64* %36, align 8
  %288 = load i64, i64* @svn_node_none, align 8
  %289 = icmp ne i64 %287, %288
  br i1 %289, label %290, label %295

290:                                              ; preds = %279
  %291 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %292 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %291, i32 0, i32 2
  %293 = load i64, i64* %292, align 8
  %294 = sub nsw i64 %293, 1
  store i64 %294, i64* %35, align 8
  br label %295

295:                                              ; preds = %290, %279
  br label %296

296:                                              ; preds = %295, %263
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %299, i32 0, i32 7
  %301 = load i32 (i8*, i64, i8*, i32*)*, i32 (i8*, i64, i8*, i32*)** %300, align 8
  %302 = load i8*, i8** %21, align 8
  %303 = load i64, i64* %35, align 8
  %304 = load i8*, i8** %20, align 8
  %305 = load i32*, i32** %25, align 8
  %306 = call i32 %301(i8* %302, i64 %303, i8* %304, i32* %305)
  %307 = call i32 @SVN_ERR(i32 %306)
  store i8* null, i8** %16, align 8
  br label %308

308:                                              ; preds = %296, %260, %257
  %309 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %310 = icmp ne %struct.TYPE_23__* %309, null
  br i1 %310, label %316, label %311

311:                                              ; preds = %308
  %312 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %313 = load i8*, i8** %21, align 8
  %314 = call i32 @skip_path_info(%struct.TYPE_24__* %312, i8* %313)
  %315 = call i32* @svn_error_trace(i32 %314)
  store i32* %315, i32** %13, align 8
  br label %524

316:                                              ; preds = %308
  %317 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %318 = load i8*, i8** %18, align 8
  %319 = load i32*, i32** %25, align 8
  %320 = call i32 @check_auth(%struct.TYPE_24__* %317, i32* %27, i8* %318, i32* %319)
  %321 = call i32 @SVN_ERR(i32 %320)
  %322 = load i32, i32* %27, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %357, label %324

324:                                              ; preds = %316
  %325 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %326 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %325, i32 0, i32 0
  %327 = load i64, i64* %326, align 8
  %328 = load i64, i64* @svn_node_dir, align 8
  %329 = icmp eq i64 %327, %328
  br i1 %329, label %330, label %341

330:                                              ; preds = %324
  %331 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %332 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %331, i32 0, i32 0
  %333 = load %struct.TYPE_21__*, %struct.TYPE_21__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %333, i32 0, i32 6
  %335 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %334, align 8
  %336 = load i8*, i8** %21, align 8
  %337 = load i8*, i8** %20, align 8
  %338 = load i32*, i32** %25, align 8
  %339 = call i32 %335(i8* %336, i8* %337, i32* %338)
  %340 = call i32 @SVN_ERR(i32 %339)
  br label %352

341:                                              ; preds = %324
  %342 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %343 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_21__*, %struct.TYPE_21__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %344, i32 0, i32 5
  %346 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %345, align 8
  %347 = load i8*, i8** %21, align 8
  %348 = load i8*, i8** %20, align 8
  %349 = load i32*, i32** %25, align 8
  %350 = call i32 %346(i8* %347, i8* %348, i32* %349)
  %351 = call i32 @SVN_ERR(i32 %350)
  br label %352

352:                                              ; preds = %341, %330
  %353 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %354 = load i8*, i8** %21, align 8
  %355 = call i32 @skip_path_info(%struct.TYPE_24__* %353, i8* %354)
  %356 = call i32* @svn_error_trace(i32 %355)
  store i32* %356, i32** %13, align 8
  br label %524

357:                                              ; preds = %316
  %358 = load %struct.TYPE_23__*, %struct.TYPE_23__** %19, align 8
  %359 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %358, i32 0, i32 0
  %360 = load i64, i64* %359, align 8
  %361 = load i64, i64* @svn_node_dir, align 8
  %362 = icmp eq i64 %360, %361
  br i1 %362, label %363, label %421

363:                                              ; preds = %357
  %364 = load i32, i32* %28, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %378

366:                                              ; preds = %363
  %367 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %368 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %367, i32 0, i32 0
  %369 = load %struct.TYPE_21__*, %struct.TYPE_21__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %369, i32 0, i32 4
  %371 = load i32 (i8*, i8*, i64, i32*, i8**)*, i32 (i8*, i8*, i64, i32*, i8**)** %370, align 8
  %372 = load i8*, i8** %21, align 8
  %373 = load i8*, i8** %20, align 8
  %374 = load i64, i64* %15, align 8
  %375 = load i32*, i32** %25, align 8
  %376 = call i32 %371(i8* %372, i8* %373, i64 %374, i32* %375, i8** %29)
  %377 = call i32 @SVN_ERR(i32 %376)
  br label %390

378:                                              ; preds = %363
  %379 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %380 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %379, i32 0, i32 0
  %381 = load %struct.TYPE_21__*, %struct.TYPE_21__** %380, align 8
  %382 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %381, i32 0, i32 3
  %383 = load i32 (i8*, i8*, i32*, i64, i32*, i8**)*, i32 (i8*, i8*, i32*, i64, i32*, i8**)** %382, align 8
  %384 = load i8*, i8** %21, align 8
  %385 = load i8*, i8** %20, align 8
  %386 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %387 = load i32*, i32** %25, align 8
  %388 = call i32 %383(i8* %384, i8* %385, i32* null, i64 %386, i32* %387, i8** %29)
  %389 = call i32 @SVN_ERR(i32 %388)
  br label %390

390:                                              ; preds = %378, %366
  %391 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %392 = load i64, i64* %15, align 8
  %393 = load i8*, i8** %16, align 8
  %394 = load i8*, i8** %18, align 8
  %395 = load i8*, i8** %29, align 8
  %396 = load i8*, i8** %21, align 8
  %397 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %398 = icmp ne %struct.TYPE_25__* %397, null
  br i1 %398, label %399, label %403

399:                                              ; preds = %390
  %400 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %401 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %400, i32 0, i32 1
  %402 = load i32, i32* %401, align 8
  br label %405

403:                                              ; preds = %390
  %404 = load i32, i32* @FALSE, align 4
  br label %405

405:                                              ; preds = %403, %399
  %406 = phi i32 [ %402, %399 ], [ %404, %403 ]
  %407 = load i64, i64* %23, align 8
  %408 = load i64, i64* %24, align 8
  %409 = load i32*, i32** %25, align 8
  %410 = call i32 @delta_dirs(%struct.TYPE_24__* %391, i64 %392, i8* %393, i8* %394, i8* %395, i8* %396, i32 %406, i64 %407, i64 %408, i32* %409)
  %411 = call i32 @SVN_ERR(i32 %410)
  %412 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %413 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %412, i32 0, i32 0
  %414 = load %struct.TYPE_21__*, %struct.TYPE_21__** %413, align 8
  %415 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %414, i32 0, i32 2
  %416 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %415, align 8
  %417 = load i8*, i8** %29, align 8
  %418 = load i32*, i32** %25, align 8
  %419 = call i32 %416(i8* %417, i32* %418)
  %420 = call i32* @svn_error_trace(i32 %419)
  store i32* %420, i32** %13, align 8
  br label %524

421:                                              ; preds = %357
  %422 = load i32, i32* %28, align 4
  %423 = icmp ne i32 %422, 0
  br i1 %423, label %424, label %453

424:                                              ; preds = %421
  %425 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %426 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %425, i32 0, i32 0
  %427 = load %struct.TYPE_21__*, %struct.TYPE_21__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %427, i32 0, i32 1
  %429 = load i32 (i8*, i8*, i64, i32*, i8**)*, i32 (i8*, i8*, i64, i32*, i8**)** %428, align 8
  %430 = load i8*, i8** %21, align 8
  %431 = load i8*, i8** %20, align 8
  %432 = load i64, i64* %15, align 8
  %433 = load i32*, i32** %25, align 8
  %434 = call i32 %429(i8* %430, i8* %431, i64 %432, i32* %433, i8** %29)
  %435 = call i32 @SVN_ERR(i32 %434)
  %436 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %437 = load i8*, i8** %29, align 8
  %438 = load i64, i64* %15, align 8
  %439 = load i8*, i8** %16, align 8
  %440 = load i8*, i8** %18, align 8
  %441 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %442 = icmp ne %struct.TYPE_25__* %441, null
  br i1 %442, label %443, label %447

443:                                              ; preds = %424
  %444 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %445 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %444, i32 0, i32 2
  %446 = load i32*, i32** %445, align 8
  br label %448

447:                                              ; preds = %424
  br label %448

448:                                              ; preds = %447, %443
  %449 = phi i32* [ %446, %443 ], [ null, %447 ]
  %450 = load i32*, i32** %25, align 8
  %451 = call i32 @delta_files(%struct.TYPE_24__* %436, i8* %437, i64 %438, i8* %439, i8* %440, i32* %449, i32* %450)
  %452 = call i32 @SVN_ERR(i32 %451)
  br label %501

453:                                              ; preds = %421
  %454 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  store i64 %454, i64* %37, align 8
  store i8* null, i8** %38, align 8
  %455 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %456 = load i8*, i8** %21, align 8
  %457 = load i8*, i8** %20, align 8
  %458 = load i8*, i8** %18, align 8
  %459 = load i32*, i32** %25, align 8
  %460 = call i32 @add_file_smartly(%struct.TYPE_24__* %455, i8* %456, i8* %457, i8* %458, i8** %29, i8** %38, i64* %37, i32* %459)
  %461 = call i32 @SVN_ERR(i32 %460)
  %462 = load i8*, i8** %38, align 8
  %463 = icmp ne i8* %462, null
  br i1 %463, label %482, label %464

464:                                              ; preds = %453
  %465 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %466 = load i8*, i8** %29, align 8
  %467 = load i64, i64* %15, align 8
  %468 = load i8*, i8** %16, align 8
  %469 = load i8*, i8** %18, align 8
  %470 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %471 = icmp ne %struct.TYPE_25__* %470, null
  br i1 %471, label %472, label %476

472:                                              ; preds = %464
  %473 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %474 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %473, i32 0, i32 2
  %475 = load i32*, i32** %474, align 8
  br label %477

476:                                              ; preds = %464
  br label %477

477:                                              ; preds = %476, %472
  %478 = phi i32* [ %475, %472 ], [ null, %476 ]
  %479 = load i32*, i32** %25, align 8
  %480 = call i32 @delta_files(%struct.TYPE_24__* %465, i8* %466, i64 %467, i8* %468, i8* %469, i32* %478, i32* %479)
  %481 = call i32 @SVN_ERR(i32 %480)
  br label %500

482:                                              ; preds = %453
  %483 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %484 = load i8*, i8** %29, align 8
  %485 = load i64, i64* %37, align 8
  %486 = load i8*, i8** %38, align 8
  %487 = load i8*, i8** %18, align 8
  %488 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %489 = icmp ne %struct.TYPE_25__* %488, null
  br i1 %489, label %490, label %494

490:                                              ; preds = %482
  %491 = load %struct.TYPE_25__*, %struct.TYPE_25__** %22, align 8
  %492 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %491, i32 0, i32 2
  %493 = load i32*, i32** %492, align 8
  br label %495

494:                                              ; preds = %482
  br label %495

495:                                              ; preds = %494, %490
  %496 = phi i32* [ %493, %490 ], [ null, %494 ]
  %497 = load i32*, i32** %25, align 8
  %498 = call i32 @delta_files(%struct.TYPE_24__* %483, i8* %484, i64 %485, i8* %486, i8* %487, i32* %496, i32* %497)
  %499 = call i32 @SVN_ERR(i32 %498)
  br label %500

500:                                              ; preds = %495, %477
  br label %501

501:                                              ; preds = %500, %448
  %502 = load i32, i32* @svn_checksum_md5, align 4
  %503 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %504 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %503, i32 0, i32 1
  %505 = load i32*, i32** %504, align 8
  %506 = load i8*, i8** %18, align 8
  %507 = load i32, i32* @TRUE, align 4
  %508 = load i32*, i32** %25, align 8
  %509 = call i32 @svn_fs_file_checksum(i32** %30, i32 %502, i32* %505, i8* %506, i32 %507, i32* %508)
  %510 = call i32 @SVN_ERR(i32 %509)
  %511 = load i32*, i32** %30, align 8
  %512 = load i32*, i32** %25, align 8
  %513 = call i8* @svn_checksum_to_cstring(i32* %511, i32* %512)
  store i8* %513, i8** %31, align 8
  %514 = load %struct.TYPE_24__*, %struct.TYPE_24__** %14, align 8
  %515 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %514, i32 0, i32 0
  %516 = load %struct.TYPE_21__*, %struct.TYPE_21__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %516, i32 0, i32 0
  %518 = load i32 (i8*, i8*, i32*)*, i32 (i8*, i8*, i32*)** %517, align 8
  %519 = load i8*, i8** %29, align 8
  %520 = load i8*, i8** %31, align 8
  %521 = load i32*, i32** %25, align 8
  %522 = call i32 %518(i8* %519, i8* %520, i32* %521)
  %523 = call i32* @svn_error_trace(i32 %522)
  store i32* %523, i32** %13, align 8
  br label %524

524:                                              ; preds = %501, %405, %352, %311, %242, %219, %207, %110
  %525 = load i32*, i32** %13, align 8
  ret i32* %525
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @fake_dirent(%struct.TYPE_23__**, i32*, i8*, i32*) #1

declare dso_local i32 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @get_source_root(%struct.TYPE_24__*, i32**, i64) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_fs_compare_ids(i32, i32) #1

declare dso_local i32 @svn_fs_props_changed(i32*, i32*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_contents_changed(i32*, i32*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @any_path_info(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @svn_fs_get_lock(%struct.TYPE_22__**, i32, i8*, i32*) #1

declare dso_local i64 @strcmp(i32, i32*) #1

declare dso_local i32 @svn_repos_deleted_rev(i32, i8*, i64, i64, i64*, i32*) #1

declare dso_local i32 @svn_fs_root_fs(i32*) #1

declare dso_local i32 @svn_fs_check_path(i64*, i32*, i8*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @skip_path_info(%struct.TYPE_24__*, i8*) #1

declare dso_local i32 @check_auth(%struct.TYPE_24__*, i32*, i8*, i32*) #1

declare dso_local i32 @delta_dirs(%struct.TYPE_24__*, i64, i8*, i8*, i8*, i8*, i32, i64, i64, i32*) #1

declare dso_local i32 @delta_files(%struct.TYPE_24__*, i8*, i64, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @add_file_smartly(%struct.TYPE_24__*, i8*, i8*, i8*, i8**, i8**, i64*, i32*) #1

declare dso_local i32 @svn_fs_file_checksum(i32**, i32, i32*, i8*, i32, i32*) #1

declare dso_local i8* @svn_checksum_to_cstring(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
