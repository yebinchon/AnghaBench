; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_prefetch_p2l_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_index.c_prefetch_p2l_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_20__ = type { i32, i32, i32, i32, i64, i32, i64 }
%struct.TYPE_19__ = type { i32, i32, i64, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@APR_UINT32_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i64*, i32*, %struct.TYPE_17__*, %struct.TYPE_18__*, %struct.TYPE_20__*, i32, i32*)* @prefetch_p2l_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @prefetch_p2l_page(i64* %0, i32* %1, %struct.TYPE_17__* %2, %struct.TYPE_18__* %3, %struct.TYPE_20__* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_18__*, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_21__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_19__, align 8
  store i64* %0, i64** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %11, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_20__* %4, %struct.TYPE_20__** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %16, align 8
  %23 = bitcast %struct.TYPE_19__* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 24, i1 false)
  %24 = load i64, i64* @FALSE, align 8
  %25 = load i64*, i64** %9, align 8
  store i64 %24, i64* %25, align 8
  %26 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %30 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %29, i32 0, i32 6
  store i64 %28, i64* %30, align 8
  %31 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %33 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = call i32 @get_p2l_page_info(%struct.TYPE_20__* %31, %struct.TYPE_18__* %32, %struct.TYPE_17__* %33, i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %14, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %47, label %42

42:                                               ; preds = %7
  %43 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %44 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %42, %7
  %48 = load i64, i64* @TRUE, align 8
  %49 = load i64*, i64** %9, align 8
  store i64 %48, i64* %49, align 8
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %50, i32** %8, align 8
  br label %123

51:                                               ; preds = %42
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @APR_UINT32_MAX, align 8
  %56 = icmp sle i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  %59 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 2
  store i64 %61, i64* %62, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %64 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %64, i32 0, i32 4
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @svn_fs_fs__is_packed_rev(%struct.TYPE_17__* %63, i64 %66)
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  %69 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 0
  store i32 %71, i32* %72, align 8
  %73 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32*, i32** %15, align 8
  %77 = call i32 @svn_cache__has_key(i64* %17, i32 %75, %struct.TYPE_19__* %19, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i64, i64* %17, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %51
  %82 = load i32*, i32** %10, align 8
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %82, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %81
  %87 = load i64, i64* @TRUE, align 8
  %88 = load i64*, i64** %9, align 8
  store i64 %87, i64* %88, align 8
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %90, i32** %8, align 8
  br label %123

91:                                               ; preds = %51
  %92 = load i32*, i32** %10, align 8
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %96 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %97 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %101 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32*, i32** %15, align 8
  %113 = call i32 @get_p2l_page(i32** %18, %struct.TYPE_18__* %95, %struct.TYPE_17__* %96, i64 %99, i32 %102, i32 %105, i32 %108, i32 %111, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %116 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %18, align 8
  %119 = load i32*, i32** %15, align 8
  %120 = call i32 @svn_cache__set(i32 %117, %struct.TYPE_19__* %19, i32* %118, i32* %119)
  %121 = call i32 @SVN_ERR(i32 %120)
  %122 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %122, i32** %8, align 8
  br label %123

123:                                              ; preds = %91, %89, %47
  %124 = load i32*, i32** %8, align 8
  ret i32* %124
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @get_p2l_page_info(%struct.TYPE_20__*, %struct.TYPE_18__*, %struct.TYPE_17__*, i32*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @svn_fs_fs__is_packed_rev(%struct.TYPE_17__*, i64) #2

declare dso_local i32 @svn_cache__has_key(i64*, i32, %struct.TYPE_19__*, i32*) #2

declare dso_local i32 @get_p2l_page(i32**, %struct.TYPE_18__*, %struct.TYPE_17__*, i64, i32, i32, i32, i32, i32*) #2

declare dso_local i32 @svn_cache__set(i32, %struct.TYPE_19__*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
