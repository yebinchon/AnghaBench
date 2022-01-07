; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_arena.c_arena_extent_alloc_large.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_arena.c_arena_extent_alloc_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@EXTENT_HOOKS_INITIALIZER = common dso_local global i32* null, align 8
@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@sz_large_pad = common dso_local global i64 0, align 8
@config_stats = common dso_local global i64 0, align 8
@LG_PAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @arena_extent_alloc_large(i32* %0, %struct.TYPE_10__* %1, i64 %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load i32*, i32** @EXTENT_HOOKS_INITIALIZER, align 8
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @tsdn_witness_tsdp_get(i32* %18)
  %20 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %21 = call i32 @witness_assert_depth_to_rank(i32 %19, i32 %20, i32 0)
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @sz_size2index(i64 %22)
  store i32 %23, i32* %12, align 4
  store i32 1, i32* %14, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 2
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @sz_large_pad, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i32, i32* %12, align 4
  %32 = load i32*, i32** %10, align 8
  %33 = call i32* @extents_alloc(i32* %24, %struct.TYPE_10__* %25, i32** %11, i32* %27, i32* null, i64 %28, i64 %29, i64 %30, i32 0, i32 %31, i32* %32, i32* %14)
  store i32* %33, i32** %15, align 8
  %34 = load i32*, i32** %15, align 8
  %35 = icmp eq i32* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %5
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 1
  %41 = load i64, i64* %8, align 8
  %42 = load i64, i64* @sz_large_pad, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %10, align 8
  %46 = call i32* @extents_alloc(i32* %37, %struct.TYPE_10__* %38, i32** %11, i32* %40, i32* null, i64 %41, i64 %42, i64 %43, i32 0, i32 %44, i32* %45, i32* %14)
  store i32* %46, i32** %15, align 8
  br label %47

47:                                               ; preds = %36, %5
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @sz_large_pad, align 8
  %50 = add i64 %48, %49
  store i64 %50, i64* %16, align 8
  %51 = load i32*, i32** %15, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %67

53:                                               ; preds = %47
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* @sz_large_pad, align 8
  %58 = load i64, i64* %9, align 8
  %59 = load i32, i32* %12, align 4
  %60 = load i32*, i32** %10, align 8
  %61 = call i32* @extent_alloc_wrapper(i32* %54, %struct.TYPE_10__* %55, i32** %11, i32* null, i64 %56, i64 %57, i64 %58, i32 0, i32 %59, i32* %60, i32* %14)
  store i32* %61, i32** %15, align 8
  %62 = load i64, i64* @config_stats, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i64, i64* %16, align 8
  store i64 %65, i64* %13, align 8
  br label %66

66:                                               ; preds = %64, %53
  br label %72

67:                                               ; preds = %47
  %68 = load i64, i64* @config_stats, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i64 0, i64* %13, align 8
  br label %71

71:                                               ; preds = %70, %67
  br label %72

72:                                               ; preds = %71, %66
  %73 = load i32*, i32** %15, align 8
  %74 = icmp ne i32* %73, null
  br i1 %74, label %75, label %109

75:                                               ; preds = %72
  %76 = load i64, i64* @config_stats, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %103

78:                                               ; preds = %75
  %79 = load i32*, i32** %6, align 8
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = call i32 @arena_stats_lock(i32* %79, %struct.TYPE_11__* %81)
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call i32 @arena_large_malloc_stats_update(i32* %83, %struct.TYPE_10__* %84, i64 %85)
  %87 = load i64, i64* %13, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %78
  %90 = load i32*, i32** %6, align 8
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i64, i64* %13, align 8
  %97 = call i32 @arena_stats_add_zu(i32* %90, %struct.TYPE_11__* %92, i32* %95, i64 %96)
  br label %98

98:                                               ; preds = %89, %78
  %99 = load i32*, i32** %6, align 8
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = call i32 @arena_stats_unlock(i32* %99, %struct.TYPE_11__* %101)
  br label %103

103:                                              ; preds = %98, %75
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %105 = load i64, i64* %16, align 8
  %106 = load i64, i64* @LG_PAGE, align 8
  %107 = lshr i64 %105, %106
  %108 = call i32 @arena_nactive_add(%struct.TYPE_10__* %104, i64 %107)
  br label %109

109:                                              ; preds = %103, %72
  %110 = load i32*, i32** %15, align 8
  ret i32* %110
}

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @sz_size2index(i64) #1

declare dso_local i32* @extents_alloc(i32*, %struct.TYPE_10__*, i32**, i32*, i32*, i64, i64, i64, i32, i32, i32*, i32*) #1

declare dso_local i32* @extent_alloc_wrapper(i32*, %struct.TYPE_10__*, i32**, i32*, i64, i64, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @arena_stats_lock(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @arena_large_malloc_stats_update(i32*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @arena_stats_add_zu(i32*, %struct.TYPE_11__*, i32*, i64) #1

declare dso_local i32 @arena_stats_unlock(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @arena_nactive_add(%struct.TYPE_10__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
