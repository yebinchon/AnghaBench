; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_svn_wc__get_diff_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_diff_editor.c_svn_wc__get_diff_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_22__ = type { i64 }
%struct.edit_baton_t = type { i32, i32 }
%struct.svn_wc__shim_fetch_baton_t = type { i32, i32, i32 }
%struct.TYPE_20__ = type { %struct.svn_wc__shim_fetch_baton_t*, i32, i32, i32 }

@set_target_revision = common dso_local global i32 0, align 4
@open_root = common dso_local global i32 0, align 4
@delete_entry = common dso_local global i32 0, align 4
@add_directory = common dso_local global i32 0, align 4
@open_directory = common dso_local global i32 0, align 4
@close_directory = common dso_local global i32 0, align 4
@add_file = common dso_local global i32 0, align 4
@open_file = common dso_local global i32 0, align 4
@apply_textdelta = common dso_local global i32 0, align 4
@change_file_prop = common dso_local global i32 0, align 4
@change_dir_prop = common dso_local global i32 0, align 4
@close_file = common dso_local global i32 0, align 4
@close_edit = common dso_local global i32 0, align 4
@svn_depth_unknown = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_wc__fetch_kind_func = common dso_local global i32 0, align 4
@svn_wc__fetch_props_func = common dso_local global i32 0, align 4
@svn_wc__fetch_base_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__get_diff_editor(%struct.TYPE_21__** %0, i8** %1, %struct.TYPE_19__* %2, i8* %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, %struct.TYPE_22__* %10, i32* %11, i32 %12, i8* %13, i32* %14, i32* %15) #0 {
  %17 = alloca %struct.TYPE_21__**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca %struct.TYPE_19__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_22__*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca %struct.edit_baton_t*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca %struct.TYPE_21__*, align 8
  %36 = alloca %struct.TYPE_21__*, align 8
  %37 = alloca %struct.svn_wc__shim_fetch_baton_t*, align 8
  %38 = alloca %struct.TYPE_20__*, align 8
  %39 = alloca i32*, align 8
  store %struct.TYPE_21__** %0, %struct.TYPE_21__*** %17, align 8
  store i8** %1, i8*** %18, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %19, align 8
  store i8* %3, i8** %20, align 8
  store i8* %4, i8** %21, align 8
  store i32 %5, i32* %22, align 4
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store i32 %9, i32* %26, align 4
  store %struct.TYPE_22__* %10, %struct.TYPE_22__** %27, align 8
  store i32* %11, i32** %28, align 8
  store i32 %12, i32* %29, align 4
  store i8* %13, i8** %30, align 8
  store i32* %14, i32** %31, align 8
  store i32* %15, i32** %32, align 8
  %40 = load i32*, i32** %31, align 8
  %41 = call %struct.TYPE_20__* @svn_delta_shim_callbacks_default(i32* %40)
  store %struct.TYPE_20__* %41, %struct.TYPE_20__** %38, align 8
  %42 = load i8*, i8** %20, align 8
  %43 = call i32 @svn_dirent_is_absolute(i8* %42)
  %44 = call i32 @SVN_ERR_ASSERT(i32 %43)
  %45 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %46 = icmp ne %struct.TYPE_22__* %45, null
  br i1 %46, label %47, label %63

