; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_merge_file_added.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_merge_file_added.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.svn_diff_tree_processor_t = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32*, %struct.TYPE_16__*, i32, i32, %struct.TYPE_13__*, %struct.TYPE_15__, i64, i32, i32, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, i64 }
%struct.TYPE_14__ = type { i32 }
%struct.merge_file_baton_t = type { i64, i32, %struct.TYPE_19__*, i32, i64 }
%struct.TYPE_19__ = type { i32 }

@CONFLICT_REASON_NONE = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i32 0, align 4
@svn_wc_notify_update_shadowed_add = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_17__*, %struct.TYPE_17__*, i8*, i8*, i32*, i32*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @merge_file_added to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_file_added(i8* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2, i8* %3, i8* %4, i32* %5, i32* %6, i8* %7, %struct.svn_diff_tree_processor_t* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_17__*, align 8
  %14 = alloca %struct.TYPE_17__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca %struct.TYPE_18__*, align 8
  %23 = alloca %struct.merge_file_baton_t*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  store i8* %0, i8** %12, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %13, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %14, align 8
  store i8* %3, i8** %15, align 8
  store i8* %4, i8** %16, align 8
  store i32* %5, i32** %17, align 8
  store i32* %6, i32** %18, align 8
  store i8* %7, i8** %19, align 8
  store %struct.svn_diff_tree_processor_t* %8, %struct.svn_diff_tree_processor_t** %20, align 8
  store i32* %9, i32** %21, align 8
  %32 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %20, align 8
  %33 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %32, i32 0, i32 0
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %33, align 8
  store %struct.TYPE_18__* %34, %struct.TYPE_18__** %22, align 8
  %35 = load i8*, i8** %19, align 8
  %36 = bitcast i8* %35 to %struct.merge_file_baton_t*
  store %struct.merge_file_baton_t* %36, %struct.merge_file_baton_t** %23, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 4
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %12, align 8
  %43 = load i32*, i32** %21, align 8
  %44 = call i8* @svn_dirent_join(i32 %41, i8* %42, i32* %43)
  store i8* %44, i8** %24, align 8
  %45 = load i8*, i8** %24, align 8
  %46 = call i32 @svn_dirent_is_absolute(i8* %45)
  %47 = call i32 @SVN_ERR_ASSERT(i32 %46)
  %48 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %49 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %23, align 8
  %50 = load i8*, i8** %24, align 8
  %51 = load i32*, i32** %21, align 8
  %52 = call i32 @mark_file_edited(%struct.TYPE_18__* %48, %struct.merge_file_baton_t* %49, i8* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %23, align 8
  %55 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %80

58:                                               ; preds = %10
  %59 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %23, align 8
  %60 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CONFLICT_REASON_NONE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %78

64:                                               ; preds = %58
  %65 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %66 = load i8*, i8** %24, align 8
  %67 = load i32, i32* @svn_node_file, align 4
  %68 = load i32, i32* @svn_wc_notify_update_shadowed_add, align 4
  %69 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %23, align 8
  %70 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %23, align 8
  %73 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %72, i32 0, i32 2
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %73, align 8
  %75 = load i32*, i32** %21, align 8
  %76 = call i32 @record_skip(%struct.TYPE_18__* %65, i8* %66, i32 %67, i32 %68, i32 %71, %struct.TYPE_19__* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  br label %78

78:                                               ; preds = %64, %58
  %79 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %79, i32** %11, align 8
  br label %230

80:                                               ; preds = %10
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 10
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %86, i32** %11, align 8
  br label %230

87:                                               ; preds = %80
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %89 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %87
  %94 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %94, i32 0, i32 9
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %116

98:                                               ; preds = %93, %87
  %99 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %23, align 8
  %100 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %99, i32 0, i32 2
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %100, align 8
  %102 = icmp ne %struct.TYPE_19__* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %98
  %104 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %23, align 8
  %105 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %104, i32 0, i32 2
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %103, %98
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 8
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %24, align 8
  %115 = call i32 @store_path(i32 %113, i8* %114)
  br label %116

116:                                              ; preds = %110, %103, %93
  %117 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %118 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %117, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %219, label %121

121:                                              ; preds = %116
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %166

126:                                              ; preds = %121
  %127 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %128 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i8*, i8** %12, align 8
  %134 = load i32*, i32** %21, align 8
  %135 = call i8* @svn_path_url_add_component2(i32 %132, i8* %133, i32* %134)
  store i8* %135, i8** %27, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  store i32 %138, i32* %28, align 4
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 4
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %140, align 8
  %142 = load i8*, i8** %24, align 8
  %143 = load i8*, i8** %27, align 8
  %144 = load i32*, i32** %21, align 8
  %145 = call i32 @check_repos_match(%struct.TYPE_13__* %141, i8* %142, i8* %143, i32* %144)
  %146 = call i32 @SVN_ERR(i32 %145)
  %147 = load i8*, i8** %16, align 8
  %148 = load i32*, i32** %21, align 8
  %149 = load i32*, i32** %21, align 8
  %150 = call i32 @svn_stream_open_readonly(i32** %30, i8* %147, i32* %148, i32* %149)
  %151 = call i32 @SVN_ERR(i32 %150)
  store i32* null, i32** %29, align 8
  %152 = load i32*, i32** %18, align 8
  store i32* %152, i32** %25, align 8
  store i32* null, i32** %26, align 8
  %153 = load i32*, i32** %25, align 8
  %154 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %155 = call i64 @svn_hash_gets(i32* %153, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %126
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 3
  %160 = load i8*, i8** %24, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @alloc_and_store_path(i32* %159, i8* %160, i32 %163)
  br label %165

165:                                              ; preds = %157, %126
  br label %189

166:                                              ; preds = %121
  store i8* null, i8** %27, align 8
  %167 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %167, i32* %28, align 4
  %168 = load i32*, i32** %21, align 8
  %169 = call i32* @svn_stream_empty(i32* %168)
  store i32* %169, i32** %30, align 8
  %170 = load i8*, i8** %16, align 8
  %171 = load i32*, i32** %21, align 8
  %172 = load i32*, i32** %21, align 8
  %173 = call i32 @svn_stream_open_readonly(i32** %29, i8* %170, i32* %171, i32* %172)
  %174 = call i32 @SVN_ERR(i32 %173)
  %175 = load i32*, i32** %21, align 8
  %176 = call i32* @apr_hash_make(i32* %175)
  store i32* %176, i32** %25, align 8
  %177 = load i32*, i32** %18, align 8
  %178 = load i32*, i32** %21, align 8
  %179 = call i32 @svn_prop_hash_to_array(i32* %177, i32* %178)
  %180 = load i32*, i32** %21, align 8
  %181 = call i32 @svn_categorize_props(i32 %179, i32* null, i32* null, i32** %31, i32* %180)
  %182 = call i32 @SVN_ERR(i32 %181)
  %183 = load i32*, i32** %31, align 8
  %184 = load i32*, i32** %21, align 8
  %185 = call i32* @svn_prop_array_to_hash(i32* %183, i32* %184)
  store i32* %185, i32** %26, align 8
  %186 = load i32*, i32** %26, align 8
  %187 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %188 = call i32 @svn_hash_sets(i32* %186, i32 %187, i32* null)
  br label %189

189:                                              ; preds = %166, %165
  %190 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %191 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %190, i32 0, i32 1
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load i8*, i8** %24, align 8
  %196 = load i32*, i32** %30, align 8
  %197 = load i32*, i32** %29, align 8
  %198 = load i32*, i32** %25, align 8
  %199 = load i32*, i32** %26, align 8
  %200 = load i8*, i8** %27, align 8
  %201 = load i32, i32* %28, align 4
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %203 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_16__*, %struct.TYPE_16__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_16__*, %struct.TYPE_16__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load i32*, i32** %21, align 8
  %213 = call i32 @svn_wc_add_repos_file4(i32 %194, i8* %195, i32* %196, i32* %197, i32* %198, i32* %199, i8* %200, i32 %201, i32 %206, i32 %211, i32* %212)
  %214 = call i32 @SVN_ERR(i32 %213)
  %215 = load i32, i32* @TRUE, align 4
  %216 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %217 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  store i32 %215, i32* %218, align 4
  br label %219

219:                                              ; preds = %189, %116
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %22, align 8
  %221 = load i8*, i8** %24, align 8
  %222 = load i32, i32* @svn_node_file, align 4
  %223 = load %struct.merge_file_baton_t*, %struct.merge_file_baton_t** %23, align 8
  %224 = getelementptr inbounds %struct.merge_file_baton_t, %struct.merge_file_baton_t* %223, i32 0, i32 1
  %225 = load i32, i32* %224, align 8
  %226 = load i32*, i32** %21, align 8
  %227 = call i32 @record_update_add(%struct.TYPE_18__* %220, i8* %221, i32 %222, i32 %225, i32* %226)
  %228 = call i32 @SVN_ERR(i32 %227)
  %229 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %229, i32** %11, align 8
  br label %230

230:                                              ; preds = %219, %85, %78
  %231 = load i32*, i32** %11, align 8
  ret i32* %231
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @mark_file_edited(%struct.TYPE_18__*, %struct.merge_file_baton_t*, i8*, i32*) #1

declare dso_local i32 @record_skip(%struct.TYPE_18__*, i8*, i32, i32, i32, %struct.TYPE_19__*, i32*) #1

declare dso_local i32 @store_path(i32, i8*) #1

declare dso_local i8* @svn_path_url_add_component2(i32, i8*, i32*) #1

declare dso_local i32 @check_repos_match(%struct.TYPE_13__*, i8*, i8*, i32*) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local i64 @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @alloc_and_store_path(i32*, i8*, i32) #1

declare dso_local i32* @svn_stream_empty(i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_categorize_props(i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @svn_prop_hash_to_array(i32*, i32*) #1

declare dso_local i32* @svn_prop_array_to_hash(i32*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i32, i32*) #1

declare dso_local i32 @svn_wc_add_repos_file4(i32, i8*, i32*, i32*, i32*, i32*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @record_update_add(%struct.TYPE_18__*, i8*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
