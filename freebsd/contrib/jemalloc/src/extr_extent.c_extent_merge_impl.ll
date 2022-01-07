; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent.c_extent_merge_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent.c_extent_merge_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32, i64, i32, i64, i32, i32)* }

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@extent_hooks_default = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@extents_rtree = common dso_local global i32 0, align 4
@NSIZES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__**, i32*, i32*, i32)* @extent_merge_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extent_merge_impl(i32* %0, i32* %1, %struct.TYPE_6__** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @tsdn_witness_tsdp_get(i32* %21)
  %23 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %24 = load i32, i32* %13, align 4
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  %28 = call i32 @witness_assert_depth_to_rank(i32 %22, i32 %23, i32 %27)
  %29 = load i32*, i32** %9, align 8
  %30 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %31 = call i32 @extent_hooks_assure_initialized(i32* %29, %struct.TYPE_6__** %30)
  %32 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_6__*, i32, i64, i32, i64, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i64, i32, i64, i32, i32)** %34, align 8
  %36 = icmp eq i32 (%struct.TYPE_6__*, i32, i64, i32, i64, i32, i32)* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %6
  store i32 1, i32* %7, align 4
  br label %162

38:                                               ; preds = %6
  %39 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = icmp eq %struct.TYPE_6__* %40, @extent_hooks_default
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 @extent_base_get(i32* %43)
  %45 = load i32*, i32** %12, align 8
  %46 = call i32 @extent_base_get(i32* %45)
  %47 = call i32 @extent_merge_default_impl(i32 %44, i32 %46)
  store i32 %47, i32* %14, align 4
  br label %73

