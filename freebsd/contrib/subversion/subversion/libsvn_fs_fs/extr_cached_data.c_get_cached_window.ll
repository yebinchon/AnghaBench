; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_get_cached_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_cached_data.c_get_cached_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32* }
%struct.TYPE_11__ = type { i32, i32 }

@FALSE = common dso_local global i64 0, align 8
@parse_raw_window = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, %struct.TYPE_13__*, i32, i64*, i32*, i32*)* @get_cached_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_cached_window(i32** %0, %struct.TYPE_13__* %1, i32 %2, i64* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_12__*, align 8
  %14 = alloca %struct.TYPE_11__, align 4
  store i32** %0, i32*** %7, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %6
  %20 = load i64, i64* @FALSE, align 8
  %21 = load i64*, i64** %10, align 8
  store i64 %20, i64* %21, align 8
  br label %84

22:                                               ; preds = %6
  %23 = bitcast %struct.TYPE_11__* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 8, i1 false)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %25 = call i32 @get_window_key(%struct.TYPE_11__* %14, %struct.TYPE_13__* %24)
  %26 = load i32, i32* %9, align 4
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i32 %26, i32* %27, align 4
  %28 = bitcast %struct.TYPE_12__** %13 to i8**
  %29 = load i64*, i64** %10, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @svn_cache__get(i8** %28, i64* %29, i32 %32, %struct.TYPE_11__* %14, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i64*, i64** %10, align 8
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %22
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %39
  %45 = bitcast %struct.TYPE_12__** %13 to i8**
  %46 = load i64*, i64** %10, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @parse_raw_window, align 4
  %51 = load i32*, i32** %11, align 8
  %52 = call i32 @svn_cache__get_partial(i8** %45, i64* %46, i32 %49, %struct.TYPE_11__* %14, i32 %50, i32* null, i32* %51)
  %53 = call i32 @SVN_ERR(i32 %52)
  %54 = load i64*, i64** %10, align 8
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %44
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @svn_cache__set(i32 %60, %struct.TYPE_11__* %14, %struct.TYPE_12__* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  br label %65

65:                                               ; preds = %57, %44
  br label %66

66:                                               ; preds = %65, %39, %22
  %67 = load i64*, i64** %10, align 8
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32**, i32*** %7, align 8
  store i32* %73, i32** %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  br label %83

83:                                               ; preds = %70, %66
  br label %84

84:                                               ; preds = %83, %19
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %85
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @get_window_key(%struct.TYPE_11__*, %struct.TYPE_13__*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_cache__get(i8**, i64*, i32, %struct.TYPE_11__*, i32*) #2

declare dso_local i32 @svn_cache__get_partial(i8**, i64*, i32, %struct.TYPE_11__*, i32, i32*, i32*) #2

declare dso_local i32 @svn_cache__set(i32, %struct.TYPE_11__*, %struct.TYPE_12__*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
