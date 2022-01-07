; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_close_edit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_commit.c_close_edit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edit_baton = type { %struct.TYPE_2__*, i32, i32, i32*, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@SVN_ERR_REPOS_BAD_ARGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"No valid transaction supplied to close_edit\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*)* @close_edit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @close_edit(i8* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.edit_baton*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.edit_baton*
  store %struct.edit_baton* %12, %struct.edit_baton** %6, align 8
  %13 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %13, i32* %7, align 4
  store i8* null, i8** %10, align 8
  %14 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %15 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @SVN_ERR_REPOS_BAD_ARGS, align 4
  %20 = call i32* @svn_error_create(i32 %19, i32* null, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32* %20, i32** %3, align 8
  br label %86

21:                                               ; preds = %2
  %22 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %23 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %26 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = call i32* @svn_repos_fs_commit_txn(i8** %9, %struct.TYPE_2__* %24, i32* %7, i32* %27, i32* %28)
  store i32* %29, i32** %8, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i64 @SVN_IS_VALID_REVNUM(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %57

33:                                               ; preds = %21
  %34 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %35 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %40 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %39, i32 0, i32 5
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @svn_fs_close_root(i32* %41)
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32*, i32** %8, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %43
  %47 = load i32*, i32** %8, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = call i8* @svn_repos__post_commit_error_str(i32* %47, i32* %48)
  store i8* %49, i8** %10, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @svn_error_clear(i32* %50)
  br label %52

52:                                               ; preds = %46, %43
  %53 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %54 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %53, i32 0, i32 3
  store i32* null, i32** %54, align 8
  %55 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %56 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %55, i32 0, i32 5
  store i32* null, i32** %56, align 8
  br label %69

57:                                               ; preds = %21
  %58 = load i32, i32* @TRUE, align 4
  %59 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %60 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load i32*, i32** %8, align 8
  %62 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %63 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @svn_fs_abort_txn(i32* %64, i32* %65)
  %67 = call i32 @svn_error_compose_create(i32* %61, i32 %66)
  %68 = call i32* @svn_error_trace(i32 %67)
  store i32* %68, i32** %3, align 8
  br label %86

69:                                               ; preds = %52
  %70 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %71 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %74 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.edit_baton*, %struct.edit_baton** %6, align 8
  %77 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %7, align 4
  %82 = load i8*, i8** %10, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = call i32 @invoke_commit_cb(i32 %72, i32 %75, i32 %80, i32 %81, i8* %82, i32* %83)
  %85 = call i32* @svn_error_trace(i32 %84)
  store i32* %85, i32** %3, align 8
  br label %86

86:                                               ; preds = %69, %57, %18
  %87 = load i32*, i32** %3, align 8
  ret i32* %87
}

declare dso_local i32* @svn_error_create(i32, i32*, i8*) #1

declare dso_local i32* @svn_repos_fs_commit_txn(i8**, %struct.TYPE_2__*, i32*, i32*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i32) #1

declare dso_local i32 @svn_fs_close_root(i32*) #1

declare dso_local i8* @svn_repos__post_commit_error_str(i32*, i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_fs_abort_txn(i32*, i32*) #1

declare dso_local i32 @invoke_commit_cb(i32, i32, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
