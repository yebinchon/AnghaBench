; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_force_invalidate_cache_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_force_invalidate_cache_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_clflush_line_size = common dso_local global i32 0, align 4
@lapic_paddr = common dso_local global i64 0, align 8
@cpu_stdext_feature = common dso_local global i32 0, align 4
@CPUID_STDEXT_CLFLUSHOPT = common dso_local global i32 0, align 4
@cpu_vendor_id = common dso_local global i64 0, align 8
@CPU_VENDOR_INTEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_force_invalidate_cache_range(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i32, i32* @cpu_clflush_line_size, align 4
  %6 = sub nsw i32 %5, 1
  %7 = sext i32 %6 to i64
  %8 = xor i64 %7, -1
  %9 = load i64, i64* %3, align 8
  %10 = and i64 %9, %8
  store i64 %10, i64* %3, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @pmap_kextract(i64 %11)
  %13 = load i64, i64* @lapic_paddr, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %63

16:                                               ; preds = %2
  %17 = load i32, i32* @cpu_stdext_feature, align 4
  %18 = load i32, i32* @CPUID_STDEXT_CLFLUSHOPT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = call i32 (...) @atomic_thread_fence_seq_cst()
  br label %23

23:                                               ; preds = %30, %21
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @clflushopt(i64 %28)
  br label %30

30:                                               ; preds = %27
  %31 = load i32, i32* @cpu_clflush_line_size, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %3, align 8
  %34 = add nsw i64 %33, %32
  store i64 %34, i64* %3, align 8
  br label %23

35:                                               ; preds = %23
  %36 = call i32 (...) @atomic_thread_fence_seq_cst()
  br label %63

37:                                               ; preds = %16
  %38 = load i64, i64* @cpu_vendor_id, align 8
  %39 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = call i32 (...) @mfence()
  br label %43

43:                                               ; preds = %41, %37
  br label %44

44:                                               ; preds = %51, %43
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* %4, align 8
  %47 = icmp slt i64 %45, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @clflush(i64 %49)
  br label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @cpu_clflush_line_size, align 4
  %53 = sext i32 %52 to i64
  %54 = load i64, i64* %3, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, i64* %3, align 8
  br label %44

56:                                               ; preds = %44
  %57 = load i64, i64* @cpu_vendor_id, align 8
  %58 = load i64, i64* @CPU_VENDOR_INTEL, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  %61 = call i32 (...) @mfence()
  br label %62

62:                                               ; preds = %60, %56
  br label %63

63:                                               ; preds = %15, %62, %35
  ret void
}

declare dso_local i64 @pmap_kextract(i64) #1

declare dso_local i32 @atomic_thread_fence_seq_cst(...) #1

declare dso_local i32 @clflushopt(i64) #1

declare dso_local i32 @mfence(...) #1

declare dso_local i32 @clflush(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
