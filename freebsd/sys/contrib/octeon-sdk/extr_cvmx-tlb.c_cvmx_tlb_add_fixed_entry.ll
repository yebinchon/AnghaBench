; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tlb.c_cvmx_tlb_add_fixed_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tlb.c_cvmx_tlb_add_fixed_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_tlb_add_fixed_entry(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load i64, i64* %9, align 8
  %12 = call i32 @CVMX_MF_TLB_WIRED(i64 %11)
  %13 = load i64, i64* %9, align 8
  %14 = call i64 (...) @cvmx_core_get_tlb_entries()
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %35

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = call i64 @__tlb_entry_is_free(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %16
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @cvmx_tlb_write_entry(i64 %21, i64 %22, i64 %23, i64 %24, i64 %25)
  %27 = load i64, i64* %9, align 8
  %28 = call i64 @__tlb_entry_is_free(i64 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %20
  %31 = load i64, i64* %9, align 8
  %32 = add nsw i64 %31, 1
  %33 = call i32 @CVMX_MT_TLB_WIRED(i64 %32)
  store i32 1, i32* %10, align 4
  br label %34

34:                                               ; preds = %30, %20
  br label %35

35:                                               ; preds = %34, %16, %4
  %36 = load i32, i32* %10, align 4
  ret i32 %36
}

declare dso_local i32 @CVMX_MF_TLB_WIRED(i64) #1

declare dso_local i64 @cvmx_core_get_tlb_entries(...) #1

declare dso_local i64 @__tlb_entry_is_free(i64) #1

declare dso_local i32 @cvmx_tlb_write_entry(i64, i64, i64, i64, i64) #1

declare dso_local i32 @CVMX_MT_TLB_WIRED(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
