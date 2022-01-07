; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tlb.c___tlb_entry_is_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tlb.c___tlb_entry_is_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TLB_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @__tlb_entry_is_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__tlb_entry_is_free(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i64, i64* %2, align 8
  %7 = call i64 (...) @cvmx_core_get_tlb_entries()
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = call i32 @__tlb_read_index(i64 %10)
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @CVMX_MF_ENTRY_LO_0(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @CVMX_MF_ENTRY_LO_1(i32 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @TLB_VALID, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %9
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @TLB_VALID, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %20, %9
  br label %27

27:                                               ; preds = %26, %1
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @cvmx_core_get_tlb_entries(...) #1

declare dso_local i32 @__tlb_read_index(i64) #1

declare dso_local i32 @CVMX_MF_ENTRY_LO_0(i32) #1

declare dso_local i32 @CVMX_MF_ENTRY_LO_1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
