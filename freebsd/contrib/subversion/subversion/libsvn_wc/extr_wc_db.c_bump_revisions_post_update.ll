; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_bump_revisions_post_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_bump_revisions_post_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i64 }
%struct.TYPE_17__ = type { i32 }

@INVALID_REPOS_ID = common dso_local global i32 0, align 4
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_18__* null, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_18__* (%struct.TYPE_17__*, i8*, i32*, i32, i8*, i8*, i8*, i32, i32*, i32*, i32, i32, i8*, i32*)* @bump_revisions_post_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_18__* @bump_revisions_post_update(%struct.TYPE_17__* %0, i8* %1, i32* %2, i32 %3, i8* %4, i8* %5, i8* %6, i32 %7, i32* %8, i32* %9, i32 %10, i32 %11, i8* %12, i32* %13) #0 {
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.TYPE_18__*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i8*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %16, align 8
  store i8* %1, i8** %17, align 8
  store i32* %2, i32** %18, align 8
  store i32 %3, i32* %19, align 4
  store i8* %4, i8** %20, align 8
  store i8* %5, i8** %21, align 8
  store i8* %6, i8** %22, align 8
  store i32 %7, i32* %23, align 4
  store i32* %8, i32** %24, align 8
  store i32* %9, i32** %25, align 8
  store i32 %10, i32* %26, align 4
  store i32 %11, i32* %27, align 4
  store i8* %12, i8** %28, align 8
  store i32* %13, i32** %29, align 8
  %36 = load i32, i32* @INVALID_REPOS_ID, align 4
  store i32 %36, i32* %33, align 4
  %37 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %38 = load i8*, i8** %17, align 8
  %39 = load i32*, i32** %29, align 8
  %40 = load i32*, i32** %29, align 8
  %41 = call %struct.TYPE_18__* @svn_wc__db_base_get_info_internal(i32* %30, i32* %31, i32* %34, i8** %35, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, %struct.TYPE_17__* %37, i8* %38, i32* %39, i32* %40)
  store %struct.TYPE_18__* %41, %struct.TYPE_18__** %32, align 8
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %43 = icmp ne %struct.TYPE_18__* %42, null
  br i1 %43, label %44, label %54

44:                                               ; preds = %14
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %52 = call i32 @svn_error_clear(%struct.TYPE_18__* %51)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_18__* %53, %struct.TYPE_18__** %15, align 8
  br label %109

54:                                               ; preds = %44, %14
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %32, align 8
  %56 = call i32 @SVN_ERR(%struct.TYPE_18__* %55)
  br label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %30, align 4
  switch i32 %58, label %61 [
    i32 130, label %59
    i32 128, label %59
    i32 129, label %59
  ]

59:                                               ; preds = %57, %57, %57
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_18__* %60, %struct.TYPE_18__** %15, align 8
  br label %109

61:                                               ; preds = %57
  br label %62

62:                                               ; preds = %61
  %63 = load i8*, i8** %21, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i8*, i8** %21, align 8
  %67 = load i8*, i8** %22, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %29, align 8
  %72 = call %struct.TYPE_18__* @create_repos_id(i32* %33, i8* %66, i8* %67, i32 %70, i32* %71)
  %73 = call i32 @SVN_ERR(%struct.TYPE_18__* %72)
  br label %74

74:                                               ; preds = %65, %62
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %76 = load i8*, i8** %17, align 8
  %77 = load i32, i32* %30, align 4
  %78 = load i32, i32* %31, align 4
  %79 = load i32, i32* %34, align 4
  %80 = load i8*, i8** %35, align 8
  %81 = load i32, i32* %33, align 4
  %82 = load i8*, i8** %20, align 8
  %83 = load i32, i32* %23, align 4
  %84 = load i32, i32* %19, align 4
  %85 = load i32*, i32** %24, align 8
  %86 = load i32*, i32** %25, align 8
  %87 = load i32, i32* @TRUE, align 4
  %88 = load i32, i32* @FALSE, align 4
  %89 = load i32*, i32** %18, align 8
  %90 = load i32*, i32** %29, align 8
  %91 = call %struct.TYPE_18__* @bump_node_revision(%struct.TYPE_17__* %75, i8* %76, i32 %77, i32 %78, i32 %79, i8* %80, i32 %81, i8* %82, i32 %83, i32 %84, i32* %85, i32* %86, i32 %87, i32 %88, i32* %89, i32* %90)
  %92 = call i32 @SVN_ERR(%struct.TYPE_18__* %91)
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %94 = load i8*, i8** %17, align 8
  %95 = load i32, i32* %19, align 4
  %96 = load i32*, i32** %18, align 8
  %97 = load i32*, i32** %29, align 8
  %98 = call %struct.TYPE_18__* @svn_wc__db_bump_moved_away(%struct.TYPE_17__* %93, i8* %94, i32 %95, i32* %96, i32* %97)
  %99 = call i32 @SVN_ERR(%struct.TYPE_18__* %98)
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %101 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %102 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  %103 = load i32, i32* %27, align 4
  %104 = load i8*, i8** %28, align 8
  %105 = load i32*, i32** %29, align 8
  %106 = call %struct.TYPE_18__* @svn_wc__db_update_move_list_notify(%struct.TYPE_17__* %100, i32 %101, i32 %102, i32 %103, i8* %104, i32* %105)
  %107 = call i32 @SVN_ERR(%struct.TYPE_18__* %106)
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_18__* %108, %struct.TYPE_18__** %15, align 8
  br label %109

109:                                              ; preds = %74, %59, %50
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  ret %struct.TYPE_18__* %110
}

declare dso_local %struct.TYPE_18__* @svn_wc__db_base_get_info_internal(i32*, i32*, i32*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, %struct.TYPE_17__*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_18__*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @create_repos_id(i32*, i8*, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_18__* @bump_node_revision(%struct.TYPE_17__*, i8*, i32, i32, i32, i8*, i32, i8*, i32, i32, i32*, i32*, i32, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_wc__db_bump_moved_away(%struct.TYPE_17__*, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_wc__db_update_move_list_notify(%struct.TYPE_17__*, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
