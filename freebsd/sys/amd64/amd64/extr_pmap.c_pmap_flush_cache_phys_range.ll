; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_flush_cache_phys_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_flush_cache_phys_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"pmap_flush_cache_phys_range: spa not page-aligned\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"pmap_flush_cache_phys_range: epa not page-aligned\00", align 1
@dmaplimit = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@kernel_arena = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@M_BESTFIT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"vmem_alloc failed: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_flush_cache_phys_range(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @PAGE_MASK, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @PAGE_MASK, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @dmaplimit, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %3
  %27 = load i32, i32* %4, align 4
  %28 = call i64 @PHYS_TO_DMAP(i32 %27)
  %29 = load i32, i32* @dmaplimit, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @MIN(i32 %29, i32 %30)
  %32 = call i64 @PHYS_TO_DMAP(i32 %31)
  %33 = call i32 @pmap_flush_cache_range(i64 %28, i64 %32)
  %34 = load i32, i32* @dmaplimit, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %93

38:                                               ; preds = %26
  %39 = load i32, i32* @dmaplimit, align 4
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %38, %3
  %41 = load i32, i32* @kernel_pmap, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @pmap_cache_bits(i32 %41, i32 %42, i32 0)
  %44 = load i32, i32* @X86_PG_RW, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @X86_PG_V, align 4
  %47 = or i32 %45, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* @kernel_arena, align 4
  %49 = load i64, i64* @PAGE_SIZE, align 8
  %50 = load i32, i32* @M_BESTFIT, align 4
  %51 = load i32, i32* @M_WAITOK, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @vmem_alloc(i32 %48, i64 %49, i32 %52, i64* %8)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to i8*
  %60 = call i32 @KASSERT(i32 %56, i8* %59)
  %61 = load i64, i64* %8, align 8
  %62 = call i32* @vtopte(i64 %61)
  store i32* %62, i32** %7, align 8
  br label %63

63:                                               ; preds = %82, %40
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = call i32 (...) @sched_pin()
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @pte_store(i32* %69, i32 %72)
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @invlpg(i64 %74)
  %76 = load i64, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @PAGE_SIZE, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @pmap_flush_cache_range(i64 %76, i64 %79)
  %81 = call i32 (...) @sched_unpin()
  br label %82

82:                                               ; preds = %67
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %4, align 4
  br label %63

88:                                               ; preds = %63
  %89 = load i32, i32* @kernel_arena, align 4
  %90 = load i64, i64* %8, align 8
  %91 = load i64, i64* @PAGE_SIZE, align 8
  %92 = call i32 @vmem_free(i32 %89, i64 %90, i64 %91)
  br label %93

93:                                               ; preds = %88, %37
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_flush_cache_range(i64, i64) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @pmap_cache_bits(i32, i32, i32) #1

declare dso_local i32 @vmem_alloc(i32, i64, i32, i64*) #1

declare dso_local i32* @vtopte(i64) #1

declare dso_local i32 @sched_pin(...) #1

declare dso_local i32 @pte_store(i32*, i32) #1

declare dso_local i32 @invlpg(i64) #1

declare dso_local i32 @sched_unpin(...) #1

declare dso_local i32 @vmem_free(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
