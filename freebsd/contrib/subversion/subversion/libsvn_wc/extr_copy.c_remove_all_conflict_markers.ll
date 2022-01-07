; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_copy.c_remove_all_conflict_markers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_copy.c_remove_all_conflict_markers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svn_wc__db_info_t = type { i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i32* (i8*)*, i8*, i32*)* @remove_all_conflict_markers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @remove_all_conflict_markers(i32* %0, i8* %1, i8* %2, i32* (i8*)* %3, i8* %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32* (i8*)*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.svn_wc__db_info_t*, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* (i8*)* %3, i32* (i8*)** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load i32*, i32** %12, align 8
  %20 = call i32* @svn_pool_create(i32* %19)
  store i32* %20, i32** %13, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = load i32, i32* @FALSE, align 4
  %24 = load i32*, i32** %12, align 8
  %25 = load i32*, i32** %13, align 8
  %26 = call i32* @svn_wc__db_read_children_info(i32** %14, i32** %15, i32* %21, i8* %22, i32 %23, i32* %24, i32* %25)
  %27 = call i32 @SVN_ERR(i32* %26)
  %28 = load i32*, i32** %12, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = call i32* @apr_hash_first(i32* %28, i32* %29)
  store i32* %30, i32** %16, align 8
  br label %31

31:                                               ; preds = %90, %6
  %32 = load i32*, i32** %16, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %93

34:                                               ; preds = %31
  %35 = load i32*, i32** %16, align 8
  %36 = call i8* @apr_hash_this_key(i32* %35)
  store i8* %36, i8** %17, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = call %struct.svn_wc__db_info_t* @apr_hash_this_val(i32* %37)
  store %struct.svn_wc__db_info_t* %38, %struct.svn_wc__db_info_t** %18, align 8
  %39 = load i32* (i8*)*, i32* (i8*)** %10, align 8
  %40 = icmp ne i32* (i8*)* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32* (i8*)*, i32* (i8*)** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = call i32* %42(i8* %43)
  %45 = call i32 @SVN_ERR(i32* %44)
  br label %46

46:                                               ; preds = %41, %34
  %47 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %18, align 8
  %48 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %66

51:                                               ; preds = %46
  %52 = load i32*, i32** %13, align 8
  %53 = call i32 @svn_pool_clear(i32* %52)
  %54 = load i32*, i32** %7, align 8
  %55 = load i8*, i8** %8, align 8
  %56 = load i8*, i8** %17, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = call i8* @svn_dirent_join(i8* %55, i8* %56, i32* %57)
  %59 = load i8*, i8** %9, align 8
  %60 = load i8*, i8** %17, align 8
  %61 = load i32*, i32** %13, align 8
  %62 = call i8* @svn_dirent_join(i8* %59, i8* %60, i32* %61)
  %63 = load i32*, i32** %13, align 8
  %64 = call i32* @remove_node_conflict_markers(i32* %54, i8* %58, i8* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32* %64)
  br label %66

66:                                               ; preds = %51, %46
  %67 = load %struct.svn_wc__db_info_t*, %struct.svn_wc__db_info_t** %18, align 8
  %68 = getelementptr inbounds %struct.svn_wc__db_info_t, %struct.svn_wc__db_info_t* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @svn_node_dir, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %89

72:                                               ; preds = %66
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @svn_pool_clear(i32* %73)
  %75 = load i32*, i32** %7, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %17, align 8
  %78 = load i32*, i32** %13, align 8
  %79 = call i8* @svn_dirent_join(i8* %76, i8* %77, i32* %78)
  %80 = load i8*, i8** %9, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = load i32*, i32** %13, align 8
  %83 = call i8* @svn_dirent_join(i8* %80, i8* %81, i32* %82)
  %84 = load i32* (i8*)*, i32* (i8*)** %10, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = load i32*, i32** %13, align 8
  %87 = call i32* @remove_all_conflict_markers(i32* %75, i8* %79, i8* %83, i32* (i8*)* %84, i8* %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32* %87)
  br label %89

89:                                               ; preds = %72, %66
  br label %90

90:                                               ; preds = %89
  %91 = load i32*, i32** %16, align 8
  %92 = call i32* @apr_hash_next(i32* %91)
  store i32* %92, i32** %16, align 8
  br label %31

93:                                               ; preds = %31
  %94 = load i32*, i32** %13, align 8
  %95 = call i32 @svn_pool_destroy(i32* %94)
  %96 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %96
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_wc__db_read_children_info(i32**, i32**, i32*, i8*, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local %struct.svn_wc__db_info_t* @apr_hash_this_val(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @remove_node_conflict_markers(i32*, i8*, i8*, i32*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
