; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_svn_repos__hooks_pre_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_hooks.c_svn_repos__hooks_pre_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@SVN_REPOS__HOOK_PRE_LOCK = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos__hooks_pre_lock(i32* %0, i32* %1, i8** %2, i8* %3, i8* %4, i8* %5, i64 %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca [7 x i8*], align 16
  %21 = alloca %struct.TYPE_3__*, align 8
  store i32* %0, i32** %10, align 8
  store i32* %1, i32** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  store i32* %7, i32** %17, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i32*, i32** %17, align 8
  %24 = call i8* @svn_repos_pre_lock_hook(i32* %22, i32* %23)
  store i8* %24, i8** %18, align 8
  %25 = load i8*, i8** %18, align 8
  %26 = load i32*, i32** %17, align 8
  %27 = call i8* @check_hook_cmd(i8* %25, i64* %19, i32* %26)
  store i8* %27, i8** %18, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %8
  %30 = load i64, i64* %19, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i8*, i8** %18, align 8
  %34 = call i32* @hook_symlink_error(i8* %33)
  store i32* %34, i32** %9, align 8
  br label %89

35:                                               ; preds = %29, %8
  %36 = load i8*, i8** %18, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %80

38:                                               ; preds = %35
  %39 = load i8*, i8** %18, align 8
  %40 = getelementptr inbounds [7 x i8*], [7 x i8*]* %20, i64 0, i64 0
  store i8* %39, i8** %40, align 16
  %41 = load i32*, i32** %10, align 8
  %42 = load i32*, i32** %17, align 8
  %43 = call i32 @svn_repos_path(i32* %41, i32* %42)
  %44 = load i32*, i32** %17, align 8
  %45 = call i8* @svn_dirent_local_style(i32 %43, i32* %44)
  %46 = getelementptr inbounds [7 x i8*], [7 x i8*]* %20, i64 0, i64 1
  store i8* %45, i8** %46, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = getelementptr inbounds [7 x i8*], [7 x i8*]* %20, i64 0, i64 2
  store i8* %47, i8** %48, align 16
  %49 = load i8*, i8** %14, align 8
  %50 = getelementptr inbounds [7 x i8*], [7 x i8*]* %20, i64 0, i64 3
  store i8* %49, i8** %50, align 8
  %51 = load i8*, i8** %15, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %38
  %54 = load i8*, i8** %15, align 8
  br label %56

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i8* [ %54, %53 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %55 ]
  %58 = getelementptr inbounds [7 x i8*], [7 x i8*]* %20, i64 0, i64 4
  store i8* %57, i8** %58, align 16
  %59 = load i64, i64* %16, align 8
  %60 = icmp ne i64 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)
  %63 = getelementptr inbounds [7 x i8*], [7 x i8*]* %20, i64 0, i64 5
  store i8* %62, i8** %63, align 8
  %64 = getelementptr inbounds [7 x i8*], [7 x i8*]* %20, i64 0, i64 6
  store i8* null, i8** %64, align 16
  %65 = load i32, i32* @SVN_REPOS__HOOK_PRE_LOCK, align 4
  %66 = load i8*, i8** %18, align 8
  %67 = getelementptr inbounds [7 x i8*], [7 x i8*]* %20, i64 0, i64 0
  %68 = load i32*, i32** %11, align 8
  %69 = load i32*, i32** %17, align 8
  %70 = call i32 @run_hook_cmd(%struct.TYPE_3__** %21, i32 %65, i8* %66, i8** %67, i32* %68, i32* null, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = load i8**, i8*** %12, align 8
  %73 = icmp ne i8** %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %56
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i8*, i8** %76, align 8
  %78 = load i8**, i8*** %12, align 8
  store i8* %77, i8** %78, align 8
  br label %79

79:                                               ; preds = %74, %56
  br label %86

80:                                               ; preds = %35
  %81 = load i8**, i8*** %12, align 8
  %82 = icmp ne i8** %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %84, align 8
  br label %85

85:                                               ; preds = %83, %80
  br label %86

86:                                               ; preds = %85, %79
  br label %87

87:                                               ; preds = %86
  %88 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %88, i32** %9, align 8
  br label %89

89:                                               ; preds = %87, %32
  %90 = load i32*, i32** %9, align 8
  ret i32* %90
}

declare dso_local i8* @svn_repos_pre_lock_hook(i32*, i32*) #1

declare dso_local i8* @check_hook_cmd(i8*, i64*, i32*) #1

declare dso_local i32* @hook_symlink_error(i8*) #1

declare dso_local i8* @svn_dirent_local_style(i32, i32*) #1

declare dso_local i32 @svn_repos_path(i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @run_hook_cmd(%struct.TYPE_3__**, i32, i8*, i8**, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
