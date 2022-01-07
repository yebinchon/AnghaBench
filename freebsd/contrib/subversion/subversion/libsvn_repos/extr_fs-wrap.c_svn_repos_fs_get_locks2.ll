; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_get_locks2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_repos/extr_fs-wrap.c_svn_repos_fs_get_locks2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.get_locks_baton_t = type { i32*, i32, i8*, i32, i32 }

@svn_depth_empty = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@get_locks_callback = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_repos_fs_get_locks2(i32** %0, %struct.TYPE_3__* %1, i8* %2, i64 %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.get_locks_baton_t, align 8
  store i32** %0, i32*** %8, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = call i32* @apr_hash_make(i32* %18)
  store i32* %19, i32** %15, align 8
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* @svn_depth_empty, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %35, label %23

23:                                               ; preds = %7
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* @svn_depth_files, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %35, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @svn_depth_immediates, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %35, label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* @svn_depth_infinity, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %31, %27, %23, %7
  %36 = phi i1 [ true, %27 ], [ true, %23 ], [ true, %7 ], [ %34, %31 ]
  %37 = zext i1 %36 to i32
  %38 = call i32 @SVN_ERR_ASSERT(i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @svn_fs_youngest_rev(i32* %16, i32 %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = getelementptr inbounds %struct.get_locks_baton_t, %struct.get_locks_baton_t* %17, i32 0, i32 4
  store i32 %47, i32* %48, align 4
  %49 = load i32*, i32** %15, align 8
  %50 = getelementptr inbounds %struct.get_locks_baton_t, %struct.get_locks_baton_t* %17, i32 0, i32 0
  store i32* %49, i32** %50, align 8
  %51 = load i32, i32* %12, align 4
  %52 = getelementptr inbounds %struct.get_locks_baton_t, %struct.get_locks_baton_t* %17, i32 0, i32 3
  store i32 %51, i32* %52, align 8
  %53 = load i8*, i8** %13, align 8
  %54 = getelementptr inbounds %struct.get_locks_baton_t, %struct.get_locks_baton_t* %17, i32 0, i32 2
  store i8* %53, i8** %54, align 8
  %55 = getelementptr inbounds %struct.get_locks_baton_t, %struct.get_locks_baton_t* %17, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %16, align 4
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @svn_fs_revision_root(i32* %55, i32 %58, i32 %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %10, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i32, i32* @get_locks_callback, align 4
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @svn_fs_get_locks2(i32 %65, i8* %66, i64 %67, i32 %68, %struct.get_locks_baton_t* %17, i32* %69)
  %71 = call i32 @SVN_ERR(i32 %70)
  %72 = getelementptr inbounds %struct.get_locks_baton_t, %struct.get_locks_baton_t* %17, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32**, i32*** %8, align 8
  store i32* %73, i32** %74, align 8
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %75
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_fs_youngest_rev(i32*, i32, i32*) #1

declare dso_local i32 @svn_fs_revision_root(i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_fs_get_locks2(i32, i8*, i64, i32, %struct.get_locks_baton_t*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
