; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_merge_dir_changed.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_merge.c_merge_dir_changed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64 }
%struct.svn_diff_tree_processor_t = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, %struct.TYPE_14__*, i32, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.merge_dir_baton_t = type { i64, i32, i32, i64 }

@CONFLICT_REASON_NONE = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i32 0, align 4
@svn_wc_notify_update_shadowed_update = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_notify_state_conflicted = common dso_local global i64 0, align 8
@svn_wc_notify_state_merged = common dso_local global i64 0, align 8
@svn_wc_notify_state_changed = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*, i32*, i32*, %struct.TYPE_17__*, i8*, %struct.svn_diff_tree_processor_t*, i32*)* @merge_dir_changed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_dir_changed(i8* %0, i32* %1, i32* %2, i32* %3, i32* %4, %struct.TYPE_17__* %5, i8* %6, %struct.svn_diff_tree_processor_t* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.svn_diff_tree_processor_t*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_16__*, align 8
  %21 = alloca %struct.merge_dir_baton_t*, align 8
  %22 = alloca %struct.TYPE_17__*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca %struct.TYPE_15__*, align 8
  %27 = alloca i64, align 8
  store i8* %0, i8** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32* %2, i32** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store %struct.TYPE_17__* %5, %struct.TYPE_17__** %16, align 8
  store i8* %6, i8** %17, align 8
  store %struct.svn_diff_tree_processor_t* %7, %struct.svn_diff_tree_processor_t** %18, align 8
  store i32* %8, i32** %19, align 8
  %28 = load %struct.svn_diff_tree_processor_t*, %struct.svn_diff_tree_processor_t** %18, align 8
  %29 = getelementptr inbounds %struct.svn_diff_tree_processor_t, %struct.svn_diff_tree_processor_t* %28, i32 0, i32 0
  %30 = load %struct.TYPE_16__*, %struct.TYPE_16__** %29, align 8
  store %struct.TYPE_16__* %30, %struct.TYPE_16__** %20, align 8
  %31 = load i8*, i8** %17, align 8
  %32 = bitcast i8* %31 to %struct.merge_dir_baton_t*
  store %struct.merge_dir_baton_t* %32, %struct.merge_dir_baton_t** %21, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 3
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %11, align 8
  %39 = load i32*, i32** %19, align 8
  %40 = call i8* @svn_dirent_join(i32 %37, i8* %38, i32* %39)
  store i8* %40, i8** %23, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %42 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %21, align 8
  %43 = load i32*, i32** %19, align 8
  %44 = call i32 @handle_pending_notifications(%struct.TYPE_16__* %41, %struct.merge_dir_baton_t* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %47 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %21, align 8
  %48 = load i8*, i8** %23, align 8
  %49 = load i32*, i32** %19, align 8
  %50 = call i32 @mark_dir_edited(%struct.TYPE_16__* %46, %struct.merge_dir_baton_t* %47, i8* %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %21, align 8
  %53 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %52, i32 0, i32 3
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %9
  %57 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %21, align 8
  %58 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @CONFLICT_REASON_NONE, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %76

62:                                               ; preds = %56
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %64 = load i8*, i8** %23, align 8
  %65 = load i32, i32* @svn_node_dir, align 4
  %66 = load i32, i32* @svn_wc_notify_update_shadowed_update, align 4
  %67 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %21, align 8
  %68 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.merge_dir_baton_t*, %struct.merge_dir_baton_t** %21, align 8
  %71 = getelementptr inbounds %struct.merge_dir_baton_t, %struct.merge_dir_baton_t* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32*, i32** %19, align 8
  %74 = call i32 @record_skip(%struct.TYPE_16__* %63, i8* %64, i32 %65, i32 %66, i32 %69, i32 %72, i32* %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  br label %76

76:                                               ; preds = %62, %56
  %77 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %77, i32** %10, align 8
  br label %161

78:                                               ; preds = %9
  %79 = load i8*, i8** %23, align 8
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %82 = load i32*, i32** %19, align 8
  %83 = load i32*, i32** %19, align 8
  %84 = call i32 @prepare_merge_props_changed(%struct.TYPE_17__** %22, i8* %79, %struct.TYPE_17__* %80, %struct.TYPE_16__* %81, i32* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %159

90:                                               ; preds = %78
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 5
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %92, align 8
  store %struct.TYPE_15__* %93, %struct.TYPE_15__** %26, align 8
  %94 = load i8*, i8** %23, align 8
  %95 = load i32, i32* @svn_node_dir, align 4
  %96 = load i32, i32* @svn_node_dir, align 4
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_14__*, %struct.TYPE_14__** %100, align 8
  %102 = load i32*, i32** %19, align 8
  %103 = load i32*, i32** %19, align 8
  %104 = call i32 @make_conflict_versions(i32** %24, i32** %25, i8* %94, i32 %95, i32 %96, i32* %98, %struct.TYPE_14__* %101, i32* %102, i32* %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = load i8*, i8** %23, align 8
  %110 = load i32*, i32** %24, align 8
  %111 = load i32*, i32** %25, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %22, align 8
  %114 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %115 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** %19, align 8
  %124 = call i32 @svn_wc_merge_props3(i64* %27, i32 %108, i8* %109, i32* %110, i32* %111, i32* %112, %struct.TYPE_17__* %113, i32 %116, i32* null, i32* null, i32 %119, i32 %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  %126 = load i64, i64* %27, align 8
  %127 = load i64, i64* @svn_wc_notify_state_conflicted, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %137

129:                                              ; preds = %90
  %130 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %130, i32 0, i32 1
  %132 = load i8*, i8** %23, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @alloc_and_store_path(i32* %131, i8* %132, i32 %135)
  br label %137

137:                                              ; preds = %129, %90
  %138 = load i64, i64* %27, align 8
  %139 = load i64, i64* @svn_wc_notify_state_conflicted, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %149, label %141

141:                                              ; preds = %137
  %142 = load i64, i64* %27, align 8
  %143 = load i64, i64* @svn_wc_notify_state_merged, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %149, label %145

145:                                              ; preds = %141
  %146 = load i64, i64* %27, align 8
  %147 = load i64, i64* @svn_wc_notify_state_changed, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %145, %141, %137
  %150 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %151 = load i8*, i8** %23, align 8
  %152 = load i32, i32* @svn_node_file, align 4
  %153 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %154 = load i64, i64* %27, align 8
  %155 = load i32*, i32** %19, align 8
  %156 = call i32 @record_update_update(%struct.TYPE_16__* %150, i8* %151, i32 %152, i32 %153, i64 %154, i32* %155)
  %157 = call i32 @SVN_ERR(i32 %156)
  br label %158

158:                                              ; preds = %149, %145
  br label %159

159:                                              ; preds = %158, %78
  %160 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %160, i32** %10, align 8
  br label %161

161:                                              ; preds = %159, %76
  %162 = load i32*, i32** %10, align 8
  ret i32* %162
}

declare dso_local i8* @svn_dirent_join(i32, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @handle_pending_notifications(%struct.TYPE_16__*, %struct.merge_dir_baton_t*, i32*) #1

declare dso_local i32 @mark_dir_edited(%struct.TYPE_16__*, %struct.merge_dir_baton_t*, i8*, i32*) #1

declare dso_local i32 @record_skip(%struct.TYPE_16__*, i8*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @prepare_merge_props_changed(%struct.TYPE_17__**, i8*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32 @make_conflict_versions(i32**, i32**, i8*, i32, i32, i32*, %struct.TYPE_14__*, i32*, i32*) #1

declare dso_local i32 @svn_wc_merge_props3(i64*, i32, i8*, i32*, i32*, i32*, %struct.TYPE_17__*, i32, i32*, i32*, i32, i32, i32*) #1

declare dso_local i32 @alloc_and_store_path(i32*, i8*, i32) #1

declare dso_local i32 @record_update_update(%struct.TYPE_16__*, i8*, i32, i32, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
