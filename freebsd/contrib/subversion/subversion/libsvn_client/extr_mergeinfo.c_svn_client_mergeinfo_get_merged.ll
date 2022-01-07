; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_svn_client_mergeinfo_get_merged.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_mergeinfo.c_svn_client_mergeinfo_get_merged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client_mergeinfo_get_merged(i32** %0, i8* %1, i32* %2, %struct.TYPE_4__* %3, i32* %4) #0 {
  %6 = alloca i32**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store i32** %0, i32*** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load i8*, i8** %7, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* @FALSE, align 4
  %18 = load i32, i32* @FALSE, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @get_mergeinfo(i64* %12, i8** %11, i8* %15, i32* %16, i32 %17, i32 %18, %struct.TYPE_4__* %19, i32* null, i32* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i64, i64* %12, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %56

26:                                               ; preds = %5
  %27 = load i8*, i8** %7, align 8
  %28 = call i32 @svn_path_is_url(i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %43, label %30

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @svn_dirent_get_absolute(i8** %7, i8* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i8*, i8** %7, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = call i32 @svn_wc__node_get_repos_info(i32* null, i8** %14, i32* null, i32* null, i32 %37, i8* %38, i32* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  br label %52

43:                                               ; preds = %26
  %44 = load i8*, i8** %11, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = call i8* @svn_uri_skip_ancestor(i8* %44, i8* %45, i32* %46)
  store i8* %47, i8** %14, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = icmp ne i8* %48, null
  %50 = zext i1 %49 to i32
  %51 = call i32 @SVN_ERR_ASSERT(i32 %50)
  br label %52

52:                                               ; preds = %43, %30
  %53 = load i64, i64* %12, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = call i32* @svn_hash_gets(i64 %53, i8* %54)
  store i32* %55, i32** %13, align 8
  br label %57

56:                                               ; preds = %5
  store i32* null, i32** %13, align 8
  br label %57

57:                                               ; preds = %56, %52
  %58 = load i32**, i32*** %6, align 8
  %59 = load i32*, i32** %13, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32 @mergeinfo_relpaths_to_urls(i32** %58, i32* %59, i8* %60, i32* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %65
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_mergeinfo(i64*, i8**, i8*, i32*, i32, i32, %struct.TYPE_4__*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_path_is_url(i8*) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__node_get_repos_info(i32*, i8**, i32*, i32*, i32, i8*, i32*, i32*) #1

declare dso_local i8* @svn_uri_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @svn_hash_gets(i64, i8*) #1

declare dso_local i32 @mergeinfo_relpaths_to_urls(i32**, i32*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
