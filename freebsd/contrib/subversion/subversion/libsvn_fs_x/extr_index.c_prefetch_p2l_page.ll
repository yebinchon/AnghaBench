; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_index.c_prefetch_p2l_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_x/extr_index.c_prefetch_p2l_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i64, i32, i64 }
%struct.TYPE_13__ = type { i32, i32, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@APR_UINT32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i32*, %struct.TYPE_15__*, i32*, %struct.TYPE_16__*, i32, i32*)* @prefetch_p2l_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @prefetch_p2l_page(i64* %0, i32* %1, %struct.TYPE_15__* %2, i32* %3, %struct.TYPE_16__* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_13__, align 8
  store i64* %0, i64** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %11, align 8
  store i32* %3, i32** %12, align 8
  store %struct.TYPE_16__* %4, %struct.TYPE_16__** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %21, align 8
  store %struct.TYPE_14__* %22, %struct.TYPE_14__** %16, align 8
  %23 = bitcast %struct.TYPE_13__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  %24 = load i64, i64* @FALSE, align 8
  %25 = load i64*, i64** %9, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 6
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = call i32 @get_p2l_page_info(%struct.TYPE_16__* %31, i32* %32, %struct.TYPE_15__* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %7
  %43 = load i64, i64* @TRUE, align 8
  %44 = load i64*, i64** %9, align 8
  store i64 %43, i64* %44, align 8
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %45, i32** %8, align 8
  br label %118

46:                                               ; preds = %7
  %47 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @APR_UINT32_MAX, align 8
  %51 = icmp sle i64 %49, %50
  %52 = zext i1 %51 to i32
  %53 = call i32 @assert(i32 %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 2
  store i64 %56, i64* %57, align 8
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @svn_fs_x__is_packed_rev(%struct.TYPE_15__* %58, i64 %61)
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 5
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %15, align 8
  %72 = call i32 @svn_cache__has_key(i64* %17, i32 %70, %struct.TYPE_13__* %19, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i64, i64* %17, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %46
  %77 = load i32*, i32** %10, align 8
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, -1
  store i32 %79, i32* %77, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load i64, i64* @TRUE, align 8
  %83 = load i64*, i64** %9, align 8
  store i64 %82, i64* %83, align 8
  br label %84

84:                                               ; preds = %81, %76
  %85 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %85, i32** %8, align 8
  br label %118

86:                                               ; preds = %46
  %87 = load i32*, i32** %10, align 8
  %88 = load i32, i32* %87, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %87, align 4
  %90 = load i32*, i32** %12, align 8
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %93 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %92, i32 0, i32 4
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %15, align 8
  %108 = call i32 @get_p2l_page(i32** %18, i32* %90, %struct.TYPE_15__* %91, i64 %94, i32 %97, i32 %100, i32 %103, i32 %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %18, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = call i32 @svn_cache__set(i32 %112, %struct.TYPE_13__* %19, i32* %113, i32* %114)
  %116 = call i32 @SVN_ERR(i32 %115)
  %117 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %117, i32** %8, align 8
  br label %118

118:                                              ; preds = %86, %84, %42
  %119 = load i32*, i32** %8, align 8
  ret i32* %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @get_p2l_page_info(%struct.TYPE_16__*, i32*, %struct.TYPE_15__*, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @svn_fs_x__is_packed_rev(%struct.TYPE_15__*, i64) #2

declare dso_local i32 @svn_cache__has_key(i64*, i32, %struct.TYPE_13__*, i32*) #2

declare dso_local i32 @get_p2l_page(i32**, i32*, %struct.TYPE_15__*, i64, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @svn_cache__set(i32, %struct.TYPE_13__*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
