; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_incoming_delete_accept.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_configure_option_incoming_delete_accept.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.conflict_tree_incoming_delete_details* }
%struct.conflict_tree_incoming_delete_details = type { i32* }
%struct.TYPE_10__ = type { i32 }

@svn_wc_conflict_action_delete = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_edited = common dso_local global i64 0, align 8
@svn_wc_conflict_reason_moved_away = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"accept the deletion of '%s'\00", align 1
@svn_client_conflict_option_incoming_delete_accept = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Accept incoming deletion\00", align 1
@resolve_incoming_delete_accept = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_11__*, %struct.TYPE_10__*, i32*, i32*)* @configure_option_incoming_delete_accept to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @configure_option_incoming_delete_accept(%struct.TYPE_11__* %0, %struct.TYPE_10__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.conflict_tree_incoming_delete_details*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %20 = call i64 @svn_client_conflict_get_incoming_change(%struct.TYPE_11__* %19)
  store i64 %20, i64* %10, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %22 = call i64 @svn_client_conflict_get_local_change(%struct.TYPE_11__* %21)
  store i64 %22, i64* %11, align 8
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @svn_client_conflict_get_incoming_new_repos_location(i8** %12, i32* %13, i32* null, %struct.TYPE_11__* %23, i32* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @svn_wc_conflict_action_delete, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %86

31:                                               ; preds = %4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %33, align 8
  store %struct.conflict_tree_incoming_delete_details* %34, %struct.conflict_tree_incoming_delete_details** %14, align 8
  %35 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %14, align 8
  %36 = icmp ne %struct.conflict_tree_incoming_delete_details* %35, null
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load %struct.conflict_tree_incoming_delete_details*, %struct.conflict_tree_incoming_delete_details** %14, align 8
  %39 = getelementptr inbounds %struct.conflict_tree_incoming_delete_details, %struct.conflict_tree_incoming_delete_details* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br label %42

42:                                               ; preds = %37, %31
  %43 = phi i1 [ false, %31 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  store i32 %44, i32* %15, align 4
  %45 = load i32, i32* %15, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @svn_wc_conflict_reason_edited, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %47
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @svn_wc_conflict_reason_moved_away, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %51, %47
  %56 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %56, i32** %5, align 8
  br label %88

57:                                               ; preds = %51, %42
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @svn_wc__get_wcroot(i8** %17, i32 %60, i32 %63, i32* %64, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %69 = call i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_11__* %68)
  store i8* %69, i8** %18, align 8
  %70 = load i32*, i32** %9, align 8
  %71 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %72 = load i8*, i8** %17, align 8
  %73 = load i8*, i8** %18, align 8
  %74 = call i32 @svn_dirent_skip_ancestor(i8* %72, i8* %73)
  %75 = load i32*, i32** %9, align 8
  %76 = call i32 @svn_dirent_local_style(i32 %74, i32* %75)
  %77 = call i8* @apr_psprintf(i32* %70, i32 %71, i32 %76)
  store i8* %77, i8** %16, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %80 = load i32, i32* @svn_client_conflict_option_incoming_delete_accept, align 4
  %81 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %82 = load i8*, i8** %16, align 8
  %83 = load i32, i32* @resolve_incoming_delete_accept, align 4
  %84 = call i32 @add_resolution_option(i32* %78, %struct.TYPE_11__* %79, i32 %80, i32 %81, i8* %82, i32 %83)
  br label %85

85:                                               ; preds = %57
  br label %86

86:                                               ; preds = %85, %4
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %87, i32** %5, align 8
  br label %88

88:                                               ; preds = %86, %55
  %89 = load i32*, i32** %5, align 8
  ret i32* %89
}

declare dso_local i64 @svn_client_conflict_get_incoming_change(%struct.TYPE_11__*) #1

declare dso_local i64 @svn_client_conflict_get_local_change(%struct.TYPE_11__*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_new_repos_location(i8**, i32*, i32*, %struct.TYPE_11__*, i32*, i32*) #1

declare dso_local i32 @svn_wc__get_wcroot(i8**, i32, i32, i32*, i32*) #1

declare dso_local i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_11__*) #1

declare dso_local i8* @apr_psprintf(i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @add_resolution_option(i32*, %struct.TYPE_11__*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
