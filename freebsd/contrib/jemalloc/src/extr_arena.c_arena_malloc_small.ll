; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_arena.c_arena_malloc_small.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_arena.c_arena_malloc_small.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, i32* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@NBINS = common dso_local global i64 0, align 8
@bin_infos = common dso_local global i32* null, align 8
@config_stats = common dso_local global i64 0, align 8
@config_prof = common dso_local global i64 0, align 8
@config_fill = common dso_local global i64 0, align 8
@opt_junk_alloc = common dso_local global i32 0, align 4
@opt_zero = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32*, %struct.TYPE_11__*, i64, i32)* @arena_malloc_small to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @arena_malloc_small(i32* %0, %struct.TYPE_11__* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @NBINS, align 8
  %16 = icmp ult i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i64 %22
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %11, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @sz_index2size(i64 %24)
  store i64 %25, i64* %12, align 8
  %26 = load i32*, i32** %6, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = call i32 @malloc_mutex_lock(i32* %26, i32* %28)
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %13, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %4
  %35 = load i32*, i32** %13, align 8
  %36 = call i64 @extent_nfree_get(i32* %35)
  %37 = icmp sgt i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %34
  %39 = load i32*, i32** %13, align 8
  %40 = load i32*, i32** @bin_infos, align 8
  %41 = load i64, i64* %8, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = call i8* @arena_slab_reg_alloc(i32* %39, i32* %42)
  store i8* %43, i8** %10, align 8
  br label %50

44:                                               ; preds = %34, %4
  %45 = load i32*, i32** %6, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %48 = load i64, i64* %8, align 8
  %49 = call i8* @arena_bin_malloc_hard(i32* %45, %struct.TYPE_11__* %46, %struct.TYPE_10__* %47, i64 %48)
  store i8* %49, i8** %10, align 8
  br label %50

50:                                               ; preds = %44, %38
  %51 = load i8*, i8** %10, align 8
  %52 = icmp eq i8* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32*, i32** %6, align 8
  %55 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = call i32 @malloc_mutex_unlock(i32* %54, i32* %56)
  store i8* null, i8** %5, align 8
  br label %142

58:                                               ; preds = %50
  %59 = load i64, i64* @config_stats, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %58
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  br label %77

77:                                               ; preds = %61, %58
  %78 = load i32*, i32** %6, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = call i32 @malloc_mutex_unlock(i32* %78, i32* %80)
  %82 = load i64, i64* @config_prof, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %77
  %85 = load i32*, i32** %6, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %87 = load i64, i64* %12, align 8
  %88 = call i64 @arena_prof_accum(i32* %85, %struct.TYPE_11__* %86, i64 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %84
  %91 = load i32*, i32** %6, align 8
  %92 = call i32 @prof_idump(i32* %91)
  br label %93

93:                                               ; preds = %90, %84, %77
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %120, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* @config_fill, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %119

99:                                               ; preds = %96
  %100 = load i32, i32* @opt_junk_alloc, align 4
  %101 = call i64 @unlikely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %99
  %104 = load i8*, i8** %10, align 8
  %105 = load i32*, i32** @bin_infos, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  %108 = call i32 @arena_alloc_junk_small(i8* %104, i32* %107, i32 0)
  br label %118

109:                                              ; preds = %99
  %110 = load i32, i32* @opt_zero, align 4
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = load i8*, i8** %10, align 8
  %115 = load i64, i64* %12, align 8
  %116 = call i32 @memset(i8* %114, i32 0, i64 %115)
  br label %117

117:                                              ; preds = %113, %109
  br label %118

118:                                              ; preds = %117, %103
  br label %119

119:                                              ; preds = %118, %96
  br label %137

120:                                              ; preds = %93
  %121 = load i64, i64* @config_fill, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load i32, i32* @opt_junk_alloc, align 4
  %125 = call i64 @unlikely(i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %133

127:                                              ; preds = %123
  %128 = load i8*, i8** %10, align 8
  %129 = load i32*, i32** @bin_infos, align 8
  %130 = load i64, i64* %8, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = call i32 @arena_alloc_junk_small(i8* %128, i32* %131, i32 1)
  br label %133

133:                                              ; preds = %127, %123, %120
  %134 = load i8*, i8** %10, align 8
  %135 = load i64, i64* %12, align 8
  %136 = call i32 @memset(i8* %134, i32 0, i64 %135)
  br label %137

137:                                              ; preds = %133, %119
  %138 = load i32*, i32** %6, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %140 = call i32 @arena_decay_tick(i32* %138, %struct.TYPE_11__* %139)
  %141 = load i8*, i8** %10, align 8
  store i8* %141, i8** %5, align 8
  br label %142

142:                                              ; preds = %137, %53
  %143 = load i8*, i8** %5, align 8
  ret i8* %143
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @sz_index2size(i64) #1

declare dso_local i32 @malloc_mutex_lock(i32*, i32*) #1

declare dso_local i64 @extent_nfree_get(i32*) #1

declare dso_local i8* @arena_slab_reg_alloc(i32*, i32*) #1

declare dso_local i8* @arena_bin_malloc_hard(i32*, %struct.TYPE_11__*, %struct.TYPE_10__*, i64) #1

declare dso_local i32 @malloc_mutex_unlock(i32*, i32*) #1

declare dso_local i64 @arena_prof_accum(i32*, %struct.TYPE_11__*, i64) #1

declare dso_local i32 @prof_idump(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @arena_alloc_junk_small(i8*, i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @arena_decay_tick(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
