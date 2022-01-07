; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_incoming_dir_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_incoming_dir_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.conflict_tree_incoming_delete_details* }
%struct.conflict_tree_incoming_delete_details = type { i32, i32* }

@svn_node_dir = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_wc_conflict_action_delete = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_edited = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_client_conflict_option_incoming_move_dir_merge = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Move and merge\00", align 1
@resolve_incoming_move_dir_merge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_10__*, i32*, i32*, i32*)* @configure_option_incoming_dir_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @configure_option_incoming_dir_merge(%struct.TYPE_10__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca %struct.conflict_tree_incoming_delete_details*, align 8
  %20 = alloca i8*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %22 = call i64 @svn_client_conflict_get_incoming_change(%struct.TYPE_10__* %21)
  store i64 %22, i64* %11, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %24 = call i64 @svn_client_conflict_get_local_change(%struct.TYPE_10__* %23)
  store i64 %24, i64* %12, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %26 = call i64 @svn_client_conflict_tree_get_victim_node_kind(%struct.TYPE_10__* %25)
  store i64 %26, i64* %10, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %13, i32* %14, i64* %15, %struct.TYPE_10__* %27, i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @svn_client_conflict_get_incoming_new_repos_location(i8** %16, i32* %17, i64* %18, %struct.TYPE_10__* %32, i32* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @svn_node_dir, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %92

40:                                               ; preds = %4
  %41 = load i64, i64* %15, align 8
  %42 = load i64, i64* @svn_node_dir, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %92

44:                                               ; preds = %40
  %45 = load i64, i64* %18, align 8
  %46 = load i64, i64* @svn_node_none, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %92

48:                                               ; preds = %44
  %49 = load i64, i64* %11, align 8
  %50 = load i64, i64* @svn_wc_conflict_action_delete, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %92

52:                                               ; preds = %48
  %53 = load i64, i64* %12, align 8
  %54 = load i64, i64* @svn_wc_conflict_reason_edited, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %92

56:                                               ; preds = %52
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %58, align 8
  store %struct.conflict_tree_incoming_delete_details* %59, %struct.conflict_tree_incoming_delete_details** %19, align 8
  %60 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %19, align 8
  %61 = icmp eq %struct.conflict_tree_incoming_delete_details* %60, null
  br i1 %61, label %67, label %62

62:                                               ; preds = %56
  %63 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %19, align 8
  %64 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %62, %56
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %68, i32** %5, align 8
  br label %94

69:                                               ; preds = %62
  %70 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %19, align 8
  %71 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i64 @apr_hash_count(i32 %72)
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %69
  %76 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %76, i32** %5, align 8
  br label %94

77:                                               ; preds = %69
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %19, align 8
  %81 = load i32*, i32** %9, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @describe_incoming_move_merge_conflict_option(i8** %20, %struct.TYPE_10__* %78, i32* %79, %struct.conflict_tree_incoming_delete_details* %80, i32* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  %85 = load i32*, i32** %8, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %87 = load i32, i32* @svn_client_conflict_option_incoming_move_dir_merge, align 4
  %88 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %89 = load i8*, i8** %20, align 8
  %90 = load i32, i32* @resolve_incoming_move_dir_merge, align 4
  %91 = call i32 @add_resolution_option(i32* %85, %struct.TYPE_10__* %86, i32 %87, i32 %88, i8* %89, i32 %90)
  br label %92

92:                                               ; preds = %77, %52, %48, %44, %40, %4
  %93 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %93, i32** %5, align 8
  br label %94

94:                                               ; preds = %92, %75, %67
  %95 = load i32*, i32** %5, align 8
  ret i32* %95
}

declare dso_local i64 @svn_client_conflict_get_incoming_change(%struct.TYPE_10__*) #1

declare dso_local i64 @svn_client_conflict_get_local_change(%struct.TYPE_10__*) #1

declare dso_local i64 @svn_client_conflict_tree_get_victim_node_kind(%struct.TYPE_10__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_old_repos_location(i8**, i32*, i64*, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_incoming_new_repos_location(i8**, i32*, i64*, %struct.TYPE_10__*, i32*, i32*) #1

declare dso_local i64 @apr_hash_count(i32) #1

declare dso_local i32 @describe_incoming_move_merge_conflict_option(i8**, %struct.TYPE_10__*, i32*, %struct.conflict_tree_incoming_delete_details*, i32*, i32*) #1

declare dso_local i32 @add_resolution_option(i32*, %struct.TYPE_10__*, i32, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
