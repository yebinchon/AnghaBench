; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tlb.c___tlb_dump_index.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-tlb.c___tlb_dump_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @__tlb_dump_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__tlb_dump_index(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %7 = load i64, i64* %2, align 8
  %8 = call i64 (...) @cvmx_core_get_tlb_entries()
  %9 = icmp slt i64 %7, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %1
  %11 = load i64, i64* %2, align 8
  %12 = call i64 @__tlb_entry_is_free(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %26

15:                                               ; preds = %10
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @__tlb_read_index(i64 %16)
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @CVMX_MF_ENTRY_HIGH(i64 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @CVMX_MF_ENTRY_LO_0(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @CVMX_MF_ENTRY_LO_1(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @CVMX_MF_PAGEMASK(i32 %24)
  br label %26

26:                                               ; preds = %15, %14
  br label %27

27:                                               ; preds = %26, %1
  ret void
}

declare dso_local i64 @cvmx_core_get_tlb_entries(...) #1

declare dso_local i64 @__tlb_entry_is_free(i64) #1

declare dso_local i32 @__tlb_read_index(i64) #1

declare dso_local i32 @CVMX_MF_ENTRY_HIGH(i64) #1

declare dso_local i32 @CVMX_MF_ENTRY_LO_0(i32) #1

declare dso_local i32 @CVMX_MF_ENTRY_LO_1(i32) #1

declare dso_local i32 @CVMX_MF_PAGEMASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
