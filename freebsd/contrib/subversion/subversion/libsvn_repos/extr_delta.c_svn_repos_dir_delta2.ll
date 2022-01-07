; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_delta.c_svn_repos_dir_delta2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_delta.c_svn_repos_dir_delta2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* (i8*, i32*)*, i32 (i8*, i32*)*, i32 (i8*, i32, i32*, i8**)*, i32 (i8*, i32, i32*)* }
%struct.context = type { i8*, i8*, i8*, i8*, i32, i32*, i32*, %struct.TYPE_3__* }

@SVN_ERR_FS_NOT_DIRECTORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Invalid source parent directory '(null)'\00", align 1
@SVN_ERR_FS_PATH_SYNTAX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid target path\00", align 1
@svn_depth_exclude = common dso_local global i32 0, align 4
@SVN_ERR_REPOS_BAD_ARGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Delta depth 'exclude' not supported\00", align 1
@svn_node_none = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [107 x i8] c"Invalid editor anchoring; at least one of the input paths is not a directory and there was no source entry\00", align 1
@svn_fs_node_unchanged = common dso_local global i64 0, align 8
@svn_fs_node_unrelated = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_dir_delta2(i32* %0, i8* %1, i8* %2, i32* %3, i8* %4, %struct.TYPE_3__* %5, i8* %6, i32 %7, i8* %8, i8* %9, i32 %10, i8* %11, i8* %12, i32* %13) #0 {
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca %struct.TYPE_3__*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.context, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i8*, align 8
  store i32* %0, i32** %16, align 8
  store i8* %1, i8** %17, align 8
  store i8* %2, i8** %18, align 8
  store i32* %3, i32** %19, align 8
  store i8* %4, i8** %20, align 8
  store %struct.TYPE_3__* %5, %struct.TYPE_3__** %21, align 8
  store i8* %6, i8** %22, align 8
  store i32 %7, i32* %23, align 4
  store i8* %8, i8** %24, align 8
  store i8* %9, i8** %25, align 8
  store i32 %10, i32* %26, align 4
  store i8* %11, i8** %27, align 8
  store i8* %12, i8** %28, align 8
  store i32* %13, i32** %29, align 8
  store i8* null, i8** %30, align 8
  %38 = load i8*, i8** %17, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %14
  %41 = load i8*, i8** %17, align 8
  %42 = load i32*, i32** %29, align 8
  %43 = call i8* @svn_relpath_canonicalize(i8* %41, i32* %42)
  store i8* %43, i8** %17, align 8
  br label %47

