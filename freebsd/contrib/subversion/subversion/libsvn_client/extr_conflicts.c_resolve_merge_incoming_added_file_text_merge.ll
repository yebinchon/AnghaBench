; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_merge_incoming_added_file_text_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_merge_incoming_added_file_text_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 (i32, %struct.TYPE_13__*, i32*)*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }

@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_wc_notify_update_update = common dso_local global i32 0, align 4
@svn_wc_merge_conflict = common dso_local global i64 0, align 8
@svn_wc_notify_state_conflicted = common dso_local global i32 0, align 4
@svn_wc_notify_state_merged = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i32 0, align 4
@svn_wc_notify_resolved_tree = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_15__*, %struct.TYPE_14__*, i32*)* @resolve_merge_incoming_added_file_text_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_merge_incoming_added_file_text_merge(i32* %0, %struct.TYPE_15__* %1, %struct.TYPE_14__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca %struct.TYPE_13__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_14__* %2, %struct.TYPE_14__** %8, align 8
  store i32* %3, i32** %9, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %30 = call i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_15__* %29)
  store i8* %30, i8** %17, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i8*, i8** %17, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = call i32* @svn_wc__get_tmpdir(i8** %14, i32 %33, i8* %34, i32* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32* %37)
  %39 = load i8*, i8** %14, align 8
  %40 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i32* @svn_io_open_unique_file3(i32** %21, i8** %22, i8* %39, i32 %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32* %43)
  %45 = load i32*, i32** %21, align 8
  %46 = load i32, i32* @TRUE, align 4
  %47 = load i32*, i32** %9, align 8
  %48 = call i32* @svn_stream_from_aprfile2(i32* %45, i32 %46, i32* %47)
  store i32* %48, i32** %24, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = load i32*, i32** %9, align 8
  %52 = call i32* @svn_client_conflict_get_incoming_new_repos_location(i8** %15, i32* %16, i32* null, %struct.TYPE_15__* %49, i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32* %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %55 = load i32*, i32** %9, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = call i32* @svn_client_conflict_get_repos_info(i8** %13, i32* null, %struct.TYPE_15__* %54, i32* %55, i32* %56)
  %58 = call i32 @SVN_ERR(i32* %57)
  %59 = load i8*, i8** %13, align 8
  %60 = load i8*, i8** %15, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i8* @svn_path_url_add_component2(i8* %59, i8* %60, i32* %61)
  store i8* %62, i8** %11, align 8
  %63 = load i8*, i8** %11, align 8
  %64 = load i32, i32* @FALSE, align 4
  %65 = load i32, i32* @FALSE, align 4
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %67 = load i32*, i32** %9, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i32* @svn_client__open_ra_session_internal(i32** %10, i8** %12, i8* %63, i32* null, i32* null, i32 %64, i32 %65, %struct.TYPE_14__* %66, i32* %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32* %69)
  %71 = load i32*, i32** %10, align 8
  %72 = load i32, i32* %16, align 4
  %73 = load i32*, i32** %24, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = call i32* @svn_ra_get_file(i32* %71, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %72, i32* %73, i32* null, i32** %25, i32* %74)
  %76 = call i32 @SVN_ERR(i32* %75)
  %77 = load i32*, i32** %24, align 8
  %78 = call i32* @svn_stream_close(i32* %77)
  %79 = call i32 @SVN_ERR(i32* %78)
  %80 = load i32*, i32** %21, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = call i32* @svn_io_file_flush(i32* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32* %82)
  %84 = load i32*, i32** %25, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @filter_props(i32* %84, i32* %85)
  %87 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = load i32*, i32** %9, align 8
  %90 = call i32* @svn_io_open_unique_file3(i32** null, i8** %23, i8* null, i32 %87, i32* %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32* %90)
  %92 = load i32*, i32** %25, align 8
  %93 = load i32*, i32** %9, align 8
  %94 = call i32 @apr_hash_make(i32* %93)
  %95 = load i32*, i32** %9, align 8
  %96 = call i32* @svn_prop_diffs(i32** %26, i32* %92, i32 %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32* %96)
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load i8*, i8** %17, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = call i32* @svn_wc__acquire_write_lock_for_resolve(i8** %18, i32 %100, i8* %101, i32* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32* %104)
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** %17, align 8
  %110 = load i32*, i32** %9, align 8
  %111 = call i32* @svn_wc__del_tree_conflict(i32 %108, i8* %109, i32* %110)
  store i32* %111, i32** %27, align 8
  %112 = load i32*, i32** %27, align 8
  %113 = icmp ne i32* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %4
  %115 = load i32*, i32** %27, align 8
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i8*, i8** %18, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @svn_wc__release_write_lock(i32 %118, i8* %119, i32* %120)
  %122 = call i32* @svn_error_compose_create(i32* %115, i32 %121)
  store i32* %122, i32** %5, align 8
  br label %202

123:                                              ; preds = %4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %23, align 8
  %128 = load i8*, i8** %22, align 8
  %129 = load i8*, i8** %17, align 8
  %130 = load i32, i32* @FALSE, align 4
  %131 = load i32*, i32** %26, align 8
  %132 = load i32*, i32** %9, align 8
  %133 = call i32* @svn_wc_merge5(i64* %19, i32* %20, i32 %126, i8* %127, i8* %128, i8* %129, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %130, i32* null, i32* null, i32* null, i32* %131, i32* null, i32* null, i32* null, i32* null, i32* %132)
  store i32* %133, i32** %27, align 8
  %134 = load i32*, i32** %27, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = load i8*, i8** %18, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = call i32 @svn_wc__release_write_lock(i32 %137, i8* %138, i32* %139)
  %141 = call i32* @svn_error_compose_create(i32* %134, i32 %140)
  store i32* %141, i32** %27, align 8
  %142 = load i8*, i8** %17, align 8
  %143 = load i32*, i32** %9, align 8
  %144 = call i32 @svn_io_sleep_for_timestamps(i8* %142, i32* %143)
  %145 = load i32*, i32** %27, align 8
  %146 = call i32 @SVN_ERR(i32* %145)
  %147 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %148 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %147, i32 0, i32 1
  %149 = load i32 (i32, %struct.TYPE_13__*, i32*)*, i32 (i32, %struct.TYPE_13__*, i32*)** %148, align 8
  %150 = icmp ne i32 (i32, %struct.TYPE_13__*, i32*)* %149, null
  br i1 %150, label %151, label %196

151:                                              ; preds = %123
  %152 = load i8*, i8** %17, align 8
  %153 = load i32, i32* @svn_wc_notify_update_update, align 4
  %154 = load i32*, i32** %9, align 8
  %155 = call %struct.TYPE_13__* @svn_wc_create_notify(i8* %152, i32 %153, i32* %154)
  store %struct.TYPE_13__* %155, %struct.TYPE_13__** %28, align 8
  %156 = load i64, i64* %19, align 8
  %157 = load i64, i64* @svn_wc_merge_conflict, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %151
  %160 = load i32, i32* @svn_wc_notify_state_conflicted, align 4
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  br label %167

163:                                              ; preds = %151
  %164 = load i32, i32* @svn_wc_notify_state_merged, align 4
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  store i32 %164, i32* %166, align 4
  br label %167

167:                                              ; preds = %163, %159
  %168 = load i32, i32* %20, align 4
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 1
  store i32 %168, i32* %170, align 4
  %171 = load i32, i32* @svn_node_file, align 4
  %172 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 4
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 1
  %176 = load i32 (i32, %struct.TYPE_13__*, i32*)*, i32 (i32, %struct.TYPE_13__*, i32*)** %175, align 8
  %177 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %178 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %181 = load i32*, i32** %9, align 8
  %182 = call i32 %176(i32 %179, %struct.TYPE_13__* %180, i32* %181)
  %183 = load i8*, i8** %17, align 8
  %184 = load i32, i32* @svn_wc_notify_resolved_tree, align 4
  %185 = load i32*, i32** %9, align 8
  %186 = call %struct.TYPE_13__* @svn_wc_create_notify(i8* %183, i32 %184, i32* %185)
  store %struct.TYPE_13__* %186, %struct.TYPE_13__** %28, align 8
  %187 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %188 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %187, i32 0, i32 1
  %189 = load i32 (i32, %struct.TYPE_13__*, i32*)*, i32 (i32, %struct.TYPE_13__*, i32*)** %188, align 8
  %190 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %191 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.TYPE_13__*, %struct.TYPE_13__** %28, align 8
  %194 = load i32*, i32** %9, align 8
  %195 = call i32 %189(i32 %192, %struct.TYPE_13__* %193, i32* %194)
  br label %196

196:                                              ; preds = %167, %123
  %197 = load i32*, i32** %6, align 8
  %198 = call i32 @svn_client_conflict_option_get_id(i32* %197)
  %199 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %199, i32 0, i32 0
  store i32 %198, i32* %200, align 4
  %201 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %201, i32** %5, align 8
  br label %202

202:                                              ; preds = %196, %114
  %203 = load i32*, i32** %5, align 8
  ret i32* %203
}

declare dso_local i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_15__*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_wc__get_tmpdir(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_io_open_unique_file3(i32**, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32* @svn_client_conflict_get_incoming_new_repos_location(i8**, i32*, i32*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32* @svn_client_conflict_get_repos_info(i8**, i32*, %struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32* @svn_client__open_ra_session_internal(i32**, i8**, i8*, i32*, i32*, i32, i32, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32* @svn_ra_get_file(i32*, i8*, i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32* @svn_stream_close(i32*) #1

declare dso_local i32* @svn_io_file_flush(i32*, i32*) #1

declare dso_local i32 @filter_props(i32*, i32*) #1

declare dso_local i32* @svn_prop_diffs(i32**, i32*, i32, i32*) #1

declare dso_local i32 @apr_hash_make(i32*) #1

declare dso_local i32* @svn_wc__acquire_write_lock_for_resolve(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc__del_tree_conflict(i32, i8*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_wc__release_write_lock(i32, i8*, i32*) #1

declare dso_local i32* @svn_wc_merge5(i64*, i32*, i32, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_io_sleep_for_timestamps(i8*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32 @svn_client_conflict_option_get_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