47:                                               ; preds = %16
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %54 = load i32*, i32** %31, align 8
  %55 = call i32 @svn_hash_from_cstring_keys(i32** %39, %struct.TYPE_22__* %53, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i32*, i32** %28, align 8
  %58 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %59 = load i8*, i8** %20, align 8
  %60 = load i32*, i32** %39, align 8
  %61 = load i32*, i32** %31, align 8
  %62 = call i32* @svn_wc__changelist_filter_tree_processor_create(i32* %57, %struct.TYPE_19__* %58, i8* %59, i32* %60, i32* %61)
  store i32* %62, i32** %28, align 8
  br label %63

63:                                               ; preds = %52, %47, %16
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %20, align 8
  %68 = load i8*, i8** %21, align 8
  %69 = load i32*, i32** %28, align 8
  %70 = load i32, i32* %22, align 4
  %71 = load i32, i32* %23, align 4
  %72 = load i32, i32* %24, align 4
  %73 = load i32, i32* %25, align 4
  %74 = load i32, i32* %29, align 4
  %75 = load i8*, i8** %30, align 8
  %76 = load i32*, i32** %31, align 8
  %77 = call i32 @make_edit_baton(%struct.edit_baton_t** %33, i32 %66, i8* %67, i8* %68, i32* %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i8* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load %struct.edit_baton_t*, %struct.edit_baton_t** %33, align 8
  %80 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.TYPE_21__* @svn_delta_default_editor(i32 %81)
  store %struct.TYPE_21__* %82, %struct.TYPE_21__** %35, align 8
  %83 = load i32, i32* @set_target_revision, align 4
  %84 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %85 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %84, i32 0, i32 12
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* @open_root, align 4
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 11
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @delete_entry, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 10
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @add_directory, align 4
  %93 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %94 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %93, i32 0, i32 9
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @open_directory, align 4
  %96 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %97 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @close_directory, align 4
  %99 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %100 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @add_file, align 4
  %102 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %103 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @open_file, align 4
  %105 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %106 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %105, i32 0, i32 5
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @apply_textdelta, align 4
  %108 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %109 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @change_file_prop, align 4
  %111 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %112 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @change_dir_prop, align 4
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 2
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @close_file, align 4
  %117 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %118 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @close_edit, align 4
  %120 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  %121 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_21__*, %struct.TYPE_21__** %35, align 8
  store %struct.TYPE_21__* %122, %struct.TYPE_21__** %36, align 8
  %123 = load %struct.edit_baton_t*, %struct.edit_baton_t** %33, align 8
  %124 = bitcast %struct.edit_baton_t* %123 to i8*
  store i8* %124, i8** %34, align 8
  %125 = load i32, i32* %26, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %142, label %127

127:                                              ; preds = %63
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* @svn_depth_unknown, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %142

131:                                              ; preds = %127
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load i8*, i8** %20, align 8
  %136 = load i8*, i8** %21, align 8
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %138 = load i8*, i8** %34, align 8
  %139 = load i32*, i32** %31, align 8
  %140 = call i32 @svn_wc__ambient_depth_filter_editor(%struct.TYPE_21__** %36, i8** %34, i32 %134, i8* %135, i8* %136, %struct.TYPE_21__* %137, i8* %138, i32* %139)
  %141 = call i32 @SVN_ERR(i32 %140)
  br label %142

142:                                              ; preds = %131, %127, %63
  %143 = load i32, i32* %29, align 4
  %144 = load i8*, i8** %30, align 8
  %145 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %146 = load i8*, i8** %34, align 8
  %147 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %17, align 8
  %148 = load i8**, i8*** %18, align 8
  %149 = load i32*, i32** %31, align 8
  %150 = call i32 @svn_delta_get_cancellation_editor(i32 %143, i8* %144, %struct.TYPE_21__* %145, i8* %146, %struct.TYPE_21__** %147, i8** %148, i32* %149)
  %151 = call i32 @SVN_ERR(i32 %150)
  %152 = load i32*, i32** %31, align 8
  %153 = call %struct.svn_wc__shim_fetch_baton_t* @apr_palloc(i32* %152, i32 12)
  store %struct.svn_wc__shim_fetch_baton_t* %153, %struct.svn_wc__shim_fetch_baton_t** %37, align 8
  %154 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %155 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.svn_wc__shim_fetch_baton_t*, %struct.svn_wc__shim_fetch_baton_t** %37, align 8
  %158 = getelementptr inbounds %struct.svn_wc__shim_fetch_baton_t, %struct.svn_wc__shim_fetch_baton_t* %157, i32 0, i32 2
  store i32 %156, i32* %158, align 4
  %159 = load %struct.edit_baton_t*, %struct.edit_baton_t** %33, align 8
  %160 = getelementptr inbounds %struct.edit_baton_t, %struct.edit_baton_t* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.svn_wc__shim_fetch_baton_t*, %struct.svn_wc__shim_fetch_baton_t** %37, align 8
  %163 = getelementptr inbounds %struct.svn_wc__shim_fetch_baton_t, %struct.svn_wc__shim_fetch_baton_t* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @TRUE, align 4
  %165 = load %struct.svn_wc__shim_fetch_baton_t*, %struct.svn_wc__shim_fetch_baton_t** %37, align 8
  %166 = getelementptr inbounds %struct.svn_wc__shim_fetch_baton_t, %struct.svn_wc__shim_fetch_baton_t* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* @svn_wc__fetch_kind_func, align 4
  %168 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %169 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 8
  %170 = load i32, i32* @svn_wc__fetch_props_func, align 4
  %171 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %172 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* @svn_wc__fetch_base_func, align 4
  %174 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %175 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 8
  %176 = load %struct.svn_wc__shim_fetch_baton_t*, %struct.svn_wc__shim_fetch_baton_t** %37, align 8
  %177 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %178 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %177, i32 0, i32 0
  store %struct.svn_wc__shim_fetch_baton_t* %176, %struct.svn_wc__shim_fetch_baton_t** %178, align 8
  %179 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %17, align 8
  %180 = load i8**, i8*** %18, align 8
  %181 = load %struct.TYPE_21__**, %struct.TYPE_21__*** %17, align 8
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %181, align 8
  %183 = load i8**, i8*** %18, align 8
  %184 = load i8*, i8** %183, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %38, align 8
  %186 = load i32*, i32** %31, align 8
  %187 = load i32*, i32** %32, align 8
  %188 = call i32 @svn_editor__insert_shims(%struct.TYPE_21__** %179, i8** %180, %struct.TYPE_21__* %182, i8* %184, i32* null, i32* null, %struct.TYPE_20__* %185, i32* %186, i32* %187)
  %189 = call i32 @SVN_ERR(i32 %188)
  %190 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %190
}

declare dso_local %struct.TYPE_20__* @svn_delta_shim_callbacks_default(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_hash_from_cstring_keys(i32**, %struct.TYPE_22__*, i32*) #1

declare dso_local i32* @svn_wc__changelist_filter_tree_processor_create(i32*, %struct.TYPE_19__*, i8*, i32*, i32*) #1

declare dso_local i32 @make_edit_baton(%struct.edit_baton_t**, i32, i8*, i8*, i32*, i32, i32, i32, i32, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_21__* @svn_delta_default_editor(i32) #1

declare dso_local i32 @svn_wc__ambient_depth_filter_editor(%struct.TYPE_21__**, i8**, i32, i8*, i8*, %struct.TYPE_21__*, i8*, i32*) #1

declare dso_local i32 @svn_delta_get_cancellation_editor(i32, i8*, %struct.TYPE_21__*, i8*, %struct.TYPE_21__**, i8**, i32*) #1

declare dso_local %struct.svn_wc__shim_fetch_baton_t* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_editor__insert_shims(%struct.TYPE_21__**, i8**, %struct.TYPE_21__*, i8*, i32*, i32*, %struct.TYPE_20__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
