; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_svn_repos_recover4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_svn_repos_recover4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_repos_notify_mutex_acquired = common dso_local global i32 0, align 4
@svn_repos_notify_recover_start = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_recover4(i8* %0, i32 %1, i32 (i8*, %struct.TYPE_8__*, i32*)* %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32 (i8*, %struct.TYPE_8__*, i32*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_7__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 (i8*, %struct.TYPE_8__*, i32*)* %2, i32 (i8*, %struct.TYPE_8__*, i32*)** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = call i32* @svn_pool_create(i32* %18)
  store i32* %19, i32** %16, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load i32, i32* @TRUE, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32*, i32** %16, align 8
  %25 = load i32*, i32** %16, align 8
  %26 = call i32 @get_repos(%struct.TYPE_7__** %15, i8* %20, i32 %21, i32 %22, i32 %23, i32* null, i32* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32 (i8*, %struct.TYPE_8__*, i32*)*, i32 (i8*, %struct.TYPE_8__*, i32*)** %10, align 8
  %29 = icmp ne i32 (i8*, %struct.TYPE_8__*, i32*)* %28, null
  br i1 %29, label %30, label %47

30:                                               ; preds = %7
  %31 = load i32, i32* @svn_repos_notify_mutex_acquired, align 4
  %32 = load i32*, i32** %16, align 8
  %33 = call %struct.TYPE_8__* @svn_repos_notify_create(i32 %31, i32* %32)
  store %struct.TYPE_8__* %33, %struct.TYPE_8__** %17, align 8
  %34 = load i32 (i8*, %struct.TYPE_8__*, i32*)*, i32 (i8*, %struct.TYPE_8__*, i32*)** %10, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = call i32 %34(i8* %35, %struct.TYPE_8__* %36, i32* %37)
  %39 = load i32, i32* @svn_repos_notify_recover_start, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  %42 = load i32 (i8*, %struct.TYPE_8__*, i32*)*, i32 (i8*, %struct.TYPE_8__*, i32*)** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %45 = load i32*, i32** %16, align 8
  %46 = call i32 %42(i8* %43, %struct.TYPE_8__* %44, i32* %45)
  br label %47

47:                                               ; preds = %30, %7
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %12, align 4
  %52 = load i8*, i8** %13, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = call i32 @svn_fs_recover(i32 %50, i32 %51, i8* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32*, i32** %16, align 8
  %57 = call i32 @svn_pool_destroy(i32* %56)
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %58
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_repos(%struct.TYPE_7__**, i8*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_repos_notify_create(i32, i32*) #1

declare dso_local i32 @svn_fs_recover(i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
