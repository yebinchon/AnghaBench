; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_log.c_detect_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_log.c_detect_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32 (i32, %struct.TYPE_8__*, i32*)*, i32, i32 (i8**, i32*, i8*, i32, i32*)* }
%struct.TYPE_8__ = type { i64, i64, i8*, i32, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@FALSE = common dso_local global i8* null, align 8
@svn_repos_revision_access_full = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i8* null, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_fs_path_change_delete = common dso_local global i64 0, align 8
@svn_fs_path_change_add = common dso_local global i64 0, align 8
@svn_fs_path_change_replace = common dso_local global i64 0, align 8
@svn_repos_revision_access_none = common dso_local global i32 0, align 4
@svn_repos_revision_access_partial = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, %struct.TYPE_9__*, i32*)* @detect_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @detect_changed(i32* %0, i32* %1, i32* %2, %struct.TYPE_9__* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %10, align 8
  store i32* %4, i32** %11, align 8
  %29 = load i8*, i8** @FALSE, align 8
  store i8* %29, i8** %15, align 8
  %30 = load i8*, i8** @FALSE, align 8
  store i8* %30, i8** %16, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %11, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @svn_fs_paths_changed3(i32** %12, i32* %31, i32* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @svn_fs_path_change_get(%struct.TYPE_8__** %13, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %40 = icmp ne %struct.TYPE_8__* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %5
  %42 = load i32, i32* @svn_repos_revision_access_full, align 4
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %44, i32** %6, align 8
  br label %259

45:                                               ; preds = %5
  %46 = load i32*, i32** %11, align 8
  %47 = call i32* @svn_pool_create(i32* %46)
  store i32* %47, i32** %14, align 8
  br label %48

48:                                               ; preds = %235, %76, %45
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %50 = icmp ne %struct.TYPE_8__* %49, null
  br i1 %50, label %51, label %239

51:                                               ; preds = %48
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 5
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %17, align 8
  %56 = load i32*, i32** %14, align 8
  %57 = call i32 @svn_pool_clear(i32* %56)
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 3
  %60 = load i32 (i8**, i32*, i8*, i32, i32*)*, i32 (i8**, i32*, i8*, i32, i32*)** %59, align 8
  %61 = icmp ne i32 (i8**, i32*, i8*, i32, i32*)* %60, null
  br i1 %61, label %62, label %82

62:                                               ; preds = %51
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 3
  %65 = load i32 (i8**, i32*, i8*, i32, i32*)*, i32 (i8**, i32*, i8*, i32, i32*)** %64, align 8
  %66 = load i32*, i32** %8, align 8
  %67 = load i8*, i8** %17, align 8
  %68 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 %65(i8** %18, i32* %66, i8* %67, i32 %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i8*, i8** %18, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %62
  %77 = load i8*, i8** @TRUE, align 8
  store i8* %77, i8** %16, align 8
  %78 = load i32*, i32** %12, align 8
  %79 = call i32 @svn_fs_path_change_get(%struct.TYPE_8__** %13, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  br label %48

81:                                               ; preds = %62
  br label %82

82:                                               ; preds = %81, %51
  %83 = load i8*, i8** @TRUE, align 8
  store i8* %83, i8** %15, align 8
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @svn_node_unknown, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %140

89:                                               ; preds = %82
  %90 = load i32*, i32** %8, align 8
  store i32* %90, i32** %19, align 8
  %91 = load i8*, i8** %17, align 8
  store i8* %91, i8** %20, align 8
  %92 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @svn_fs_path_change_delete, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %132

97:                                               ; preds = %89
  %98 = load i8*, i8** %17, align 8
  %99 = load i32*, i32** %14, align 8
  %100 = call i32 @svn_fspath__split(i8** %23, i8** %24, i8* %98, i32* %99)
  %101 = load i32*, i32** %8, align 8
  %102 = load i8*, i8** %23, align 8
  %103 = load i32*, i32** %14, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = call i32 @svn_fs_node_history2(i32** %21, i32* %101, i8* %102, i32* %103, i32* %104)
  %106 = call i32 @SVN_ERR(i32 %105)
  %107 = load i32*, i32** %21, align 8
  %108 = load i8*, i8** @TRUE, align 8
  %109 = load i32*, i32** %14, align 8
  %110 = load i32*, i32** %14, align 8
  %111 = call i32 @svn_fs_history_prev2(i32** %21, i32* %107, i8* %108, i32* %109, i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load i32*, i32** %21, align 8
  %114 = load i8*, i8** @TRUE, align 8
  %115 = load i32*, i32** %14, align 8
  %116 = load i32*, i32** %14, align 8
  %117 = call i32 @svn_fs_history_prev2(i32** %21, i32* %113, i8* %114, i32* %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load i32*, i32** %21, align 8
  %120 = load i32*, i32** %14, align 8
  %121 = call i32 @svn_fs_history_location(i8** %23, i32* %22, i32* %119, i32* %120)
  %122 = call i32 @SVN_ERR(i32 %121)
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %22, align 4
  %125 = load i32*, i32** %14, align 8
  %126 = call i32 @svn_fs_revision_root(i32** %19, i32* %123, i32 %124, i32* %125)
  %127 = call i32 @SVN_ERR(i32 %126)
  %128 = load i8*, i8** %23, align 8
  %129 = load i8*, i8** %24, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = call i8* @svn_fspath__join(i8* %128, i8* %129, i32* %130)
  store i8* %131, i8** %20, align 8
  br label %132

132:                                              ; preds = %97, %89
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load i32*, i32** %19, align 8
  %136 = load i8*, i8** %20, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = call i32 @svn_fs_check_path(i64* %134, i32* %135, i8* %136, i32* %137)
  %139 = call i32 @SVN_ERR(i32 %138)
  br label %140

140:                                              ; preds = %132, %82
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @svn_fs_path_change_add, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %152, label %146

146:                                              ; preds = %140
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %148 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @svn_fs_path_change_replace, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %219

152:                                              ; preds = %146, %140
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 2
  %155 = load i8*, i8** %154, align 8
  store i8* %155, i8** %25, align 8
  %156 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  store i32 %158, i32* %26, align 4
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 4
  %161 = load i8*, i8** %160, align 8
  %162 = icmp ne i8* %161, null
  br i1 %162, label %172, label %163

163:                                              ; preds = %152
  %164 = load i32*, i32** %8, align 8
  %165 = load i8*, i8** %17, align 8
  %166 = load i32*, i32** %14, align 8
  %167 = call i32 @svn_fs_copied_from(i32* %26, i8** %25, i32* %164, i8* %165, i32* %166)
  %168 = call i32 @SVN_ERR(i32 %167)
  %169 = load i8*, i8** @TRUE, align 8
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 4
  store i8* %169, i8** %171, align 8
  br label %172

172:                                              ; preds = %163, %152
  %173 = load i8*, i8** %25, align 8
  %174 = icmp ne i8* %173, null
  br i1 %174, label %175, label %218

175:                                              ; preds = %172
  %176 = load i32, i32* %26, align 4
  %177 = call i64 @SVN_IS_VALID_REVNUM(i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %218

179:                                              ; preds = %175
  %180 = load i8*, i8** @TRUE, align 8
  store i8* %180, i8** %27, align 8
  %181 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %182 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %181, i32 0, i32 3
  %183 = load i32 (i8**, i32*, i8*, i32, i32*)*, i32 (i8**, i32*, i8*, i32, i32*)** %182, align 8
  %184 = icmp ne i32 (i8**, i32*, i8*, i32, i32*)* %183, null
  br i1 %184, label %185, label %207

185:                                              ; preds = %179
  %186 = load i32*, i32** %9, align 8
  %187 = load i32, i32* %26, align 4
  %188 = load i32*, i32** %14, align 8
  %189 = call i32 @svn_fs_revision_root(i32** %28, i32* %186, i32 %187, i32* %188)
  %190 = call i32 @SVN_ERR(i32 %189)
  %191 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %192 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %191, i32 0, i32 3
  %193 = load i32 (i8**, i32*, i8*, i32, i32*)*, i32 (i8**, i32*, i8*, i32, i32*)** %192, align 8
  %194 = load i32*, i32** %28, align 8
  %195 = load i8*, i8** %25, align 8
  %196 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %197 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = load i32*, i32** %14, align 8
  %200 = call i32 %193(i8** %27, i32* %194, i8* %195, i32 %198, i32* %199)
  %201 = call i32 @SVN_ERR(i32 %200)
  %202 = load i8*, i8** %27, align 8
  %203 = icmp ne i8* %202, null
  br i1 %203, label %206, label %204

204:                                              ; preds = %185
  %205 = load i8*, i8** @TRUE, align 8
  store i8* %205, i8** %16, align 8
  br label %206

206:                                              ; preds = %204, %185
  br label %207

207:                                              ; preds = %206, %179
  %208 = load i8*, i8** %27, align 8
  %209 = icmp ne i8* %208, null
  br i1 %209, label %210, label %217

210:                                              ; preds = %207
  %211 = load i8*, i8** %25, align 8
  %212 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 2
  store i8* %211, i8** %213, align 8
  %214 = load i32, i32* %26, align 4
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 3
  store i32 %214, i32* %216, align 8
  br label %217

217:                                              ; preds = %210, %207
  br label %218

218:                                              ; preds = %217, %175, %172
  br label %219

219:                                              ; preds = %218, %146
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 1
  %222 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** %221, align 8
  %223 = icmp ne i32 (i32, %struct.TYPE_8__*, i32*)* %222, null
  br i1 %223, label %224, label %235

224:                                              ; preds = %219
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 1
  %227 = load i32 (i32, %struct.TYPE_8__*, i32*)*, i32 (i32, %struct.TYPE_8__*, i32*)** %226, align 8
  %228 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %229 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %232 = load i32*, i32** %14, align 8
  %233 = call i32 %227(i32 %230, %struct.TYPE_8__* %231, i32* %232)
  %234 = call i32 @SVN_ERR(i32 %233)
  br label %235

235:                                              ; preds = %224, %219
  %236 = load i32*, i32** %12, align 8
  %237 = call i32 @svn_fs_path_change_get(%struct.TYPE_8__** %13, i32* %236)
  %238 = call i32 @SVN_ERR(i32 %237)
  br label %48

239:                                              ; preds = %48
  %240 = load i32*, i32** %14, align 8
  %241 = call i32 @svn_pool_destroy(i32* %240)
  %242 = load i8*, i8** %15, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %247, label %244

244:                                              ; preds = %239
  %245 = load i32, i32* @svn_repos_revision_access_none, align 4
  %246 = load i32*, i32** %7, align 8
  store i32 %245, i32* %246, align 4
  br label %257

247:                                              ; preds = %239
  %248 = load i8*, i8** %16, align 8
  %249 = icmp ne i8* %248, null
  br i1 %249, label %250, label %253

250:                                              ; preds = %247
  %251 = load i32, i32* @svn_repos_revision_access_partial, align 4
  %252 = load i32*, i32** %7, align 8
  store i32 %251, i32* %252, align 4
  br label %256

253:                                              ; preds = %247
  %254 = load i32, i32* @svn_repos_revision_access_full, align 4
  %255 = load i32*, i32** %7, align 8
  store i32 %254, i32* %255, align 4
  br label %256

256:                                              ; preds = %253, %250
  br label %257

257:                                              ; preds = %256, %244
  %258 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %258, i32** %6, align 8
  br label %259

259:                                              ; preds = %257, %41
  %260 = load i32*, i32** %6, align 8
  ret i32* %260
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_paths_changed3(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_path_change_get(%struct.TYPE_8__**, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_fspath__split(i8**, i8**, i8*, i32*) #1

declare dso_local i32 @svn_fs_node_history2(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_history_prev2(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_fs_history_location(i8**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_fs_revision_root(i32**, i32*, i32, i32*) #1

declare dso_local i8* @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i32 @svn_fs_check_path(i64*, i32*, i8*, i32*) #1

declare dso_local i32 @svn_fs_copied_from(i32*, i8**, i32*, i8*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
