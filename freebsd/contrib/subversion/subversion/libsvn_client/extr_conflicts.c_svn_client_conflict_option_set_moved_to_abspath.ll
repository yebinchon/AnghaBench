; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_option_set_moved_to_abspath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_svn_client_conflict_option_set_moved_to_abspath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.conflict_tree_incoming_delete_details* }
%struct.conflict_tree_incoming_delete_details = type { i32, i32* }
%struct.TYPE_11__ = type { i32 }

@svn_client_conflict_option_incoming_move_file_text_merge = common dso_local global i64 0, align 8
@svn_client_conflict_option_incoming_move_dir_merge = common dso_local global i64 0, align 8
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [105 x i8] c"Setting a move target requires details for tree conflict at '%s' to be fetched from the repository first\00", align 1
@SVN_ERR_INCORRECT_PARAMS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"Index '%d' is out of bounds of the possible move target list for '%s'\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_conflict_option_set_moved_to_abspath(%struct.TYPE_10__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca %struct.conflict_tree_incoming_delete_details*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  store %struct.TYPE_9__* %16, %struct.TYPE_9__** %10, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %18 = call i64 @svn_client_conflict_option_get_id(%struct.TYPE_10__* %17)
  %19 = load i64, i64* @svn_client_conflict_option_incoming_move_file_text_merge, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %23 = call i64 @svn_client_conflict_option_get_id(%struct.TYPE_10__* %22)
  %24 = load i64, i64* @svn_client_conflict_option_incoming_move_dir_merge, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %21, %4
  %27 = phi i1 [ true, %4 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @SVN_ERR_ASSERT(i32 %28)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %31 = call i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_9__* %30)
  store i8* %31, i8** %12, align 8
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 1
  %34 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %33, align 8
  store %struct.conflict_tree_incoming_delete_details* %34, %struct.conflict_tree_incoming_delete_details** %11, align 8
  %35 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %11, align 8
  %36 = icmp eq %struct.conflict_tree_incoming_delete_details* %35, null
  br i1 %36, label %42, label %37

37:                                               ; preds = %26
  %38 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %11, align 8
  %39 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37, %26
  %43 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %44 = call i32 @_(i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str, i64 0, i64 0))
  %45 = load i8*, i8** %12, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @svn_dirent_local_style(i8* %45, i32* %46)
  %48 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %43, i32* null, i32 %44, i32 %47)
  store i32* %48, i32** %5, align 8
  br label %89

49:                                               ; preds = %37
  %50 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %11, align 8
  %51 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %11, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = call i32 @get_moved_to_repos_relpath(%struct.conflict_tree_incoming_delete_details* %53, i32* %54)
  %56 = call %struct.TYPE_11__* @svn_hash_gets(i32* %52, i32 %55)
  store %struct.TYPE_11__* %56, %struct.TYPE_11__** %13, align 8
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %49
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %60, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %59, %49
  %66 = load i32, i32* @SVN_ERR_INCORRECT_PARAMS, align 4
  %67 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %68 = load i32, i32* %7, align 4
  %69 = load i8*, i8** %12, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @svn_dirent_local_style(i8* %69, i32* %70)
  %72 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %66, i32* null, i32 %67, i32 %68, i32 %71)
  store i32* %72, i32** %5, align 8
  br label %89

73:                                               ; preds = %59
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %11, align 8
  %76 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %11, align 8
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 @describe_incoming_move_merge_conflict_option(i32* %78, %struct.TYPE_9__* %79, i32* %80, %struct.conflict_tree_incoming_delete_details* %81, i32 %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  %88 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %88, i32** %5, align 8
  br label %89

89:                                               ; preds = %73, %65, %42
  %90 = load i32*, i32** %5, align 8
  ret i32* %90
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @svn_client_conflict_option_get_id(%struct.TYPE_10__*) #1

declare dso_local i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_9__*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local %struct.TYPE_11__* @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @get_moved_to_repos_relpath(%struct.conflict_tree_incoming_delete_details*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @describe_incoming_move_merge_conflict_option(i32*, %struct.TYPE_9__*, i32*, %struct.conflict_tree_incoming_delete_details*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
