; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_record_tree_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_record_tree_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { %struct.TYPE_21__*, i32, %struct.merge_source_t, %struct.TYPE_20__, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_21__ = type { i32, i32 (i32, %struct.TYPE_22__*, i32*)*, i32* }
%struct.TYPE_22__ = type { i32 }
%struct.merge_source_t = type { i64, i32, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.merge_dir_baton_t = type { i32, i32* }
%struct.TYPE_23__ = type { i64, i64, i32* }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_24__ = type { i32, i32, i32, i32, i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_conflict_reason_deleted = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_moved_away = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_added = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_moved_here = common dso_local global i64 0, align 8
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_wc_conflict_action_delete = common dso_local global i64 0, align 8
@svn_wc_operation_merge = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_wc_notify_tree_conflict = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_26__*, i8*, %struct.merge_dir_baton_t*, i32, i32, i32, i64, i64, %struct.TYPE_23__*, i64, i32*)* @record_tree_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @record_tree_conflict(%struct.TYPE_26__* %0, i8* %1, %struct.merge_dir_baton_t* %2, i32 %3, i32 %4, i32 %5, i64 %6, i64 %7, %struct.TYPE_23__* %8, i64 %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_26__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca %struct.merge_dir_baton_t*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_23__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_23__*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.merge_source_t*, align 8
  %32 = alloca %struct.TYPE_25__*, align 8
  %33 = alloca %struct.TYPE_25__*, align 8
  %34 = alloca %struct.TYPE_24__, align 4
  %35 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %13, align 8
  store i8* %1, i8** %14, align 8
  store %struct.merge_dir_baton_t* %2, %struct.merge_dir_baton_t** %15, align 8
  store i32 %3, i32* %16, align 4
  store i32 %4, i32* %17, align 4
  store i32 %5, i32* %18, align 4
  store i64 %6, i64* %19, align 8
  store i64 %7, i64* %20, align 8
  store %struct.TYPE_23__* %8, %struct.TYPE_23__** %21, align 8
  store i64 %9, i64* %22, align 8
  store i32* %10, i32** %23, align 8
  %36 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  store i32* %40, i32** %24, align 8
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 9
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %11
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %46, i32** %12, align 8
  br label %307

47:                                               ; preds = %11
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.merge_source_t, %struct.merge_source_t* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %58, label %53

53:                                               ; preds = %47
  %54 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %54, i32 0, i32 8
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53, %47
  %59 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %59, i32 0, i32 7
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = call i32 @store_path(i32 %61, i8* %62)
  br label %64

64:                                               ; preds = %58, %53
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %66 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %65, i32 0, i32 6
  %67 = load i8*, i8** %14, align 8
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %69 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %68, i32 0, i32 5
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @alloc_and_store_path(i32* %66, i8* %67, i32 %70)
  %72 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %73 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %268, label %76

76:                                               ; preds = %64
  %77 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %15, align 8
  %78 = icmp ne %struct.merge_dir_baton_t* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %15, align 8
  %81 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  br label %85

83:                                               ; preds = %76
  %84 = load i32*, i32** %23, align 8
  br label %85

85:                                               ; preds = %83, %79
  %86 = phi i32* [ %82, %79 ], [ %84, %83 ]
  store i32* %86, i32** %28, align 8
  %87 = load i64, i64* %20, align 8
  %88 = load i64, i64* @svn_wc_conflict_reason_deleted, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %102

90:                                               ; preds = %85
  %91 = load i32*, i32** %24, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = load i32*, i32** %23, align 8
  %94 = load i32*, i32** %23, align 8
  %95 = call i32 @svn_wc__node_was_moved_away(i8** %29, i32* null, i32* %91, i8* %92, i32* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i8*, i8** %29, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %90
  %100 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  store i64 %100, i64* %20, align 8
  br label %101

101:                                              ; preds = %99, %90
  br label %119

102:                                              ; preds = %85
  %103 = load i64, i64* %20, align 8
  %104 = load i64, i64* @svn_wc_conflict_reason_added, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %118

106:                                              ; preds = %102
  %107 = load i32*, i32** %24, align 8
  %108 = load i8*, i8** %14, align 8
  %109 = load i32*, i32** %23, align 8
  %110 = load i32*, i32** %23, align 8
  %111 = call i32 @svn_wc__node_was_moved_here(i8** %30, i32* null, i32* %107, i8* %108, i32* %109, i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load i8*, i8** %30, align 8
  %114 = icmp ne i8* %113, null
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = load i64, i64* @svn_wc_conflict_reason_moved_here, align 8
  store i64 %116, i64* %20, align 8
  br label %117

117:                                              ; preds = %115, %106
  br label %118

118:                                              ; preds = %117, %102
  br label %119

119:                                              ; preds = %118, %101
  %120 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %121 = call i64 @HONOR_MERGEINFO(%struct.TYPE_26__* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %189

123:                                              ; preds = %119
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %125 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %124, i32 0, i32 2
  %126 = getelementptr inbounds %struct.merge_source_t, %struct.merge_source_t* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %189

129:                                              ; preds = %123
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %131 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %131, i32* %130, align 4
  %132 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 1
  %133 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %133, i32* %132, align 4
  %134 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 2
  %135 = load i32, i32* @TRUE, align 4
  store i32 %135, i32* %134, align 4
  %136 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 3
  store i32 0, i32* %136, align 4
  %137 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 4
  store i32 0, i32* %137, align 4
  %138 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %140 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i64, i64* %19, align 8
  %145 = load i64, i64* @svn_wc_conflict_action_delete, align 8
  %146 = icmp ne i64 %144, %145
  %147 = zext i1 %146 to i32
  %148 = load i8*, i8** %14, align 8
  %149 = call i32 @find_nearest_ancestor_with_intersecting_ranges(i32* %138, i32* %139, i32 %143, i32 %147, i8* %148)
  %150 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %151 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.merge_source_t, %struct.merge_source_t* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32*, i32** %23, align 8
  %155 = call %struct.TYPE_25__* @svn_client__pathrev_dup(i32 %153, i32* %154)
  store %struct.TYPE_25__* %155, %struct.TYPE_25__** %32, align 8
  %156 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %157 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.merge_source_t, %struct.merge_source_t* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32*, i32** %23, align 8
  %161 = call %struct.TYPE_25__* @svn_client__pathrev_dup(i32 %159, i32* %160)
  store %struct.TYPE_25__* %161, %struct.TYPE_25__** %33, align 8
  %162 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 0
  store i32 %163, i32* %165, align 4
  %166 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.TYPE_25__*, %struct.TYPE_25__** %33, align 8
  %169 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %32, align 8
  %171 = load %struct.TYPE_25__*, %struct.TYPE_25__** %33, align 8
  %172 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %173 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %172, i32 0, i32 2
  %174 = getelementptr inbounds %struct.merge_source_t, %struct.merge_source_t* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load i32*, i32** %23, align 8
  %177 = call %struct.merge_source_t* @merge_source_create(%struct.TYPE_25__* %170, %struct.TYPE_25__* %171, i64 %175, i32* %176)
  store %struct.merge_source_t* %177, %struct.merge_source_t** %31, align 8
  %178 = load i8*, i8** %14, align 8
  %179 = load i32, i32* %17, align 4
  %180 = load i32, i32* %18, align 4
  %181 = load %struct.merge_source_t*, %struct.merge_source_t** %31, align 8
  %182 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %183 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i32*, i32** %28, align 8
  %186 = load i32*, i32** %23, align 8
  %187 = call i32 @make_conflict_versions(i32** %26, i32** %27, i8* %178, i32 %179, i32 %180, %struct.merge_source_t* %181, i32 %184, i32* %185, i32* %186)
  %188 = call i32 @SVN_ERR(i32 %187)
  br label %202

189:                                              ; preds = %123, %119
  %190 = load i8*, i8** %14, align 8
  %191 = load i32, i32* %17, align 4
  %192 = load i32, i32* %18, align 4
  %193 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %194 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %193, i32 0, i32 2
  %195 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %196 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32*, i32** %28, align 8
  %199 = load i32*, i32** %23, align 8
  %200 = call i32 @make_conflict_versions(i32** %26, i32** %27, i8* %190, i32 %191, i32 %192, %struct.merge_source_t* %194, i32 %197, i32* %198, i32* %199)
  %201 = call i32 @SVN_ERR(i32 %200)
  br label %202

202:                                              ; preds = %189, %129
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %204 = icmp ne %struct.TYPE_23__* %203, null
  br i1 %204, label %205, label %214

205:                                              ; preds = %202
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %214

210:                                              ; preds = %205
  %211 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %212 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %211, i32 0, i32 2
  %213 = load i32*, i32** %212, align 8
  store i32* %213, i32** %26, align 8
  br label %214

214:                                              ; preds = %210, %205, %202
  %215 = load i8*, i8** %14, align 8
  %216 = load i32, i32* %16, align 4
  %217 = load i32, i32* @svn_wc_operation_merge, align 4
  %218 = load i32*, i32** %26, align 8
  %219 = load i32*, i32** %27, align 8
  %220 = load i32*, i32** %28, align 8
  %221 = call %struct.TYPE_23__* @svn_wc_conflict_description_create_tree2(i8* %215, i32 %216, i32 %217, i32* %218, i32* %219, i32* %220)
  store %struct.TYPE_23__* %221, %struct.TYPE_23__** %25, align 8
  %222 = load i64, i64* %19, align 8
  %223 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %224 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %223, i32 0, i32 1
  store i64 %222, i64* %224, align 8
  %225 = load i64, i64* %20, align 8
  %226 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %227 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %226, i32 0, i32 0
  store i64 %225, i64* %227, align 8
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %21, align 8
  %229 = icmp ne %struct.TYPE_23__* %228, null
  br i1 %229, label %230, label %236

230:                                              ; preds = %214
  %231 = load i32*, i32** %24, align 8
  %232 = load i8*, i8** %14, align 8
  %233 = load i32*, i32** %23, align 8
  %234 = call i32 @svn_wc__del_tree_conflict(i32* %231, i8* %232, i32* %233)
  %235 = call i32 @SVN_ERR(i32 %234)
  br label %236

236:                                              ; preds = %230, %214
  %237 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %238 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %237, i32 0, i32 0
  %239 = load %struct.TYPE_21__*, %struct.TYPE_21__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %239, i32 0, i32 2
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %243 = load i32*, i32** %23, align 8
  %244 = call i32 @svn_wc__add_tree_conflict(i32* %241, %struct.TYPE_23__* %242, i32* %243)
  %245 = call i32 @SVN_ERR(i32 %244)
  %246 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %15, align 8
  %247 = icmp ne %struct.merge_dir_baton_t* %246, null
  br i1 %247, label %248, label %267

248:                                              ; preds = %236
  %249 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %15, align 8
  %250 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %258, label %253

253:                                              ; preds = %248
  %254 = load i32*, i32** %28, align 8
  %255 = call i32 @apr_hash_make(i32* %254)
  %256 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %15, align 8
  %257 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 8
  br label %258

258:                                              ; preds = %253, %248
  %259 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %15, align 8
  %260 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32*, i32** %28, align 8
  %263 = load i8*, i8** %14, align 8
  %264 = call i32 @apr_pstrdup(i32* %262, i8* %263)
  %265 = load %struct.TYPE_23__*, %struct.TYPE_23__** %25, align 8
  %266 = call i32 @svn_hash_sets(i32 %261, i32 %264, %struct.TYPE_23__* %265)
  br label %267

267:                                              ; preds = %258, %236
  br label %268

268:                                              ; preds = %267, %64
  %269 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %270 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %269, i32 0, i32 0
  %271 = load %struct.TYPE_21__*, %struct.TYPE_21__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %271, i32 0, i32 1
  %273 = load i32 (i32, %struct.TYPE_22__*, i32*)*, i32 (i32, %struct.TYPE_22__*, i32*)** %272, align 8
  %274 = icmp ne i32 (i32, %struct.TYPE_22__*, i32*)* %273, null
  br i1 %274, label %275, label %305

275:                                              ; preds = %268
  %276 = load i64, i64* %22, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %305

278:                                              ; preds = %275
  %279 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %280 = load i8*, i8** %14, align 8
  %281 = load i32, i32* @FALSE, align 4
  %282 = load i32*, i32** %23, align 8
  %283 = call i32 @notify_merge_begin(%struct.TYPE_26__* %279, i8* %280, i32 %281, i32* %282)
  %284 = call i32 @SVN_ERR(i32 %283)
  %285 = load i8*, i8** %14, align 8
  %286 = load i32, i32* @svn_wc_notify_tree_conflict, align 4
  %287 = load i32*, i32** %23, align 8
  %288 = call %struct.TYPE_22__* @svn_wc_create_notify(i8* %285, i32 %286, i32* %287)
  store %struct.TYPE_22__* %288, %struct.TYPE_22__** %35, align 8
  %289 = load i32, i32* %16, align 4
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 0
  store i32 %289, i32* %291, align 4
  %292 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %293 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %292, i32 0, i32 0
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 1
  %296 = load i32 (i32, %struct.TYPE_22__*, i32*)*, i32 (i32, %struct.TYPE_22__*, i32*)** %295, align 8
  %297 = load %struct.TYPE_26__*, %struct.TYPE_26__** %13, align 8
  %298 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %297, i32 0, i32 0
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %298, align 8
  %300 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %299, i32 0, i32 0
  %301 = load i32, i32* %300, align 8
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** %35, align 8
  %303 = load i32*, i32** %23, align 8
  %304 = call i32 %296(i32 %301, %struct.TYPE_22__* %302, i32* %303)
  br label %305

305:                                              ; preds = %278, %275, %268
  %306 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %306, i32** %12, align 8
  br label %307

307:                                              ; preds = %305, %45
  %308 = load i32*, i32** %12, align 8
  ret i32* %308
}

declare dso_local i32 @store_path(i32, i8*) #1

declare dso_local i32 @alloc_and_store_path(i32*, i8*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__node_was_moved_away(i8**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__node_was_moved_here(i8**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i64 @HONOR_MERGEINFO(%struct.TYPE_26__*) #1

declare dso_local i32 @find_nearest_ancestor_with_intersecting_ranges(i32*, i32*, i32, i32, i8*) #1

declare dso_local %struct.TYPE_25__* @svn_client__pathrev_dup(i32, i32*) #1

declare dso_local %struct.merge_source_t* @merge_source_create(%struct.TYPE_25__*, %struct.TYPE_25__*, i64, i32*) #1

declare dso_local i32 @make_conflict_versions(i32**, i32**, i8*, i32, i32, %struct.merge_source_t*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_23__* @svn_wc_conflict_description_create_tree2(i8*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__del_tree_conflict(i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__add_tree_conflict(i32*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32 @svn_hash_sets(i32, i32, %struct.TYPE_23__*) #1

declare dso_local i32 @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @notify_merge_begin(%struct.TYPE_26__*, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_22__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
