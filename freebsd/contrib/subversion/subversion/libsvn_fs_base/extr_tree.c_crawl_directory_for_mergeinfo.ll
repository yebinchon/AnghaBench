; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_crawl_directory_for_mergeinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_base/extr_tree.c_crawl_directory_for_mergeinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.get_mergeinfo_data_and_entries_baton = type { i8*, i8*, i32, i32*, i32* }

@txn_body_get_mergeinfo_data_and_entries = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i32, i8*, i32*)* @crawl_directory_for_mergeinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @crawl_directory_for_mergeinfo(i32* %0, i32* %1, i8* %2, i32 %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.get_mergeinfo_data_and_entries_baton, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  %20 = load i32*, i32** %13, align 8
  %21 = call i32* @apr_hash_make(i32* %20)
  store i32* %21, i32** %15, align 8
  %22 = load i32*, i32** %15, align 8
  %23 = getelementptr inbounds %struct.get_mergeinfo_data_and_entries_baton, %struct.get_mergeinfo_data_and_entries_baton* %14, i32 0, i32 4
  store i32* %22, i32** %23, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = getelementptr inbounds %struct.get_mergeinfo_data_and_entries_baton, %struct.get_mergeinfo_data_and_entries_baton* %14, i32 0, i32 3
  store i32* %24, i32** %25, align 8
  %26 = load i8*, i8** %10, align 8
  %27 = getelementptr inbounds %struct.get_mergeinfo_data_and_entries_baton, %struct.get_mergeinfo_data_and_entries_baton* %14, i32 0, i32 0
  store i8* %26, i8** %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = getelementptr inbounds %struct.get_mergeinfo_data_and_entries_baton, %struct.get_mergeinfo_data_and_entries_baton* %14, i32 0, i32 2
  store i32 %28, i32* %29, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = getelementptr inbounds %struct.get_mergeinfo_data_and_entries_baton, %struct.get_mergeinfo_data_and_entries_baton* %14, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* @txn_body_get_mergeinfo_data_and_entries, align 4
  %34 = load i32, i32* @FALSE, align 4
  %35 = load i32*, i32** %13, align 8
  %36 = call i32* @svn_fs_base__retry_txn(i32* %32, i32 %33, %struct.get_mergeinfo_data_and_entries_baton* %14, i32 %34, i32* %35)
  %37 = call i32 @SVN_ERR(i32* %36)
  %38 = load i32*, i32** %15, align 8
  %39 = call i64 @apr_hash_count(i32* %38)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %6
  %42 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %42, i32** %7, align 8
  br label %76

43:                                               ; preds = %6
  %44 = load i32*, i32** %13, align 8
  %45 = call i32* @svn_pool_create(i32* %44)
  store i32* %45, i32** %17, align 8
  %46 = load i32*, i32** %13, align 8
  %47 = load i32*, i32** %15, align 8
  %48 = call i32* @apr_hash_first(i32* %46, i32* %47)
  store i32* %48, i32** %16, align 8
  br label %49

49:                                               ; preds = %69, %43
  %50 = load i32*, i32** %16, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %72

52:                                               ; preds = %49
  %53 = load i32*, i32** %17, align 8
  %54 = call i32 @svn_pool_clear(i32* %53)
  %55 = load i32*, i32** %16, align 8
  %56 = call i32 @apr_hash_this(i32* %55, i8** %18, i32* null, i8** %19)
  %57 = load i32*, i32** %8, align 8
  %58 = load i8*, i8** %19, align 8
  %59 = bitcast i8* %58 to i32*
  %60 = load i8*, i8** %10, align 8
  %61 = load i8*, i8** %18, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = call i8* @svn_fspath__join(i8* %60, i8* %61, i32* %62)
  %64 = load i32, i32* %11, align 4
  %65 = load i8*, i8** %12, align 8
  %66 = load i32*, i32** %17, align 8
  %67 = call i32* @crawl_directory_for_mergeinfo(i32* %57, i32* %59, i8* %63, i32 %64, i8* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32* %67)
  br label %69

69:                                               ; preds = %52
  %70 = load i32*, i32** %16, align 8
  %71 = call i32* @apr_hash_next(i32* %70)
  store i32* %71, i32** %16, align 8
  br label %49

72:                                               ; preds = %49
  %73 = load i32*, i32** %17, align 8
  %74 = call i32 @svn_pool_destroy(i32* %73)
  %75 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %75, i32** %7, align 8
  br label %76

76:                                               ; preds = %72, %41
  %77 = load i32*, i32** %7, align 8
  ret i32* %77
}

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_fs_base__retry_txn(i32*, i32, %struct.get_mergeinfo_data_and_entries_baton*, i32, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @apr_hash_this(i32*, i8**, i32*, i8**) #1

declare dso_local i8* @svn_fspath__join(i8*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
