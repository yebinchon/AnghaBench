; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_merge_dir_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_merge_dir_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.svn_diff_tree_processor_t = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32, i32, %struct.TYPE_16__*, i32, i32, %struct.TYPE_13__*, %struct.TYPE_15__, i64, i32, i64, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.merge_dir_baton_t = type { i64, %struct.TYPE_19__*, i64, i32, i64 }
%struct.TYPE_19__ = type { i32 }

@CONFLICT_REASON_NONE = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i32 0, align 4
@svn_wc_notify_update_shadowed_add = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@svn_wc_notify_state_conflicted = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32*, i32*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @merge_dir_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_dir_added(i8* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2, i32* %3, i32* %4, i8* %5, %struct.svn_diff_tree_processor_t* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_17__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_18__*, align 8
  %19 = alloca %struct.merge_dir_baton_t*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  store i8* %0, i8** %10, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i8* %5, i8** %15, align 8
  store %struct.svn_diff_tree_processor_t* %6, %struct.svn_diff_tree_processor_t** %16, align 8
  store i32* %7, i32** %17, align 8
  %29 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %16, align 8
  %30 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %29, i32 0, i32 0
  %31 = load %struct.TYPE_18__*, %struct.TYPE_18__** %30, align 8
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %18, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = bitcast i8* %32 to %struct.merge_dir_baton_t*
  store %struct.merge_dir_baton_t* %33, %struct.merge_dir_baton_t** %19, align 8
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 5
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = call i8* @svn_dirent_join(i32 %38, i8* %39, i32* %40)
  store i8* %41, i8** %20, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %43 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %19, align 8
  %44 = load i32*, i32** %17, align 8
  %45 = call i32 @handle_pending_notifications(%struct.TYPE_18__* %42, %struct.merge_dir_baton_t* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %48 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %19, align 8
  %49 = load i8*, i8** %20, align 8
  %50 = load i32*, i32** %17, align 8
  %51 = call i32 @mark_dir_edited(%struct.TYPE_18__* %47, %struct.merge_dir_baton_t* %48, i8* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %19, align 8
  %54 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %53, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %8
  %58 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %19, align 8
  %59 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @CONFLICT_REASON_NONE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %57
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %65 = load i8*, i8** %20, align 8
  %66 = load i32, i32* @svn_node_dir, align 4
  %67 = load i32, i32* @svn_wc_notify_update_shadowed_add, align 4
  %68 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %19, align 8
  %69 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %19, align 8
  %72 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %71, i32 0, i32 1
  %73 = load %struct.TYPE_19__*, %struct.TYPE_19__** %72, align 8
  %74 = load i32*, i32** %17, align 8
  %75 = call i32 @record_skip(%struct.TYPE_18__* %64, i8* %65, i32 %66, i32 %67, i32 %70, %struct.TYPE_19__* %73, i32* %74)
  %76 = call i32 @SVN_ERR(i32 %75)
  br label %77

77:                                               ; preds = %63, %57
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %78, i32** %9, align 8
  br label %248

79:                                               ; preds = %8
  %80 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %19, align 8
  %81 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 10
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  %89 = xor i1 %88, true
  br label %90

90:                                               ; preds = %84, %79
  %91 = phi i1 [ false, %79 ], [ %89, %84 ]
  %92 = zext i1 %91 to i32
  %93 = call i32 @SVN_ERR_ASSERT(i32 %92)
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 6
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %90
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 9
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %99, %90
  %105 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %19, align 8
  %106 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %105, i32 0, i32 1
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = icmp ne %struct.TYPE_19__* %107, null
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %19, align 8
  %111 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %110, i32 0, i32 1
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %122, label %116

116:                                              ; preds = %109, %104
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 8
  %119 = load i32, i32* %118, align 8
  %120 = load i8*, i8** %20, align 8
  %121 = call i32 @store_path(i32 %119, i8* %120)
  br label %122

122:                                              ; preds = %116, %109, %99
  %123 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %124 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %123, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %194

127:                                              ; preds = %122
  %128 = load i32*, i32** %14, align 8
  store i32* %128, i32** %25, align 8
  %129 = load i8*, i8** %20, align 8
  %130 = load i32*, i32** %17, align 8
  %131 = call i8* @svn_dirent_dirname(i8* %129, i32* %130)
  store i8* %131, i8** %23, align 8
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %133 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %132, i32 0, i32 5
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load i8*, i8** %20, align 8
  %138 = call i8* @svn_dirent_is_child(i32 %136, i8* %137, i32* null)
  store i8* %138, i8** %24, align 8
  %139 = load i8*, i8** %24, align 8
  %140 = icmp ne i8* %139, null
  %141 = zext i1 %140 to i32
  %142 = call i32 @SVN_ERR_ASSERT(i32 %141)
  %143 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %144 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %143, i32 0, i32 6
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_14__*, %struct.TYPE_14__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i8*, i8** %24, align 8
  %150 = load i32*, i32** %17, align 8
  %151 = call i8* @svn_path_url_add_component2(i32 %148, i8* %149, i32* %150)
  store i8* %151, i8** %21, align 8
  %152 = load %struct.TYPE_17__*, %struct.TYPE_17__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %22, align 4
  %155 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 5
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %156, align 8
  %158 = load i8*, i8** %23, align 8
  %159 = load i8*, i8** %21, align 8
  %160 = load i32*, i32** %17, align 8
  %161 = call i32 @check_repos_match(%struct.TYPE_13__* %157, i8* %158, i8* %159, i32* %160)
  %162 = call i32 @SVN_ERR(i32 %161)
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %180, label %167

167:                                              ; preds = %127
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load i8*, i8** %20, align 8
  %174 = load i32*, i32** %25, align 8
  %175 = load i8*, i8** %21, align 8
  %176 = load i32, i32* %22, align 4
  %177 = load i32*, i32** %17, align 8
  %178 = call i32 @svn_wc__complete_directory_add(i32 %172, i8* %173, i32* %174, i8* %175, i32 %176, i32* %177)
  %179 = call i32 @SVN_ERR(i32 %178)
  br label %180

180:                                              ; preds = %167, %127
  %181 = load i32*, i32** %25, align 8
  %182 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %183 = call i64 @svn_hash_gets(i32* %181, i32 %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %180
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %187 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %186, i32 0, i32 4
  %188 = load i8*, i8** %20, align 8
  %189 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %190 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @alloc_and_store_path(i32* %187, i8* %188, i32 %191)
  br label %193

193:                                              ; preds = %185, %180
  br label %246

194:                                              ; preds = %122
  %195 = load i32*, i32** %14, align 8
  %196 = load i32*, i32** %17, align 8
  %197 = call i32 @svn_prop_hash_to_array(i32* %195, i32* %196)
  %198 = load i32*, i32** %17, align 8
  %199 = call i32 @svn_categorize_props(i32 %197, i32* null, i32* null, i32** %26, i32* %198)
  %200 = call i32 @SVN_ERR(i32 %199)
  %201 = load i32*, i32** %26, align 8
  %202 = load i32*, i32** %17, align 8
  %203 = call i32* @svn_prop_array_to_hash(i32* %201, i32* %202)
  store i32* %203, i32** %27, align 8
  %204 = load i32*, i32** %27, align 8
  %205 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %206 = call i32 @svn_hash_sets(i32* %204, i32 %205, i32* null)
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 2
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load i8*, i8** %20, align 8
  %213 = load i32*, i32** %17, align 8
  %214 = call i32 @apr_hash_make(i32* %213)
  %215 = load i32*, i32** %27, align 8
  %216 = load i32*, i32** %17, align 8
  %217 = call i32 @svn_prop_hash_to_array(i32* %215, i32* %216)
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %222, align 8
  %224 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_16__*, %struct.TYPE_16__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32*, i32** %17, align 8
  %232 = call i32 @svn_wc_merge_props3(i64* %28, i32 %211, i8* %212, i32* null, i32* null, i32 %214, i32 %217, i32 %220, i32* null, i32* null, i32 %225, i32 %230, i32* %231)
  %233 = call i32 @SVN_ERR(i32 %232)
  %234 = load i64, i64* %28, align 8
  %235 = load i64, i64* @svn_wc_notify_state_conflicted, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %237, label %245

237:                                              ; preds = %194
  %238 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 1
  %240 = load i8*, i8** %20, align 8
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @alloc_and_store_path(i32* %239, i8* %240, i32 %243)
  br label %245

245:                                              ; preds = %237, %194
  br label %246

246:                                              ; preds = %245, %193
  %247 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %247, i32** %9, align 8
  br label %248

248:                                              ; preds = %246, %77
  %249 = load i32*, i32** %9, align 8
  ret i32* %249
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @handle_pending_notifications(%struct.TYPE_18__*, %struct.merge_dir_baton_t*, i32*) #1

declare dso_local i32 @mark_dir_edited(%struct.TYPE_18__*, %struct.merge_dir_baton_t*, i8*, i32*) #1

declare dso_local i32 @record_skip(%struct.TYPE_18__*, i8*, i32, i32, i32, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @store_path(i32, i8*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i8* @svn_dirent_is_child(i32, i8*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i32, i8*, i32*) #1

declare dso_local i32 @check_repos_match(%struct.TYPE_13__*, i8*, i8*, i32*) #1

declare dso_local i32 @svn_wc__complete_directory_add(i32, i8*, i32*, i8*, i32, i32*) #1

declare dso_local i64 @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @alloc_and_store_path(i32*, i8*, i32) #1

declare dso_local i32 @svn_categorize_props(i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @svn_prop_hash_to_array(i32*, i32*) #1

declare dso_local i32* @svn_prop_array_to_hash(i32*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32*) #1

declare dso_local i32 @svn_wc_merge_props3(i64*, i32, i8*, i32*, i32*, i32, i32, i32, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
