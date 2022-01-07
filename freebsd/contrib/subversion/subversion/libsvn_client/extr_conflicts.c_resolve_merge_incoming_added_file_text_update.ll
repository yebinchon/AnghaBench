; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_merge_incoming_added_file_text_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_merge_incoming_added_file_text_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 (i32, %struct.TYPE_11__*, i32*)*, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@svn_io_file_del_none = common dso_local global i32 0, align 4
@SVN_WC_TRANSLATE_TO_NF = common dso_local global i32 0, align 4
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@svn_depth_empty = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"If needed, a backup copy of '%s' can be found at '%s'\00", align 1
@svn_wc_notify_update_update = common dso_local global i32 0, align 4
@svn_wc_merge_conflict = common dso_local global i64 0, align 8
@svn_wc_notify_state_conflicted = common dso_local global i32 0, align 4
@svn_wc_notify_state_merged = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@svn_wc_notify_resolved_tree = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_13__*, %struct.TYPE_12__*, i32*)* @resolve_merge_incoming_added_file_text_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_merge_incoming_added_file_text_update(i32* %0, %struct.TYPE_13__* %1, %struct.TYPE_12__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %7, align 8
  store i32* %3, i32** %8, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = call i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_13__* %22)
  store i8* %23, i8** %10, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32* @svn_wc__get_tmpdir(i8** %9, i32 %26, i8* %27, i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32* %30)
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* @svn_io_file_del_none, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = call i32* @svn_stream_open_unique(i32** %17, i8** %15, i8* %32, i32 %33, i32* %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32* %36)
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %10, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = load i32, i32* @SVN_WC_TRANSLATE_TO_NF, align 4
  %44 = load i32*, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = call i32* @svn_wc__translated_stream(i32** %16, i32 %40, i8* %41, i8* %42, i32 %43, i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32* %46)
  %48 = load i32*, i32** %16, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = call i32* @svn_stream_copy3(i32* %48, i32* %49, i32 %52, i32 %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32* %57)
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i8*, i8** %10, align 8
  %63 = load i32*, i32** %8, align 8
  %64 = load i32*, i32** %8, align 8
  %65 = call i32* @svn_wc_prop_list2(i32** %18, i32 %61, i8* %62, i32* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32* %65)
  %67 = load i32*, i32** %18, align 8
  %68 = load i32*, i32** %8, align 8
  %69 = call i32 @filter_props(i32* %67, i32* %68)
  %70 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = load i32*, i32** %8, align 8
  %73 = call i32* @svn_io_open_unique_file3(i32* null, i8** %14, i32* null, i32 %70, i32* %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32* %73)
  %75 = load i32*, i32** %18, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = call i32 @apr_hash_make(i32* %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call i32* @svn_prop_diffs(i32** %19, i32* %75, i32 %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32* %79)
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = call i32* @svn_wc__acquire_write_lock_for_resolve(i8** %11, i32 %83, i8* %84, i32* %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32* %87)
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i8*, i8** %10, align 8
  %93 = load i32, i32* @svn_depth_empty, align 4
  %94 = load i32, i32* @FALSE, align 4
  %95 = load i32, i32* @TRUE, align 4
  %96 = load i32, i32* @FALSE, align 4
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 1
  %99 = load i32 (i32, %struct.TYPE_11__*, i32*)*, i32 (i32, %struct.TYPE_11__*, i32*)** %98, align 8
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32*, i32** %8, align 8
  %104 = call i32* @svn_wc_revert5(i32 %91, i8* %92, i32 %93, i32 %94, i32* null, i32 %95, i32 %96, i32* null, i32* null, i32 (i32, %struct.TYPE_11__*, i32*)* %99, i32 %102, i32* %103)
  store i32* %104, i32** %20, align 8
  %105 = load i32*, i32** %20, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %108

107:                                              ; preds = %4
  br label %119

108:                                              ; preds = %4
  %109 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = load i8*, i8** %14, align 8
  %113 = load i8*, i8** %15, align 8
  %114 = load i8*, i8** %10, align 8
  %115 = load i32, i32* @FALSE, align 4
  %116 = load i32*, i32** %19, align 8
  %117 = load i32*, i32** %8, align 8
  %118 = call i32* @svn_wc_merge5(i64* %12, i32* %13, i32 %111, i8* %112, i8* %113, i8* %114, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %115, i32* null, i32* null, i32* null, i32* %116, i32* null, i32* null, i32* null, i32* null, i32* %117)
  store i32* %118, i32** %20, align 8
  br label %119

119:                                              ; preds = %108, %107
  %120 = load i32*, i32** %20, align 8
  %121 = icmp ne i32* %120, null
  br i1 %121, label %122, label %132

122:                                              ; preds = %119
  %123 = load i32*, i32** %20, align 8
  %124 = call i32 @_(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %125 = load i8*, i8** %10, align 8
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @svn_dirent_local_style(i8* %125, i32* %126)
  %128 = load i8*, i8** %15, align 8
  %129 = load i32*, i32** %8, align 8
  %130 = call i32 @svn_dirent_local_style(i8* %128, i32* %129)
  %131 = call i32* @svn_error_quick_wrapf(i32* %123, i32 %124, i32 %127, i32 %130)
  store i32* %131, i32** %20, align 8
  br label %132

132:                                              ; preds = %122, %119
  %133 = load i32*, i32** %20, align 8
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i8*, i8** %11, align 8
  %138 = load i32*, i32** %8, align 8
  %139 = call i32 @svn_wc__release_write_lock(i32 %136, i8* %137, i32* %138)
  %140 = call i32* @svn_error_compose_create(i32* %133, i32 %139)
  store i32* %140, i32** %20, align 8
  %141 = load i8*, i8** %10, align 8
  %142 = load i32*, i32** %8, align 8
  %143 = call i32 @svn_io_sleep_for_timestamps(i8* %141, i32* %142)
  %144 = load i32*, i32** %20, align 8
  %145 = call i32 @SVN_ERR(i32* %144)
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 1
  %148 = load i32 (i32, %struct.TYPE_11__*, i32*)*, i32 (i32, %struct.TYPE_11__*, i32*)** %147, align 8
  %149 = icmp ne i32 (i32, %struct.TYPE_11__*, i32*)* %148, null
  br i1 %149, label %150, label %195

150:                                              ; preds = %132
  %151 = load i8*, i8** %10, align 8
  %152 = load i32, i32* @svn_wc_notify_update_update, align 4
  %153 = load i32*, i32** %8, align 8
  %154 = call %struct.TYPE_11__* @svn_wc_create_notify(i8* %151, i32 %152, i32* %153)
  store %struct.TYPE_11__* %154, %struct.TYPE_11__** %21, align 8
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* @svn_wc_merge_conflict, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %150
  %159 = load i32, i32* @svn_wc_notify_state_conflicted, align 4
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 2
  store i32 %159, i32* %161, align 4
  br label %166

162:                                              ; preds = %150
  %163 = load i32, i32* @svn_wc_notify_state_merged, align 4
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %162, %158
  %167 = load i32, i32* %13, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 1
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @svn_node_file, align 4
  %171 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 4
  %173 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %173, i32 0, i32 1
  %175 = load i32 (i32, %struct.TYPE_11__*, i32*)*, i32 (i32, %struct.TYPE_11__*, i32*)** %174, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %180 = load i32*, i32** %8, align 8
  %181 = call i32 %175(i32 %178, %struct.TYPE_11__* %179, i32* %180)
  %182 = load i8*, i8** %10, align 8
  %183 = load i32, i32* @svn_wc_notify_resolved_tree, align 4
  %184 = load i32*, i32** %8, align 8
  %185 = call %struct.TYPE_11__* @svn_wc_create_notify(i8* %182, i32 %183, i32* %184)
  store %struct.TYPE_11__* %185, %struct.TYPE_11__** %21, align 8
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i32 (i32, %struct.TYPE_11__*, i32*)*, i32 (i32, %struct.TYPE_11__*, i32*)** %187, align 8
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %193 = load i32*, i32** %8, align 8
  %194 = call i32 %188(i32 %191, %struct.TYPE_11__* %192, i32* %193)
  br label %195

195:                                              ; preds = %166, %132
  %196 = load i32*, i32** %5, align 8
  %197 = call i32 @svn_client_conflict_option_get_id(i32* %196)
  %198 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %198, i32 0, i32 0
  store i32 %197, i32* %199, align 4
  %200 = load i8*, i8** %15, align 8
  %201 = load i32, i32* @TRUE, align 4
  %202 = load i32*, i32** %8, align 8
  %203 = call i32* @svn_io_remove_file2(i8* %200, i32 %201, i32* %202)
  %204 = call i32 @SVN_ERR(i32* %203)
  %205 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %205
}

declare dso_local i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_13__*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_wc__get_tmpdir(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_stream_open_unique(i32**, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_wc__translated_stream(i32**, i32, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_stream_copy3(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32* @svn_wc_prop_list2(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @filter_props(i32*, i32*) #1

declare dso_local i32* @svn_io_open_unique_file3(i32*, i8**, i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_prop_diffs(i32**, i32*, i32, i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32* @svn_wc__acquire_write_lock_for_resolve(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc_revert5(i32, i8*, i32, i32, i32*, i32, i32, i32*, i32*, i32 (i32, %struct.TYPE_11__*, i32*)*, i32, i32*) #1

declare dso_local i32* @svn_wc_merge5(i64*, i32*, i32, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_quick_wrapf(i32*, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_wc__release_write_lock(i32, i8*, i32*) #1

declare dso_local i32 @svn_io_sleep_for_timestamps(i8*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @svn_client_conflict_option_get_id(i32*) #1

declare dso_local i32* @svn_io_remove_file2(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
