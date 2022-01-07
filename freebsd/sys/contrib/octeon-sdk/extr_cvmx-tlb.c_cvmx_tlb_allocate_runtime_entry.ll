; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tlb.c_cvmx_tlb_allocate_runtime_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tlb.c_cvmx_tlb_allocate_runtime_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_tlb_allocate_runtime_entry() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  store i64 -1, i64* %2, align 8
  %3 = call i64 (...) @__tlb_wired_index()
  store i64 %3, i64* %1, align 8
  br label %4

4:                                                ; preds = %15, %0
  %5 = load i64, i64* %1, align 8
  %6 = call i64 (...) @cvmx_core_get_tlb_entries()
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load i64, i64* %1, align 8
  %10 = call i64 @__tlb_entry_is_free(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i64, i64* %1, align 8
  store i64 %13, i64* %2, align 8
  br label %18

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14
  %16 = load i64, i64* %1, align 8
  %17 = add nsw i64 %16, 1
  store i64 %17, i64* %1, align 8
  br label %4

18:                                               ; preds = %12, %4
  %19 = load i64, i64* %2, align 8
  %20 = trunc i64 %19 to i32
  ret i32 %20
}

declare dso_local i64 @__tlb_wired_index(...) #1

declare dso_local i64 @cvmx_core_get_tlb_entries(...) #1

declare dso_local i64 @__tlb_entry_is_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
