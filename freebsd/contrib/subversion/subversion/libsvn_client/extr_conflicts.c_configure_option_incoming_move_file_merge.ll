; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_incoming_move_file_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_incoming_move_file_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.conflict_tree_incoming_delete_details* }
%struct.conflict_tree_incoming_delete_details = type { i32, i32* }

@svn_node_file = common dso_local global i64 0, align 8
@svn_node_none = common dso_local global i64 0, align 8
@svn_wc_conflict_action_delete = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_client_conflict_option_incoming_move_file_text_merge = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Move and merge\00", align 1
@resolve_incoming_move_file_text_merge = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_9__*, i32*, i32*, i32*)* @configure_option_incoming_move_file_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @configure_option_incoming_move_file_merge(%struct.TYPE_9__* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca %struct.conflict_tree_incoming_delete_details*, align 8
  %19 = alloca i8*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = call i64 @svn_client_conflict_get_incoming_change(%struct.TYPE_9__* %20)
  store i64 %21, i64* %11, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %23 = call i64 @svn_client_conflict_tree_get_victim_node_kind(%struct.TYPE_9__* %22)
  store i64 %23, i64* %10, align 8
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %12, i32* %13, i64* %14, %struct.TYPE_9__* %24, i32* %25, i32* %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %30 = load i32*, i32** %9, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @svn_client_conflict_get_incoming_new_repos_location(i8** %15, i32* %16, i64* %17, %struct.TYPE_9__* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @svn_node_file, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %85

37:                                               ; preds = %4
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* @svn_node_file, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %85

41:                                               ; preds = %37
  %42 = load i64, i64* %17, align 8
  %43 = load i64, i64* @svn_node_none, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %85

45:                                               ; preds = %41
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @svn_wc_conflict_action_delete, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %85

49:                                               ; preds = %45
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %51, align 8
  store %struct.conflict_tree_incoming_delete_details* %52, %struct.conflict_tree_incoming_delete_details** %18, align 8
  %53 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %18, align 8
  %54 = icmp eq %struct.conflict_tree_incoming_delete_details* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %18, align 8
  %57 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %62

60:                                               ; preds = %55, %49
  %61 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %61, i32** %5, align 8
  br label %87

62:                                               ; preds = %55
  %63 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %18, align 8
  %64 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @apr_hash_count(i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %69, i32** %5, align 8
  br label %87

70:                                               ; preds = %62
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %72 = load i32*, i32** %7, align 8
  %73 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %18, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @describe_incoming_move_merge_conflict_option(i8** %19, %struct.TYPE_9__* %71, i32* %72, %struct.conflict_tree_incoming_delete_details* %73, i32* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  %78 = load i32*, i32** %8, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %80 = load i32, i32* @svn_client_conflict_option_incoming_move_file_text_merge, align 4
  %81 = call i32 @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %82 = load i8*, i8** %19, align 8
  %83 = load i32, i32* @resolve_incoming_move_file_text_merge, align 4
  %84 = call i32 @add_resolution_option(i32* %78, %struct.TYPE_9__* %79, i32 %80, i32 %81, i8* %82, i32 %83)
  br label %85

85:                                               ; preds = %70, %45, %41, %37, %4
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %86, i32** %5, align 8
  br label %87

87:                                               ; preds = %85, %68, %60
  %88 = load i32*, i32** %5, align 8
  ret i32* %88
}

declare dso_local i64 @svn_client_conflict_get_incoming_change(%struct.TYPE_9__*) #1

declare dso_local i64 @svn_client_conflict_tree_get_victim_node_kind(%struct.TYPE_9__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_old_repos_location(i8**, i32*, i64*, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_incoming_new_repos_location(i8**, i32*, i64*, %struct.TYPE_9__*, i32*, i32*) #1

declare dso_local i64 @apr_hash_count(i32) #1

declare dso_local i32 @describe_incoming_move_merge_conflict_option(i8**, %struct.TYPE_9__*, i32*, %struct.conflict_tree_incoming_delete_details*, i32*, i32*) #1

declare dso_local i32 @add_resolution_option(i32*, %struct.TYPE_9__*, i32, i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
