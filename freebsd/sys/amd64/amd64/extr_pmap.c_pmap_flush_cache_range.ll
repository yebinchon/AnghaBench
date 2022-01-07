; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_flush_cache_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_flush_cache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_stdext_feature = common dso_local global i32 0, align 4
@CPUID_STDEXT_CLWB = common dso_local global i32 0, align 4
@lapic_paddr = common dso_local global i64 0, align 8
@cpu_clflush_line_size = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_flush_cache_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @pmap_invalidate_cache_range_check_align(i64 %5, i64 %6)
  %8 = load i32, i32* @cpu_stdext_feature, align 4
  %9 = load i32, i32* @CPUID_STDEXT_CLWB, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* %4, align 8
  %15 = call i32 @pmap_force_invalidate_cache_range(i64 %13, i64 %14)
  br label %37

16:                                               ; preds = %2
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @pmap_kextract(i64 %17)
  %19 = load i64, i64* @lapic_paddr, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %37

22:                                               ; preds = %16
  %23 = call i32 (...) @atomic_thread_fence_seq_cst()
  br label %24

24:                                               ; preds = %31, %22
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load i64, i64* %3, align 8
  %30 = call i32 @clwb(i64 %29)
  br label %31

31:                                               ; preds = %28
  %32 = load i64, i64* @cpu_clflush_line_size, align 8
  %33 = load i64, i64* %3, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %3, align 8
  br label %24

35:                                               ; preds = %24
  %36 = call i32 (...) @atomic_thread_fence_seq_cst()
  br label %37

37:                                               ; preds = %35, %21, %12
  ret void
}

declare dso_local i32 @pmap_invalidate_cache_range_check_align(i64, i64) #1

declare dso_local i32 @pmap_force_invalidate_cache_range(i64, i64) #1

declare dso_local i64 @pmap_kextract(i64) #1

declare dso_local i32 @atomic_thread_fence_seq_cst(...) #1

declare dso_local i32 @clwb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
