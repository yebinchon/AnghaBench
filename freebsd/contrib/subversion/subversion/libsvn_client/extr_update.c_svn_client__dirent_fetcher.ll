; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_update.c_svn_client__dirent_fetcher.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_update.c_svn_client__dirent_fetcher.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_client__dirent_fetcher_baton_t = type { i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_DIRENT_KIND = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_client__dirent_fetcher(i8* %0, i32** %1, i8* %2, i8* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.svn_client__dirent_fetcher_baton_t*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i8* %0, i8** %7, align 8
  store i32** %1, i32*** %8, align 8
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.svn_client__dirent_fetcher_baton_t*
  store %struct.svn_client__dirent_fetcher_baton_t* %19, %struct.svn_client__dirent_fetcher_baton_t** %13, align 8
  store i8* null, i8** %14, align 8
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i8* @svn_path_url_add_component2(i8* %20, i8* %21, i32* %22)
  store i8* %23, i8** %17, align 8
  %24 = load %struct.svn_client__dirent_fetcher_baton_t*, %struct.svn_client__dirent_fetcher_baton_t** %13, align 8
  %25 = getelementptr inbounds %struct.svn_client__dirent_fetcher_baton_t, %struct.svn_client__dirent_fetcher_baton_t* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %17, align 8
  %28 = call i32 @svn_uri__is_ancestor(i32 %26, i8* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %6
  %31 = load %struct.svn_client__dirent_fetcher_baton_t*, %struct.svn_client__dirent_fetcher_baton_t** %13, align 8
  %32 = getelementptr inbounds %struct.svn_client__dirent_fetcher_baton_t, %struct.svn_client__dirent_fetcher_baton_t* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %17, align 8
  %35 = load i32*, i32** %12, align 8
  %36 = call i32 @svn_client__ensure_ra_session_url(i8** %14, i32 %33, i8* %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32 %36)
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %46

38:                                               ; preds = %6
  %39 = load %struct.svn_client__dirent_fetcher_baton_t*, %struct.svn_client__dirent_fetcher_baton_t** %13, align 8
  %40 = getelementptr inbounds %struct.svn_client__dirent_fetcher_baton_t, %struct.svn_client__dirent_fetcher_baton_t* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i8*, i8** %17, align 8
  %43 = load i32*, i32** %12, align 8
  %44 = call i32 @svn_ra_get_path_relative_to_session(i32 %41, i8** %15, i8* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  br label %46

46:                                               ; preds = %38, %30
  %47 = load %struct.svn_client__dirent_fetcher_baton_t*, %struct.svn_client__dirent_fetcher_baton_t** %13, align 8
  %48 = getelementptr inbounds %struct.svn_client__dirent_fetcher_baton_t, %struct.svn_client__dirent_fetcher_baton_t* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %15, align 8
  %51 = load %struct.svn_client__dirent_fetcher_baton_t*, %struct.svn_client__dirent_fetcher_baton_t** %13, align 8
  %52 = getelementptr inbounds %struct.svn_client__dirent_fetcher_baton_t, %struct.svn_client__dirent_fetcher_baton_t* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @svn_ra_check_path(i32 %49, i8* %50, i32 %53, i64* %16, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  %57 = load i64, i64* %16, align 8
  %58 = load i64, i64* @svn_node_dir, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %46
  %61 = load %struct.svn_client__dirent_fetcher_baton_t*, %struct.svn_client__dirent_fetcher_baton_t** %13, align 8
  %62 = getelementptr inbounds %struct.svn_client__dirent_fetcher_baton_t, %struct.svn_client__dirent_fetcher_baton_t* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32**, i32*** %8, align 8
  %65 = load i8*, i8** %15, align 8
  %66 = load %struct.svn_client__dirent_fetcher_baton_t*, %struct.svn_client__dirent_fetcher_baton_t** %13, align 8
  %67 = getelementptr inbounds %struct.svn_client__dirent_fetcher_baton_t, %struct.svn_client__dirent_fetcher_baton_t* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @SVN_DIRENT_KIND, align 4
  %70 = load i32*, i32** %11, align 8
  %71 = call i32 @svn_ra_get_dir2(i32 %63, i32** %64, i32* null, i32* null, i8* %65, i32 %68, i32 %69, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  br label %75

73:                                               ; preds = %46
  %74 = load i32**, i32*** %8, align 8
  store i32* null, i32** %74, align 8
  br label %75

75:                                               ; preds = %73, %60
  %76 = load i8*, i8** %14, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = load %struct.svn_client__dirent_fetcher_baton_t*, %struct.svn_client__dirent_fetcher_baton_t** %13, align 8
  %80 = getelementptr inbounds %struct.svn_client__dirent_fetcher_baton_t, %struct.svn_client__dirent_fetcher_baton_t* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i8*, i8** %14, align 8
  %83 = load i32*, i32** %12, align 8
  %84 = call i32 @svn_ra_reparent(i32 %81, i8* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  br label %86

86:                                               ; preds = %78, %75
  %87 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %87
}

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32 @svn_uri__is_ancestor(i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client__ensure_ra_session_url(i8**, i32, i8*, i32*) #1

declare dso_local i32 @svn_ra_get_path_relative_to_session(i32, i8**, i8*, i32*) #1

declare dso_local i32 @svn_ra_check_path(i32, i8*, i32, i64*, i32*) #1

declare dso_local i32 @svn_ra_get_dir2(i32, i32**, i32*, i32*, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_ra_reparent(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
