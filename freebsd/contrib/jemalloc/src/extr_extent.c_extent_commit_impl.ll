; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent.c_extent_commit_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_extent.c_extent_commit_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)* }

@WITNESS_RANK_CORE = common dso_local global i32 0, align 4
@extent_hooks_default = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_6__**, i32*, i64, i64, i32)* @extent_commit_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extent_commit_impl(i32* %0, i32* %1, %struct.TYPE_6__** %2, i32* %3, i64 %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_6__**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_6__** %2, %struct.TYPE_6__*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @tsdn_witness_tsdp_get(i32* %16)
  %18 = load i32, i32* @WITNESS_RANK_CORE, align 4
  %19 = load i32, i32* %14, align 4
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 1, i32 0
  %23 = call i32 @witness_assert_depth_to_rank(i32 %17, i32 %18, i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %26 = call i32 @extent_hooks_assure_initialized(i32* %24, %struct.TYPE_6__** %25)
  %27 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = icmp ne %struct.TYPE_6__* %28, @extent_hooks_default
  br i1 %29, label %30, label %34

30:                                               ; preds = %7
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @extent_hook_pre_reentrancy(i32* %31, i32* %32)
  br label %34

34:                                               ; preds = %30, %7
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)*, i64 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)** %37, align 8
  %39 = icmp eq i64 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)* %38, null
  br i1 %39, label %57, label %40

40:                                               ; preds = %34
  %41 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)*, i64 (%struct.TYPE_6__*, i32, i32, i64, i64, i32)** %43, align 8
  %45 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @extent_base_get(i32* %47)
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @extent_size_get(i32* %49)
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i32*, i32** %9, align 8
  %54 = call i32 @arena_ind_get(i32* %53)
  %55 = call i64 %44(%struct.TYPE_6__* %46, i32 %48, i32 %50, i64 %51, i64 %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %40, %34
  %58 = phi i1 [ true, %34 ], [ %56, %40 ]
  %59 = zext i1 %58 to i32
  store i32 %59, i32* %15, align 4
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %10, align 8
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = icmp ne %struct.TYPE_6__* %61, @extent_hooks_default
  br i1 %62, label %63, label %66

63:                                               ; preds = %57
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @extent_hook_post_reentrancy(i32* %64)
  br label %66

66:                                               ; preds = %63, %57
  %67 = load i32*, i32** %11, align 8
  %68 = load i32*, i32** %11, align 8
  %69 = call i64 @extent_committed_get(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* %15, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i1 [ true, %66 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  %78 = call i32 @extent_committed_set(i32* %67, i32 %77)
  %79 = load i32, i32* %15, align 4
  ret i32 %79
}

declare dso_local i32 @witness_assert_depth_to_rank(i32, i32, i32) #1

declare dso_local i32 @tsdn_witness_tsdp_get(i32*) #1

declare dso_local i32 @extent_hooks_assure_initialized(i32*, %struct.TYPE_6__**) #1

declare dso_local i32 @extent_hook_pre_reentrancy(i32*, i32*) #1

declare dso_local i32 @extent_base_get(i32*) #1

declare dso_local i32 @extent_size_get(i32*) #1

declare dso_local i32 @arena_ind_get(i32*) #1

declare dso_local i32 @extent_hook_post_reentrancy(i32*) #1

declare dso_local i32 @extent_committed_set(i32*, i32) #1

declare dso_local i64 @extent_committed_get(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
