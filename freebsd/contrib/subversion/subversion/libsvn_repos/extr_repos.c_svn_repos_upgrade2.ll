; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_svn_repos_upgrade2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_repos.c_svn_repos_upgrade2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.fs_upgrade_notify_baton_t = type { i8*, i32 (i8*, %struct.TYPE_8__*, i32*)* }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_repos_notify_mutex_acquired = common dso_local global i32 0, align 4
@svn_repos_notify_upgrade_start = common dso_local global i32 0, align 4
@SVN_REPOS__FORMAT = common dso_local global i32 0, align 4
@fs_upgrade_notify = common dso_local global i32* null, align 8
@SVN_REPOS__FORMAT_NUMBER = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_upgrade2(i8* %0, i32 %1, i32 (i8*, %struct.TYPE_8__*, i32*)* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32 (i8*, %struct.TYPE_8__*, i32*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_7__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.fs_upgrade_notify_baton_t, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 (i8*, %struct.TYPE_8__*, i32*)* %2, i32 (i8*, %struct.TYPE_8__*, i32*)** %8, align 8
  store i8* %3, i8** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = call i32* @svn_pool_create(i32* %17)
  store i32* %18, i32** %14, align 8
  %19 = load i32 (i8*, %struct.TYPE_8__*, i32*)*, i32 (i8*, %struct.TYPE_8__*, i32*)** %8, align 8
  %20 = getelementptr inbounds %struct.fs_upgrade_notify_baton_t, %struct.fs_upgrade_notify_baton_t* %15, i32 0, i32 1
  store i32 (i8*, %struct.TYPE_8__*, i32*)* %19, i32 (i8*, %struct.TYPE_8__*, i32*)** %20, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = getelementptr inbounds %struct.fs_upgrade_notify_baton_t, %struct.fs_upgrade_notify_baton_t* %15, i32 0, i32 0
  store i8* %21, i8** %22, align 8
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* @TRUE, align 4
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32*, i32** %14, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = call i32 @get_repos(%struct.TYPE_7__** %11, i8* %23, i32 %24, i32 %25, i32 %26, i32* null, i32* %27, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32 (i8*, %struct.TYPE_8__*, i32*)*, i32 (i8*, %struct.TYPE_8__*, i32*)** %8, align 8
  %32 = icmp ne i32 (i8*, %struct.TYPE_8__*, i32*)* %31, null
  br i1 %32, label %33, label %50

33:                                               ; preds = %5
  %34 = load i32, i32* @svn_repos_notify_mutex_acquired, align 4
  %35 = load i32*, i32** %14, align 8
  %36 = call %struct.TYPE_8__* @svn_repos_notify_create(i32 %34, i32* %35)
  store %struct.TYPE_8__* %36, %struct.TYPE_8__** %16, align 8
  %37 = load i32 (i8*, %struct.TYPE_8__*, i32*)*, i32 (i8*, %struct.TYPE_8__*, i32*)** %8, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = call i32 %37(i8* %38, %struct.TYPE_8__* %39, i32* %40)
  %42 = load i32, i32* @svn_repos_notify_upgrade_start, align 4
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32 (i8*, %struct.TYPE_8__*, i32*)*, i32 (i8*, %struct.TYPE_8__*, i32*)** %8, align 8
  %46 = load i8*, i8** %9, align 8
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %48 = load i32*, i32** %14, align 8
  %49 = call i32 %45(i8* %46, %struct.TYPE_8__* %47, i32* %48)
  br label %50

50:                                               ; preds = %33, %5
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SVN_REPOS__FORMAT, align 4
  %55 = load i32*, i32** %14, align 8
  %56 = call i8* @svn_dirent_join(i32 %53, i32 %54, i32* %55)
  store i8* %56, i8** %12, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = call i32 @svn_io_read_version_file(i32* %13, i8* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i8*, i8** %12, align 8
  %62 = load i32, i32* %13, align 4
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @svn_io_write_version_file(i8* %61, i32 %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32 (i8*, %struct.TYPE_8__*, i32*)*, i32 (i8*, %struct.TYPE_8__*, i32*)** %8, align 8
  %70 = icmp ne i32 (i8*, %struct.TYPE_8__*, i32*)* %69, null
  br i1 %70, label %71, label %73

71:                                               ; preds = %50
  %72 = load i32*, i32** @fs_upgrade_notify, align 8
  br label %74

73:                                               ; preds = %50
  br label %74

74:                                               ; preds = %73, %71
  %75 = phi i32* [ %72, %71 ], [ null, %73 ]
  %76 = load i32*, i32** %14, align 8
  %77 = call i32 @svn_fs_upgrade2(i32 %68, i32* %75, %struct.fs_upgrade_notify_baton_t* %15, i32* null, i32* null, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i8*, i8** %12, align 8
  %80 = load i32, i32* @SVN_REPOS__FORMAT_NUMBER, align 4
  %81 = load i32*, i32** %14, align 8
  %82 = call i32 @svn_io_write_version_file(i8* %79, i32 %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @svn_pool_destroy(i32* %84)
  %86 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %86
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_repos(%struct.TYPE_7__**, i8*, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_repos_notify_create(i32, i32*) #1

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local i32 @svn_io_read_version_file(i32*, i8*, i32*) #1

declare dso_local i32 @svn_io_write_version_file(i8*, i32, i32*) #1

declare dso_local i32 @svn_fs_upgrade2(i32, i32*, %struct.fs_upgrade_notify_baton_t*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
