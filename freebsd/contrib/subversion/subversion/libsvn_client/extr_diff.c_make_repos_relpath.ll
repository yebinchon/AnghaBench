; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_make_repos_relpath.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_diff.c_make_repos_relpath.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (i8**, i8*, i8*, i8*, i32*, i8*, i32*, i32*)* @make_repos_relpath to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @make_repos_relpath(i8** %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_8__*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_8__*, align 8
  store i8** %0, i8*** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i32* %4, i32** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %8
  %23 = load i8*, i8** %15, align 8
  %24 = icmp ne i8* %23, null
  br i1 %24, label %25, label %63

25:                                               ; preds = %22
  %26 = load i8*, i8** %12, align 8
  %27 = call i32 @svn_path_is_url(i8* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %63, label %29

29:                                               ; preds = %25, %8
  %30 = load i8*, i8** %15, align 8
  %31 = load i8*, i8** %11, align 8
  %32 = load i32*, i32** %17, align 8
  %33 = call i32 @svn_dirent_join(i8* %30, i8* %31, i32* %32)
  %34 = load i32*, i32** %17, align 8
  %35 = call i32 @svn_dirent_get_absolute(i8** %18, i32 %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i8**, i8*** %10, align 8
  %38 = load i32*, i32** %14, align 8
  %39 = load i8*, i8** %18, align 8
  %40 = load i32*, i32** %16, align 8
  %41 = load i32*, i32** %17, align 8
  %42 = call %struct.TYPE_8__* @svn_wc__node_get_repos_info(i32* null, i8** %37, i32* null, i32* null, i32* %38, i8* %39, i32* %40, i32* %41)
  store %struct.TYPE_8__* %42, %struct.TYPE_8__** %19, align 8
  %43 = load i8*, i8** %13, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %57

45:                                               ; preds = %29
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %47 = icmp ne %struct.TYPE_8__* %46, null
  br i1 %47, label %48, label %57

48:                                               ; preds = %45
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %50 = icmp ne %struct.TYPE_8__* %49, null
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %45, %29
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %59 = call %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__* %58)
  store %struct.TYPE_8__* %59, %struct.TYPE_8__** %9, align 8
  br label %70

60:                                               ; preds = %51, %48
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %62 = call i32 @svn_error_clear(%struct.TYPE_8__* %61)
  br label %63

63:                                               ; preds = %60, %25, %22
  %64 = load i8*, i8** %13, align 8
  %65 = load i8*, i8** %11, align 8
  %66 = load i32*, i32** %16, align 8
  %67 = call i8* @svn_relpath_join(i8* %64, i8* %65, i32* %66)
  %68 = load i8**, i8*** %10, align 8
  store i8* %67, i8** %68, align 8
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_8__* %69, %struct.TYPE_8__** %9, align 8
  br label %70

70:                                               ; preds = %63, %57
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %9, align 8
  ret %struct.TYPE_8__* %71
}

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i32, i32*) #1

declare dso_local i32 @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_wc__node_get_repos_info(i32*, i8**, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_8__* @svn_error_trace(%struct.TYPE_8__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_8__*) #1

declare dso_local i8* @svn_relpath_join(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
