; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_large.c_large_ralloc_no_move_expand.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_large.c_large_ralloc_no_move_expand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32* }

@config_fill = common dso_local global i64 0, align 8
@opt_zero = common dso_local global i32 0, align 4
@CACHELINE = common dso_local global i32 0, align 4
@NSIZES = common dso_local global i32 0, align 4
@config_stats = common dso_local global i64 0, align 8
@extents_rtree = common dso_local global i32 0, align 4
@config_cache_oblivious = common dso_local global i64 0, align 8
@PAGE = common dso_local global i64 0, align 8
@opt_junk_alloc = common dso_local global i32 0, align 4
@JEMALLOC_ALLOC_JUNK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i32)* @large_ralloc_no_move_expand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @large_ralloc_no_move_expand(i32* %0, i32* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = call %struct.TYPE_16__* @extent_arena_get(i32* %24)
  store %struct.TYPE_16__* %25, %struct.TYPE_16__** %10, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = call i64 @extent_usize_get(i32* %26)
  store i64 %27, i64* %11, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %29 = call %struct.TYPE_15__* @extent_hooks_get(%struct.TYPE_16__* %28)
  store %struct.TYPE_15__* %29, %struct.TYPE_15__** %12, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %11, align 8
  %32 = sub i64 %30, %31
  store i64 %32, i64* %13, align 8
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %187

38:                                               ; preds = %4
  %39 = load i64, i64* @config_fill, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i32, i32* @opt_zero, align 4
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  store i32 1, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %41, %38
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %14, align 4
  store i32 1, i32* %15, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 2
  %52 = load i32*, i32** %7, align 8
  %53 = call i32 @extent_past_get(i32* %52)
  %54 = load i64, i64* %13, align 8
  %55 = load i32, i32* @CACHELINE, align 4
  %56 = load i32, i32* @NSIZES, align 4
  %57 = call i32* @extents_alloc(i32* %48, %struct.TYPE_16__* %49, %struct.TYPE_15__** %12, i32* %51, i32 %53, i64 %54, i32 0, i32 %55, i32 0, i32 %56, i32* %14, i32* %15)
  store i32* %57, i32** %16, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %71, label %59

59:                                               ; preds = %46
  %60 = load i32*, i32** %6, align 8
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load i32*, i32** %7, align 8
  %65 = call i32 @extent_past_get(i32* %64)
  %66 = load i64, i64* %13, align 8
  %67 = load i32, i32* @CACHELINE, align 4
  %68 = load i32, i32* @NSIZES, align 4
  %69 = call i32* @extents_alloc(i32* %60, %struct.TYPE_16__* %61, %struct.TYPE_15__** %12, i32* %63, i32 %65, i64 %66, i32 0, i32 %67, i32 0, i32 %68, i32* %14, i32* %15)
  store i32* %69, i32** %16, align 8
  %70 = icmp ne i32* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %59, %46
  %72 = load i64, i64* @config_stats, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 0, i32* %17, align 4
  br label %75

75:                                               ; preds = %74, %71
  br label %92

76:                                               ; preds = %59
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @extent_past_get(i32* %79)
  %81 = load i64, i64* %13, align 8
  %82 = load i32, i32* @CACHELINE, align 4
  %83 = load i32, i32* @NSIZES, align 4
  %84 = call i32* @extent_alloc_wrapper(i32* %77, %struct.TYPE_16__* %78, %struct.TYPE_15__** %12, i32 %80, i64 %81, i32 0, i32 %82, i32 0, i32 %83, i32* %14, i32* %15)
  store i32* %84, i32** %16, align 8
  %85 = icmp eq i32* %84, null
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  store i32 1, i32* %5, align 4
  br label %187

87:                                               ; preds = %76
  %88 = load i64, i64* @config_stats, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  store i32 1, i32* %17, align 4
  br label %91

91:                                               ; preds = %90, %87
  br label %92

92:                                               ; preds = %91, %75
  %93 = load i32*, i32** %6, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %95 = load i32*, i32** %7, align 8
  %96 = load i32*, i32** %16, align 8
  %97 = call i64 @extent_merge_wrapper(i32* %93, %struct.TYPE_16__* %94, %struct.TYPE_15__** %12, i32* %95, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i32*, i32** %6, align 8
  %101 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %102 = load i32*, i32** %16, align 8
  %103 = call i32 @extent_dalloc_wrapper(i32* %100, %struct.TYPE_16__* %101, %struct.TYPE_15__** %12, i32* %102)
  store i32 1, i32* %5, align 4
  br label %187

104:                                              ; preds = %92
  %105 = load i32*, i32** %6, align 8
  %106 = call i32* @tsdn_rtree_ctx(i32* %105, i32* %18)
  store i32* %106, i32** %19, align 8
  %107 = load i64, i64* %8, align 8
  %108 = call i32 @sz_size2index(i64 %107)
  store i32 %108, i32* %20, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %20, align 4
  %111 = call i32 @extent_szind_set(i32* %109, i32 %110)
  %112 = load i32*, i32** %6, align 8
  %113 = load i32*, i32** %19, align 8
  %114 = load i32*, i32** %7, align 8
  %115 = call i64 @extent_addr_get(i32* %114)
  %116 = load i32, i32* %20, align 4
  %117 = call i32 @rtree_szind_slab_update(i32* %112, i32* @extents_rtree, i32* %113, i64 %115, i32 %116, i32 0)
  %118 = load i64, i64* @config_stats, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %129

120:                                              ; preds = %104
  %121 = load i32, i32* %17, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %120
  %124 = load i32*, i32** %6, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 0
  %127 = load i64, i64* %13, align 8
  %128 = call i32 @arena_stats_mapped_add(i32* %124, i32* %126, i64 %127)
  br label %129

129:                                              ; preds = %123, %120, %104
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %162

132:                                              ; preds = %129
  %133 = load i64, i64* @config_cache_oblivious, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %159

135:                                              ; preds = %132
  %136 = load i32*, i32** %7, align 8
  %137 = call i64 @extent_addr_get(i32* %136)
  %138 = load i64, i64* %11, align 8
  %139 = add i64 %137, %138
  %140 = inttoptr i64 %139 to i8*
  store i8* %140, i8** %21, align 8
  %141 = load i8*, i8** %21, align 8
  %142 = ptrtoint i8* %141 to i64
  %143 = load i64, i64* @PAGE, align 8
  %144 = add i64 %142, %143
  %145 = inttoptr i64 %144 to i8*
  %146 = call i8* @PAGE_ADDR2BASE(i8* %145)
  store i8* %146, i8** %22, align 8
  %147 = load i8*, i8** %22, align 8
  %148 = ptrtoint i8* %147 to i64
  %149 = load i8*, i8** %21, align 8
  %150 = ptrtoint i8* %149 to i64
  %151 = sub i64 %148, %150
  store i64 %151, i64* %23, align 8
  %152 = load i64, i64* %23, align 8
  %153 = icmp ugt i64 %152, 0
  %154 = zext i1 %153 to i32
  %155 = call i32 @assert(i32 %154)
  %156 = load i8*, i8** %21, align 8
  %157 = load i64, i64* %23, align 8
  %158 = call i32 @memset(i8* %156, i32 0, i64 %157)
  br label %159

159:                                              ; preds = %135, %132
  %160 = load i32, i32* %14, align 4
  %161 = call i32 @assert(i32 %160)
  br label %181

162:                                              ; preds = %129
  %163 = load i64, i64* @config_fill, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %180

165:                                              ; preds = %162
  %166 = load i32, i32* @opt_junk_alloc, align 4
  %167 = call i64 @unlikely(i32 %166)
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %180

169:                                              ; preds = %165
  %170 = load i32*, i32** %7, align 8
  %171 = call i64 @extent_addr_get(i32* %170)
  %172 = load i64, i64* %11, align 8
  %173 = add i64 %171, %172
  %174 = inttoptr i64 %173 to i8*
  %175 = load i32, i32* @JEMALLOC_ALLOC_JUNK, align 4
  %176 = load i64, i64* %8, align 8
  %177 = load i64, i64* %11, align 8
  %178 = sub i64 %176, %177
  %179 = call i32 @memset(i8* %174, i32 %175, i64 %178)
  br label %180

180:                                              ; preds = %169, %165, %162
  br label %181

181:                                              ; preds = %180, %159
  %182 = load i32*, i32** %6, align 8
  %183 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %184 = load i32*, i32** %7, align 8
  %185 = load i64, i64* %11, align 8
  %186 = call i32 @arena_extent_ralloc_large_expand(i32* %182, %struct.TYPE_16__* %183, i32* %184, i64 %185)
  store i32 0, i32* %5, align 4
  br label %187

187:                                              ; preds = %181, %99, %86, %37
  %188 = load i32, i32* %5, align 4
  ret i32 %188
}

declare dso_local %struct.TYPE_16__* @extent_arena_get(i32*) #1

declare dso_local i64 @extent_usize_get(i32*) #1

declare dso_local %struct.TYPE_15__* @extent_hooks_get(%struct.TYPE_16__*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @extents_alloc(i32*, %struct.TYPE_16__*, %struct.TYPE_15__**, i32*, i32, i64, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @extent_past_get(i32*) #1

declare dso_local i32* @extent_alloc_wrapper(i32*, %struct.TYPE_16__*, %struct.TYPE_15__**, i32, i64, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @extent_merge_wrapper(i32*, %struct.TYPE_16__*, %struct.TYPE_15__**, i32*, i32*) #1

declare dso_local i32 @extent_dalloc_wrapper(i32*, %struct.TYPE_16__*, %struct.TYPE_15__**, i32*) #1

declare dso_local i32* @tsdn_rtree_ctx(i32*, i32*) #1

declare dso_local i32 @sz_size2index(i64) #1

declare dso_local i32 @extent_szind_set(i32*, i32) #1

declare dso_local i32 @rtree_szind_slab_update(i32*, i32*, i32*, i64, i32, i32) #1

declare dso_local i64 @extent_addr_get(i32*) #1

declare dso_local i32 @arena_stats_mapped_add(i32*, i32*, i64) #1

declare dso_local i8* @PAGE_ADDR2BASE(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @memset(i8*, i32, i64) #1

declare dso_local i32 @arena_extent_ralloc_large_expand(i32*, %struct.TYPE_16__*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