44:                                               ; preds = %14
  %45 = load i32, i32* @SVN_ERR_FS_NOT_DIRECTORY, align 4
  %46 = call i32* @svn_error_create(i32 %45, i32* null, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32* %46, i32** %15, align 8
  br label %352

47:                                               ; preds = %40
  %48 = load i8*, i8** %20, align 8
  %49 = icmp ne i8* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %47
  %51 = load i8*, i8** %20, align 8
  %52 = load i32*, i32** %29, align 8
  %53 = call i8* @svn_relpath_canonicalize(i8* %51, i32* %52)
  store i8* %53, i8** %20, align 8
  br label %58

54:                                               ; preds = %47
  %55 = load i32, i32* @SVN_ERR_FS_PATH_SYNTAX, align 4
  %56 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %57 = call i32* @svn_error_create(i32 %55, i32* null, i8* %56)
  store i32* %57, i32** %15, align 8
  br label %352

58:                                               ; preds = %50
  %59 = load i32, i32* %26, align 4
  %60 = load i32, i32* @svn_depth_exclude, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i32, i32* @SVN_ERR_REPOS_BAD_ARGS, align 4
  %64 = call i8* @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %65 = call i32* @svn_error_create(i32 %63, i32* null, i8* %64)
  store i32* %65, i32** %15, align 8
  br label %352

66:                                               ; preds = %58
  %67 = load i8*, i8** %18, align 8
  %68 = load i8, i8* %67, align 1
  %69 = icmp ne i8 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = load i8*, i8** %20, align 8
  %72 = load i32*, i32** %29, align 8
  %73 = call i8* @svn_relpath_dirname(i8* %71, i32* %72)
  store i8* %73, i8** %37, align 8
  br label %76

74:                                               ; preds = %66
  %75 = load i8*, i8** %20, align 8
  store i8* %75, i8** %37, align 8
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i8*, i8** %17, align 8
  %78 = load i8*, i8** %18, align 8
  %79 = load i32*, i32** %29, align 8
  %80 = call i8* @svn_relpath_join(i8* %77, i8* %78, i32* %79)
  store i8* %80, i8** %32, align 8
  %81 = load i32*, i32** %19, align 8
  %82 = load i8*, i8** %20, align 8
  %83 = load i32*, i32** %29, align 8
  %84 = call i32 @svn_fs_check_path(i64* %34, i32* %81, i8* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i32*, i32** %16, align 8
  %87 = load i8*, i8** %32, align 8
  %88 = load i32*, i32** %29, align 8
  %89 = call i32 @svn_fs_check_path(i64* %33, i32* %86, i8* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load i64, i64* %34, align 8
  %92 = load i64, i64* @svn_node_none, align 8
  %93 = icmp eq i64 %91, %92
  br i1 %93, label %94, label %99

94:                                               ; preds = %76
  %95 = load i64, i64* %33, align 8
  %96 = load i64, i64* @svn_node_none, align 8
  %97 = icmp eq i64 %95, %96
  br i1 %97, label %98, label %99

98:                                               ; preds = %94
  br label %334

99:                                               ; preds = %94, %76
  %100 = load i8*, i8** %18, align 8
  %101 = load i8, i8* %100, align 1
  %102 = icmp ne i8 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* %33, align 8
  %105 = load i64, i64* @svn_node_dir, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %111, label %107

107:                                              ; preds = %103
  %108 = load i64, i64* %34, align 8
  %109 = load i64, i64* @svn_node_dir, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107, %103
  %112 = load i32, i32* @SVN_ERR_FS_PATH_SYNTAX, align 4
  %113 = call i8* @_(i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str.3, i64 0, i64 0))
  %114 = call i32* @svn_error_create(i32 %112, i32* null, i8* %113)
  store i32* %114, i32** %15, align 8
  br label %352

115:                                              ; preds = %107, %99
  %116 = load i32*, i32** %19, align 8
  %117 = call i32 @svn_fs_root_fs(i32* %116)
  %118 = load i32*, i32** %29, align 8
  %119 = call i32 @svn_fs_refresh_revision_props(i32 %117, i32* %118)
  %120 = call i32 @SVN_ERR(i32 %119)
  %121 = load i32*, i32** %16, align 8
  %122 = call i32 @svn_fs_root_fs(i32* %121)
  %123 = load i32*, i32** %29, align 8
  %124 = call i32 @svn_fs_refresh_revision_props(i32 %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  %126 = load i32*, i32** %19, align 8
  %127 = call i64 @svn_fs_is_revision_root(i32* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %115
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  %132 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %131, align 8
  %133 = load i8*, i8** %22, align 8
  %134 = load i32*, i32** %19, align 8
  %135 = call i32 @svn_fs_revision_root_revision(i32* %134)
  %136 = load i32*, i32** %29, align 8
  %137 = call i32 %132(i8* %133, i32 %135, i32* %136)
  %138 = call i32 @SVN_ERR(i32 %137)
  br label %154

139:                                              ; preds = %115
  %140 = load i32*, i32** %19, align 8
  %141 = call i64 @svn_fs_is_txn_root(i32* %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %153

143:                                              ; preds = %139
  %144 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 3
  %146 = load i32 (i8*, i32, i32*)*, i32 (i8*, i32, i32*)** %145, align 8
  %147 = load i8*, i8** %22, align 8
  %148 = load i32*, i32** %19, align 8
  %149 = call i32 @svn_fs_txn_root_base_revision(i32* %148)
  %150 = load i32*, i32** %29, align 8
  %151 = call i32 %146(i8* %147, i32 %149, i32* %150)
  %152 = call i32 @SVN_ERR(i32 %151)
  br label %153

153:                                              ; preds = %143, %139
  br label %154

154:                                              ; preds = %153, %129
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %156 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 7
  store %struct.TYPE_3__* %155, %struct.TYPE_3__** %156, align 8
  %157 = load i32*, i32** %16, align 8
  %158 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 6
  store i32* %157, i32** %158, align 8
  %159 = load i32*, i32** %19, align 8
  %160 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 5
  store i32* %159, i32** %160, align 8
  %161 = load i32, i32* %23, align 4
  %162 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 4
  store i32 %161, i32* %162, align 8
  %163 = load i8*, i8** %24, align 8
  %164 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 3
  store i8* %163, i8** %164, align 8
  %165 = load i8*, i8** %25, align 8
  %166 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 2
  store i8* %165, i8** %166, align 8
  %167 = load i8*, i8** %27, align 8
  %168 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 1
  store i8* %167, i8** %168, align 8
  %169 = load i8*, i8** %28, align 8
  %170 = getelementptr inbounds %struct.context, %struct.context* %31, i32 0, i32 0
  store i8* %169, i8** %170, align 8
  %171 = load i32*, i32** %16, align 8
  %172 = load i8*, i8** %17, align 8
  %173 = load i32*, i32** %29, align 8
  %174 = call i32 @get_path_revision(i32* %171, i8* %172, i32* %173)
  store i32 %174, i32* %35, align 4
  %175 = load i64, i64* %34, align 8
  %176 = load i64, i64* @svn_node_none, align 8
  %177 = icmp eq i64 %175, %176
  br i1 %177, label %178, label %199

178:                                              ; preds = %154
  %179 = load i32*, i32** %19, align 8
  %180 = load i8*, i8** %37, align 8
  %181 = load i32, i32* %23, align 4
  %182 = load i8*, i8** %24, align 8
  %183 = load i32*, i32** %29, align 8
  %184 = call i32 @authz_root_check(i32* %179, i8* %180, i32 %181, i8* %182, i32* %183)
  %185 = call i32 @SVN_ERR(i32 %184)
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 2
  %188 = load i32 (i8*, i32, i32*, i8**)*, i32 (i8*, i32, i32*, i8**)** %187, align 8
  %189 = load i8*, i8** %22, align 8
  %190 = load i32, i32* %35, align 4
  %191 = load i32*, i32** %29, align 8
  %192 = call i32 %188(i8* %189, i32 %190, i32* %191, i8** %30)
  %193 = call i32 @SVN_ERR(i32 %192)
  %194 = load i8*, i8** %30, align 8
  %195 = load i8*, i8** %18, align 8
  %196 = load i32*, i32** %29, align 8
  %197 = call i32 @delete(%struct.context* %31, i8* %194, i8* %195, i32* %196)
  %198 = call i32 @SVN_ERR(i32 %197)
  br label %334

199:                                              ; preds = %154
  %200 = load i64, i64* %33, align 8
  %201 = load i64, i64* @svn_node_none, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %227

203:                                              ; preds = %199
  %204 = load i32*, i32** %19, align 8
  %205 = load i8*, i8** %37, align 8
  %206 = load i32, i32* %23, align 4
  %207 = load i8*, i8** %24, align 8
  %208 = load i32*, i32** %29, align 8
  %209 = call i32 @authz_root_check(i32* %204, i8* %205, i32 %206, i8* %207, i32* %208)
  %210 = call i32 @SVN_ERR(i32 %209)
  %211 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %212 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %211, i32 0, i32 2
  %213 = load i32 (i8*, i32, i32*, i8**)*, i32 (i8*, i32, i32*, i8**)** %212, align 8
  %214 = load i8*, i8** %22, align 8
  %215 = load i32, i32* %35, align 4
  %216 = load i32*, i32** %29, align 8
  %217 = call i32 %213(i8* %214, i32 %215, i32* %216, i8** %30)
  %218 = call i32 @SVN_ERR(i32 %217)
  %219 = load i8*, i8** %30, align 8
  %220 = load i32, i32* %26, align 4
  %221 = load i8*, i8** %20, align 8
  %222 = load i8*, i8** %18, align 8
  %223 = load i64, i64* %34, align 8
  %224 = load i32*, i32** %29, align 8
  %225 = call i32 @add_file_or_dir(%struct.context* %31, i8* %219, i32 %220, i8* %221, i8* %222, i64 %223, i32* %224)
  %226 = call i32 @SVN_ERR(i32 %225)
  br label %334

227:                                              ; preds = %199
  %228 = load i32*, i32** %19, align 8
  %229 = load i8*, i8** %20, align 8
  %230 = load i32*, i32** %16, align 8
  %231 = load i8*, i8** %32, align 8
  %232 = load i32*, i32** %29, align 8
  %233 = call i32 @svn_fs_node_relation(i64* %36, i32* %228, i8* %229, i32* %230, i8* %231, i32* %232)
  %234 = call i32 @SVN_ERR(i32 %233)
  %235 = load i64, i64* %36, align 8
  %236 = load i64, i64* @svn_fs_node_unchanged, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %227
  br label %334

239:                                              ; preds = %227
  %240 = load i8*, i8** %18, align 8
  %241 = load i8, i8* %240, align 1
  %242 = icmp ne i8 %241, 0
  br i1 %242, label %243, label %309

243:                                              ; preds = %239
  %244 = load i64, i64* %33, align 8
  %245 = load i64, i64* %34, align 8
  %246 = icmp ne i64 %244, %245
  br i1 %246, label %254, label %247

247:                                              ; preds = %243
  %248 = load i64, i64* %36, align 8
  %249 = load i64, i64* @svn_fs_node_unrelated, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %283

251:                                              ; preds = %247
  %252 = load i8*, i8** %28, align 8
  %253 = icmp ne i8* %252, null
  br i1 %253, label %283, label %254

254:                                              ; preds = %251, %243
  %255 = load i32*, i32** %19, align 8
  %256 = load i8*, i8** %37, align 8
  %257 = load i32, i32* %23, align 4
  %258 = load i8*, i8** %24, align 8
  %259 = load i32*, i32** %29, align 8
  %260 = call i32 @authz_root_check(i32* %255, i8* %256, i32 %257, i8* %258, i32* %259)
  %261 = call i32 @SVN_ERR(i32 %260)
  %262 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %263 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %262, i32 0, i32 2
  %264 = load i32 (i8*, i32, i32*, i8**)*, i32 (i8*, i32, i32*, i8**)** %263, align 8
  %265 = load i8*, i8** %22, align 8
  %266 = load i32, i32* %35, align 4
  %267 = load i32*, i32** %29, align 8
  %268 = call i32 %264(i8* %265, i32 %266, i32* %267, i8** %30)
  %269 = call i32 @SVN_ERR(i32 %268)
  %270 = load i8*, i8** %30, align 8
  %271 = load i8*, i8** %18, align 8
  %272 = load i32*, i32** %29, align 8
  %273 = call i32 @delete(%struct.context* %31, i8* %270, i8* %271, i32* %272)
  %274 = call i32 @SVN_ERR(i32 %273)
  %275 = load i8*, i8** %30, align 8
  %276 = load i32, i32* %26, align 4
  %277 = load i8*, i8** %20, align 8
  %278 = load i8*, i8** %18, align 8
  %279 = load i64, i64* %34, align 8
  %280 = load i32*, i32** %29, align 8
  %281 = call i32 @add_file_or_dir(%struct.context* %31, i8* %275, i32 %276, i8* %277, i8* %278, i64 %279, i32* %280)
  %282 = call i32 @SVN_ERR(i32 %281)
  br label %308

283:                                              ; preds = %251, %247
  %284 = load i32*, i32** %19, align 8
  %285 = load i8*, i8** %37, align 8
  %286 = load i32, i32* %23, align 4
  %287 = load i8*, i8** %24, align 8
  %288 = load i32*, i32** %29, align 8
  %289 = call i32 @authz_root_check(i32* %284, i8* %285, i32 %286, i8* %287, i32* %288)
  %290 = call i32 @SVN_ERR(i32 %289)
  %291 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %292 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %291, i32 0, i32 2
  %293 = load i32 (i8*, i32, i32*, i8**)*, i32 (i8*, i32, i32*, i8**)** %292, align 8
  %294 = load i8*, i8** %22, align 8
  %295 = load i32, i32* %35, align 4
  %296 = load i32*, i32** %29, align 8
  %297 = call i32 %293(i8* %294, i32 %295, i32* %296, i8** %30)
  %298 = call i32 @SVN_ERR(i32 %297)
  %299 = load i8*, i8** %30, align 8
  %300 = load i32, i32* %26, align 4
  %301 = load i8*, i8** %32, align 8
  %302 = load i8*, i8** %20, align 8
  %303 = load i8*, i8** %18, align 8
  %304 = load i64, i64* %34, align 8
  %305 = load i32*, i32** %29, align 8
  %306 = call i32 @replace_file_or_dir(%struct.context* %31, i8* %299, i32 %300, i8* %301, i8* %302, i8* %303, i64 %304, i32* %305)
  %307 = call i32 @SVN_ERR(i32 %306)
  br label %308

308:                                              ; preds = %283, %254
  br label %332

309:                                              ; preds = %239
  %310 = load i32*, i32** %19, align 8
  %311 = load i8*, i8** %37, align 8
  %312 = load i32, i32* %23, align 4
  %313 = load i8*, i8** %24, align 8
  %314 = load i32*, i32** %29, align 8
  %315 = call i32 @authz_root_check(i32* %310, i8* %311, i32 %312, i8* %313, i32* %314)
  %316 = call i32 @SVN_ERR(i32 %315)
  %317 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %318 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %317, i32 0, i32 2
  %319 = load i32 (i8*, i32, i32*, i8**)*, i32 (i8*, i32, i32*, i8**)** %318, align 8
  %320 = load i8*, i8** %22, align 8
  %321 = load i32, i32* %35, align 4
  %322 = load i32*, i32** %29, align 8
  %323 = call i32 %319(i8* %320, i32 %321, i32* %322, i8** %30)
  %324 = call i32 @SVN_ERR(i32 %323)
  %325 = load i8*, i8** %30, align 8
  %326 = load i32, i32* %26, align 4
  %327 = load i8*, i8** %32, align 8
  %328 = load i8*, i8** %20, align 8
  %329 = load i32*, i32** %29, align 8
  %330 = call i32 @delta_dirs(%struct.context* %31, i8* %325, i32 %326, i8* %327, i8* %328, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), i32* %329)
  %331 = call i32 @SVN_ERR(i32 %330)
  br label %332

332:                                              ; preds = %309, %308
  br label %333

333:                                              ; preds = %332
  br label %334

334:                                              ; preds = %333, %238, %203, %178, %98
  %335 = load i8*, i8** %30, align 8
  %336 = icmp ne i8* %335, null
  br i1 %336, label %337, label %345

337:                                              ; preds = %334
  %338 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %339 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %338, i32 0, i32 1
  %340 = load i32 (i8*, i32*)*, i32 (i8*, i32*)** %339, align 8
  %341 = load i8*, i8** %30, align 8
  %342 = load i32*, i32** %29, align 8
  %343 = call i32 %340(i8* %341, i32* %342)
  %344 = call i32 @SVN_ERR(i32 %343)
  br label %345

345:                                              ; preds = %337, %334
  %346 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %347 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %346, i32 0, i32 0
  %348 = load i32* (i8*, i32*)*, i32* (i8*, i32*)** %347, align 8
  %349 = load i8*, i8** %22, align 8
  %350 = load i32*, i32** %29, align 8
  %351 = call i32* %348(i8* %349, i32* %350)
  store i32* %351, i32** %15, align 8
  br label %352

352:                                              ; preds = %345, %111, %62, %54, %44
  %353 = load i32*, i32** %15, align 8
  ret i32* %353
}

declare dso_local i8* @svn_relpath_canonicalize(i8*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_check_path(i64*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_refresh_revision_props(i32, i32*) #1

declare dso_local i32 @svn_fs_root_fs(i32*) #1

declare dso_local i64 @svn_fs_is_revision_root(i32*) #1

declare dso_local i32 @svn_fs_revision_root_revision(i32*) #1

declare dso_local i64 @svn_fs_is_txn_root(i32*) #1

declare dso_local i32 @svn_fs_txn_root_base_revision(i32*) #1

declare dso_local i32 @get_path_revision(i32*, i8*, i32*) #1

declare dso_local i32 @authz_root_check(i32*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @delete(%struct.context*, i8*, i8*, i32*) #1

declare dso_local i32 @add_file_or_dir(%struct.context*, i8*, i32, i8*, i8*, i64, i32*) #1

declare dso_local i32 @svn_fs_node_relation(i64*, i32*, i8*, i32*, i8*, i32*) #1

declare dso_local i32 @replace_file_or_dir(%struct.context*, i8*, i32, i8*, i8*, i8*, i64, i32*) #1

declare dso_local i32 @delta_dirs(%struct.context*, i8*, i32, i8*, i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
