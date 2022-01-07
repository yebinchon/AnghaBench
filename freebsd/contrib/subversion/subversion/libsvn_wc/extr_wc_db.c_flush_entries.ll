; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_flush_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_flush_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_depth_empty = common dso_local global i64 0, align 8
@svn_depth_files = common dso_local global i64 0, align 8
@svn_depth_immediates = common dso_local global i64 0, align 8
@svn_depth_infinity = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i64, i32*)* @flush_entries to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @flush_entries(%struct.TYPE_3__* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @apr_hash_count(i32 %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %19, i32** %5, align 8
  br label %90

20:                                               ; preds = %4
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @remove_from_access_cache(i32 %23, i8* %24)
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* @svn_depth_empty, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %29, label %80

29:                                               ; preds = %20
  %30 = load i32*, i32** %9, align 8
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32* @apr_hash_first(i32* %30, i32 %33)
  store i32* %34, i32** %11, align 8
  br label %35

35:                                               ; preds = %76, %29
  %36 = load i32*, i32** %11, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %79

38:                                               ; preds = %35
  %39 = load i32*, i32** %11, align 8
  %40 = call i8* @apr_hash_this_key(i32* %39)
  store i8* %40, i8** %12, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @svn_depth_files, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %48, label %44

44:                                               ; preds = %38
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @svn_depth_immediates, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %44, %38
  %49 = load i8*, i8** %7, align 8
  %50 = load i8*, i8** %12, align 8
  %51 = call i64 @is_immediate_child_path(i8* %49, i8* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i8*, i8** %12, align 8
  %58 = call i32 @remove_from_access_cache(i32 %56, i8* %57)
  br label %75

59:                                               ; preds = %48, %44
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @svn_depth_infinity, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load i8*, i8** %7, align 8
  %65 = load i8*, i8** %12, align 8
  %66 = call i64 @svn_dirent_is_ancestor(i8* %64, i8* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %63
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i8*, i8** %12, align 8
  %73 = call i32 @remove_from_access_cache(i32 %71, i8* %72)
  br label %74

74:                                               ; preds = %68, %63, %59
  br label %75

75:                                               ; preds = %74, %53
  br label %76

76:                                               ; preds = %75
  %77 = load i32*, i32** %11, align 8
  %78 = call i32* @apr_hash_next(i32* %77)
  store i32* %78, i32** %11, align 8
  br label %35

79:                                               ; preds = %35
  br label %80

80:                                               ; preds = %79, %20
  %81 = load i8*, i8** %7, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = call i8* @svn_dirent_dirname(i8* %81, i32* %82)
  store i8* %83, i8** %10, align 8
  %84 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i8*, i8** %10, align 8
  %88 = call i32 @remove_from_access_cache(i32 %86, i8* %87)
  %89 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %89, i32** %5, align 8
  br label %90

90:                                               ; preds = %80, %18
  %91 = load i32*, i32** %5, align 8
  ret i32* %91
}

declare dso_local i64 @apr_hash_count(i32) #1

declare dso_local i32 @remove_from_access_cache(i32, i8*) #1

declare dso_local i32* @apr_hash_first(i32*, i32) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i64 @is_immediate_child_path(i8*, i8*) #1

declare dso_local i64 @svn_dirent_is_ancestor(i8*, i8*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
