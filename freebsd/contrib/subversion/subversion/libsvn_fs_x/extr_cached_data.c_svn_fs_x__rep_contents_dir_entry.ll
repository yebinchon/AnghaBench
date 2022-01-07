; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__rep_contents_dir_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_cached_data.c_svn_fs_x__rep_contents_dir_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i8*, i64, i32, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@svn_fs_x__extract_dir_entry = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_fs_x__rep_contents_dir_entry(%struct.TYPE_13__** %0, i32* %1, i32* %2, i8* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca %struct.TYPE_13__**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_12__, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_13__*, align 8
  %21 = alloca %struct.TYPE_13__*, align 8
  %22 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_13__** %0, %struct.TYPE_13__*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %23 = load i64, i64* @FALSE, align 8
  store i64 %23, i64* %15, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = call i32* @locate_dir_cache(i32* %24, i32* %16, i32* %25)
  store i32* %26, i32** %17, align 8
  %27 = load i32*, i32** %9, align 8
  %28 = load i32*, i32** %10, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @get_txn_dir_info(i32* %19, i32* %27, i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  store i32 %33, i32* %34, align 8
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  store i8* %35, i8** %36, align 8
  %37 = load i32, i32* %19, align 4
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 3
  store i32 %37, i32* %38, align 4
  %39 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  %40 = bitcast %struct.TYPE_13__** %39 to i8**
  %41 = load i32*, i32** %17, align 8
  %42 = load i32, i32* @svn_fs_x__extract_dir_entry, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = call i32 @svn_cache__get_partial(i8** %40, i64* %15, i32* %41, i32* %16, i32 %42, %struct.TYPE_12__* %18, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i64, i64* %15, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %7
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32*, i32** %12, align 8
  store i32 %50, i32* %51, align 4
  br label %52

52:                                               ; preds = %48, %7
  %53 = load i64, i64* %15, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %103

59:                                               ; preds = %55, %52
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %21, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = load i32*, i32** %14, align 8
  %64 = call i32 @get_dir_contents(%struct.TYPE_14__* %22, i32* %60, i32* %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i32*, i32** %17, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %82

68:                                               ; preds = %59
  %69 = load i32*, i32** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 150, %73
  %75 = call i64 @svn_cache__is_cachable(i32* %69, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load i32*, i32** %17, align 8
  %79 = load i32*, i32** %14, align 8
  %80 = call i32 @svn_cache__set(i32* %78, i32* %16, %struct.TYPE_14__* %22, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  br label %82

82:                                               ; preds = %77, %68, %59
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 0
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %83, align 8
  %85 = load i8*, i8** %11, align 8
  %86 = call %struct.TYPE_13__* @svn_fs_x__find_dir_entry(%struct.TYPE_15__* %84, i8* %85, i32* null)
  store %struct.TYPE_13__* %86, %struct.TYPE_13__** %20, align 8
  %87 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %88 = icmp ne %struct.TYPE_13__* %87, null
  br i1 %88, label %89, label %100

89:                                               ; preds = %82
  %90 = load i32*, i32** %13, align 8
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %92 = call %struct.TYPE_13__* @apr_pmemdup(i32* %90, %struct.TYPE_13__* %91, i32 4)
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %21, align 8
  %93 = load i32*, i32** %13, align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @apr_pstrdup(i32* %93, i32 %96)
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  br label %100

100:                                              ; preds = %89, %82
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %102 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %8, align 8
  store %struct.TYPE_13__* %101, %struct.TYPE_13__** %102, align 8
  br label %103

103:                                              ; preds = %100, %55
  %104 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %104
}

declare dso_local i32* @locate_dir_cache(i32*, i32*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @get_txn_dir_info(i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_cache__get_partial(i8**, i64*, i32*, i32*, i32, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @get_dir_contents(%struct.TYPE_14__*, i32*, i32*, i32*, i32*) #1

declare dso_local i64 @svn_cache__is_cachable(i32*, i32) #1

declare dso_local i32 @svn_cache__set(i32*, i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_fs_x__find_dir_entry(%struct.TYPE_15__*, i8*, i32*) #1

declare dso_local %struct.TYPE_13__* @apr_pmemdup(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i32 @apr_pstrdup(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
