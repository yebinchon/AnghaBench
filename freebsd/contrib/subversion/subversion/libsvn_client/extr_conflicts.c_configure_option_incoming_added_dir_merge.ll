; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_incoming_added_dir_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_incoming_added_dir_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@svn_node_dir = common dso_local global i64 0, align 8
@svn_wc_conflict_action_add = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_added = common dso_local global i64 0, align 8
@svn_wc_operation_merge = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_obstructed = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"merge '^/%s@%ld' into '%s'\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"merge local '%s' and '^/%s@%ld'\00", align 1
@svn_client_conflict_option_incoming_added_dir_merge = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Merge the directories\00", align 1
@resolve_merge_incoming_added_dir_merge = common dso_local global i32 0, align 4
@resolve_update_incoming_added_dir_merge = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, %struct.TYPE_11__*, i32*, i32*)* @configure_option_incoming_added_dir_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @configure_option_incoming_added_dir_merge(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %19 = call i64 @svn_client_conflict_get_operation(%struct.TYPE_12__* %18)
  store i64 %19, i64* %9, align 8
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %21 = call i64 @svn_client_conflict_get_incoming_change(%struct.TYPE_12__* %20)
  store i64 %21, i64* %10, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = call i64 @svn_client_conflict_get_local_change(%struct.TYPE_12__* %22)
  store i64 %23, i64* %11, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = call i64 @svn_client_conflict_tree_get_victim_node_kind(%struct.TYPE_12__* %24)
  store i64 %25, i64* %12, align 8
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @svn_client_conflict_get_incoming_new_repos_location(i8** %13, i8** %14, i64* %15, %struct.TYPE_12__* %26, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i64, i64* %12, align 8
  %32 = load i64, i64* @svn_node_dir, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %110

34:                                               ; preds = %4
  %35 = load i64, i64* %15, align 8
  %36 = load i64, i64* @svn_node_dir, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %110

38:                                               ; preds = %34
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* @svn_wc_conflict_action_add, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %110

42:                                               ; preds = %38
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @svn_wc_conflict_reason_added, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %42
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @svn_wc_operation_merge, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %110

50:                                               ; preds = %46
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @svn_wc_conflict_reason_obstructed, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %110

54:                                               ; preds = %50, %42
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @svn_wc__get_wcroot(i8** %17, i32 %57, i32 %60, i32* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* @svn_wc_operation_merge, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %54
  %69 = load i32*, i32** %8, align 8
  %70 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %71 = load i8*, i8** %13, align 8
  %72 = load i8*, i8** %14, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @svn_dirent_skip_ancestor(i8* %73, i32 %76)
  %78 = load i32*, i32** %8, align 8
  %79 = call i8* @svn_dirent_local_style(i32 %77, i32* %78)
  %80 = call i8* @apr_psprintf(i32* %69, i32 %70, i8* %71, i8* %72, i8* %79)
  store i8* %80, i8** %16, align 8
  br label %94

81:                                               ; preds = %54
  %82 = load i32*, i32** %8, align 8
  %83 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %84 = load i8*, i8** %17, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @svn_dirent_skip_ancestor(i8* %84, i32 %87)
  %89 = load i32*, i32** %8, align 8
  %90 = call i8* @svn_dirent_local_style(i32 %88, i32* %89)
  %91 = load i8*, i8** %13, align 8
  %92 = load i8*, i8** %14, align 8
  %93 = call i8* @apr_psprintf(i32* %82, i32 %83, i8* %90, i8* %91, i8* %92)
  store i8* %93, i8** %16, align 8
  br label %94

94:                                               ; preds = %81, %68
  %95 = load i32*, i32** %7, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %97 = load i32, i32* @svn_client_conflict_option_incoming_added_dir_merge, align 4
  %98 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %99 = load i8*, i8** %16, align 8
  %100 = load i64, i64* %9, align 8
  %101 = load i64, i64* @svn_wc_operation_merge, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %94
  %104 = load i32, i32* @resolve_merge_incoming_added_dir_merge, align 4
  br label %107

105:                                              ; preds = %94
  %106 = load i32, i32* @resolve_update_incoming_added_dir_merge, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = call i32 @add_resolution_option(i32* %95, %struct.TYPE_12__* %96, i32 %97, i32 %98, i8* %99, i32 %108)
  br label %110

110:                                              ; preds = %107, %50, %46, %38, %34, %4
  %111 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %111
}

declare dso_local i64 @svn_client_conflict_get_operation(%struct.TYPE_12__*) #1

declare dso_local i64 @svn_client_conflict_get_incoming_change(%struct.TYPE_12__*) #1

declare dso_local i64 @svn_client_conflict_get_local_change(%struct.TYPE_12__*) #1

declare dso_local i64 @svn_client_conflict_tree_get_victim_node_kind(%struct.TYPE_12__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_new_repos_location(i8**, i8**, i64*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__get_wcroot(i8**, i32, i32, i32*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i8* @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_dirent_skip_ancestor(i8*, i32) #1

declare dso_local i32 @add_resolution_option(i32*, %struct.TYPE_12__*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
