; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent.c_extent_destroy_wrapper.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent.c_extent_destroy_wrapper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 (%struct.TYPE_6__*, i32*, i64, i32, i32)* }

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@extent_hooks_default = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @extent_destroy_wrapper(i32* %0, i32* %1, %struct.TYPE_6__** %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__**, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %7, align 8
  store i32* %3, i32** %8, align 8
  %9 = load i32*, i32** %8, align 8
  %10 = call i32* @extent_base_get(i32* %9)
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert(i32 %12)
  %14 = load i32*, i32** %8, align 8
  %15 = call i64 @extent_size_get(i32* %14)
  %16 = icmp ne i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = call i32 @assert(i32 %17)
  %19 = load i32*, i32** %5, align 8
  %20 = call i32 @tsdn_witness_tsdp_get(i32* %19)
  %21 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %22 = call i32 @witness_assert_depth_to_rank(i32 %20, i32 %21, i32 0)
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @extent_deregister(i32* %23, i32* %24)
  %26 = load i32*, i32** %8, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = call i32* @extent_base_get(i32* %27)
  %29 = call i32 @extent_addr_set(i32* %26, i32* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %32 = call i32 @extent_hooks_assure_initialized(i32* %30, %struct.TYPE_6__** %31)
  %33 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = icmp eq %struct.TYPE_6__* %34, @extent_hooks_default
  br i1 %35, label %36, label %42

36:                                               ; preds = %4
  %37 = load i32*, i32** %8, align 8
  %38 = call i32* @extent_base_get(i32* %37)
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @extent_size_get(i32* %39)
  %41 = call i32 @extent_destroy_default_impl(i32* %38, i64 %40)
  br label %70

42:                                               ; preds = %4
  %43 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32 (%struct.TYPE_6__*, i32*, i64, i32, i32)*, i32 (%struct.TYPE_6__*, i32*, i64, i32, i32)** %45, align 8
  %47 = icmp ne i32 (%struct.TYPE_6__*, i32*, i64, i32, i32)* %46, null
  br i1 %47, label %48, label %69

48:                                               ; preds = %42
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @extent_hook_pre_reentrancy(i32* %49, i32* %50)
  %52 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32 (%struct.TYPE_6__*, i32*, i64, i32, i32)*, i32 (%struct.TYPE_6__*, i32*, i64, i32, i32)** %54, align 8
  %56 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %7, align 8
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = call i32* @extent_base_get(i32* %58)
  %60 = load i32*, i32** %8, align 8
  %61 = call i64 @extent_size_get(i32* %60)
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @extent_committed_get(i32* %62)
  %64 = load i32*, i32** %6, align 8
  %65 = call i32 @arena_ind_get(i32* %64)
  %66 = call i32 %55(%struct.TYPE_6__* %57, i32* %59, i64 %61, i32 %63, i32 %65)
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 @extent_hook_post_reentrancy(i32* %67)
  br label %69

69:                                               ; preds = %48, %42
  br label %70

70:                                               ; preds = %69, %36
  %71 = load i32*, i32** %5, align 8
  %72 = load i32*, i32** %6, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call i32 @extent_dalloc(i32* %71, i32* %72, i32* %73)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @extent_base_get(i32*) #1

declare dso_local i64 @extent_size_get(i32*) #1

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @extent_deregister(i32*, i32*) #1

declare dso_local i32 @extent_addr_set(i32*, i32*) #1

declare dso_local i32 @extent_hooks_assure_initialized(i32*, %struct.TYPE_6__**) #1

declare dso_local i32 @extent_destroy_default_impl(i32*, i64) #1

declare dso_local i32 @extent_hook_pre_reentrancy(i32*, i32*) #1

declare dso_local i32 @extent_committed_get(i32*) #1

declare dso_local i32 @arena_ind_get(i32*) #1

declare dso_local i32 @extent_hook_post_reentrancy(i32*) #1

declare dso_local i32 @extent_dalloc(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