48:                                               ; preds = %38
  %49 = load i32*, i32** %8, align 8
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @extent_hook_pre_reentrancy(i32* %49, i32* %50)
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_6__*, i32, i64, i32, i64, i32, i32)*, i32 (%struct.TYPE_6__*, i32, i64, i32, i64, i32, i32)** %54, align 8
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @extent_base_get(i32* %58)
  %60 = load i32*, i32** %11, align 8
  %61 = call i64 @extent_size_get(i32* %60)
  %62 = load i32*, i32** %12, align 8
  %63 = call i32 @extent_base_get(i32* %62)
  %64 = load i32*, i32** %12, align 8
  %65 = call i64 @extent_size_get(i32* %64)
  %66 = load i32*, i32** %11, align 8
  %67 = call i32 @extent_committed_get(i32* %66)
  %68 = load i32*, i32** %9, align 8
  %69 = call i32 @arena_ind_get(i32* %68)
  %70 = call i32 %55(%struct.TYPE_6__* %57, i32 %59, i64 %61, i32 %63, i64 %65, i32 %67, i32 %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32*, i32** %8, align 8
  %72 = call i32 @extent_hook_post_reentrancy(i32* %71)
  br label %73

73:                                               ; preds = %48, %42
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 1, i32* %7, align 4
  br label %162

77:                                               ; preds = %73
  %78 = load i32*, i32** %8, align 8
  %79 = call i32* @tsdn_rtree_ctx(i32* %78, i32* %15)
  store i32* %79, i32** %16, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %16, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = call i32 @extent_rtree_leaf_elms_lookup(i32* %80, i32* %81, i32* %82, i32 1, i32 0, i32** %17, i32** %18)
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %16, align 8
  %86 = load i32*, i32** %12, align 8
  %87 = call i32 @extent_rtree_leaf_elms_lookup(i32* %84, i32* %85, i32* %86, i32 1, i32 0, i32** %19, i32** %20)
  %88 = load i32*, i32** %8, align 8
  %89 = load i32*, i32** %11, align 8
  %90 = load i32*, i32** %12, align 8
  %91 = call i32 @extent_lock2(i32* %88, i32* %89, i32* %90)
  %92 = load i32*, i32** %18, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %77
  %95 = load i32*, i32** %8, align 8
  %96 = load i32*, i32** %18, align 8
  %97 = load i32, i32* @NSIZES, align 4
  %98 = call i32 @rtree_leaf_elm_write(i32* %95, i32* @extents_rtree, i32* %96, i32* null, i32 %97, i32 0)
  br label %99

99:                                               ; preds = %94, %77
  %100 = load i32*, i32** %20, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32*, i32** %8, align 8
  %104 = load i32*, i32** %19, align 8
  %105 = load i32, i32* @NSIZES, align 4
  %106 = call i32 @rtree_leaf_elm_write(i32* %103, i32* @extents_rtree, i32* %104, i32* null, i32 %105, i32 0)
  br label %109

107:                                              ; preds = %99
  %108 = load i32*, i32** %19, align 8
  store i32* %108, i32** %20, align 8
  br label %109

109:                                              ; preds = %107, %102
  %110 = load i32*, i32** %11, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = call i64 @extent_size_get(i32* %111)
  %113 = load i32*, i32** %12, align 8
  %114 = call i64 @extent_size_get(i32* %113)
  %115 = add nsw i64 %112, %114
  %116 = call i32 @extent_size_set(i32* %110, i64 %115)
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* @NSIZES, align 4
  %119 = call i32 @extent_szind_set(i32* %117, i32 %118)
  %120 = load i32*, i32** %11, align 8
  %121 = load i32*, i32** %11, align 8
  %122 = call i64 @extent_sn_get(i32* %121)
  %123 = load i32*, i32** %12, align 8
  %124 = call i64 @extent_sn_get(i32* %123)
  %125 = icmp slt i64 %122, %124
  br i1 %125, label %126, label %129

126:                                              ; preds = %109
  %127 = load i32*, i32** %11, align 8
  %128 = call i64 @extent_sn_get(i32* %127)
  br label %132

129:                                              ; preds = %109
  %130 = load i32*, i32** %12, align 8
  %131 = call i64 @extent_sn_get(i32* %130)
  br label %132

132:                                              ; preds = %129, %126
  %133 = phi i64 [ %128, %126 ], [ %131, %129 ]
  %134 = call i32 @extent_sn_set(i32* %120, i64 %133)
  %135 = load i32*, i32** %11, align 8
  %136 = load i32*, i32** %11, align 8
  %137 = call i64 @extent_zeroed_get(i32* %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %132
  %140 = load i32*, i32** %12, align 8
  %141 = call i64 @extent_zeroed_get(i32* %140)
  %142 = icmp ne i64 %141, 0
  br label %143

143:                                              ; preds = %139, %132
  %144 = phi i1 [ false, %132 ], [ %142, %139 ]
  %145 = zext i1 %144 to i32
  %146 = call i32 @extent_zeroed_set(i32* %135, i32 %145)
  %147 = load i32*, i32** %8, align 8
  %148 = load i32*, i32** %17, align 8
  %149 = load i32*, i32** %20, align 8
  %150 = load i32*, i32** %11, align 8
  %151 = load i32, i32* @NSIZES, align 4
  %152 = call i32 @extent_rtree_write_acquired(i32* %147, i32* %148, i32* %149, i32* %150, i32 %151, i32 0)
  %153 = load i32*, i32** %8, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = load i32*, i32** %12, align 8
  %156 = call i32 @extent_unlock2(i32* %153, i32* %154, i32* %155)
  %157 = load i32*, i32** %8, align 8
  %158 = load i32*, i32** %12, align 8
  %159 = call i32 @extent_arena_get(i32* %158)
  %160 = load i32*, i32** %12, align 8
  %161 = call i32 @extent_dalloc(i32* %157, i32 %159, i32* %160)
  store i32 0, i32* %7, align 4
  br label %162

162:                                              ; preds = %143, %76, %37
  %163 = load i32, i32* %7, align 4
  ret i32 %163
}

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @extent_hooks_assure_initialized(i32*, %struct.TYPE_6__**) #1

declare dso_local i32 @extent_merge_default_impl(i32, i32) #1

declare dso_local i32 @extent_base_get(i32*) #1

declare dso_local i32 @extent_hook_pre_reentrancy(i32*, i32*) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i32 @extent_committed_get(i32*) #1

declare dso_local i32 @arena_ind_get(i32*) #1

declare dso_local i32 @extent_hook_post_reentrancy(i32*) #1

declare dso_local i32* @tsdn_rtree_ctx(i32*, i32*) #1

declare dso_local i32 @extent_rtree_leaf_elms_lookup(i32*, i32*, i32*, i32, i32, i32**, i32**) #1

declare dso_local i32 @extent_lock2(i32*, i32*, i32*) #1

declare dso_local i32 @rtree_leaf_elm_write(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @extent_size_set(i32*, i64) #1

declare dso_local i32 @extent_szind_set(i32*, i32) #1

declare dso_local i32 @extent_sn_set(i32*, i64) #1

declare dso_local i64 @extent_sn_get(i32*) #1

declare dso_local i32 @extent_zeroed_set(i32*, i32) #1

declare dso_local i64 @extent_zeroed_get(i32*) #1

declare dso_local i32 @extent_rtree_write_acquired(i32*, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @extent_unlock2(i32*, i32*, i32*) #1

declare dso_local i32 @extent_dalloc(i32*, i32, i32*) #1

declare dso_local i32 @extent_arena_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
