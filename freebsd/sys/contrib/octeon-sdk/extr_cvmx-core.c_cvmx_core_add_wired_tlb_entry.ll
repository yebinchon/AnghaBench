; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-core.c_cvmx_core_add_wired_tlb_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-core.c_cvmx_core_add_wired_tlb_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CVMX_EHB = common dso_local global i32 0, align 4
@CVMX_TLBWI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_core_add_wired_tlb_entry(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @CVMX_MF_TLB_WIRED(i32 %11)
  %13 = load i32, i32* %10, align 4
  %14 = call i64 (...) @cvmx_core_get_tlb_entries()
  %15 = trunc i64 %14 to i32
  %16 = icmp uge i32 %13, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %36

18:                                               ; preds = %4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @CVMX_MT_ENTRY_HIGH(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @CVMX_MT_ENTRY_LO_0(i32 %21)
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @CVMX_MT_ENTRY_LO_1(i32 %23)
  %25 = load i32, i32* %9, align 4
  %26 = call i32 @CVMX_MT_PAGEMASK(i32 %25)
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @CVMX_MT_TLB_INDEX(i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = add i32 %29, 1
  %31 = call i32 @CVMX_MT_TLB_WIRED(i32 %30)
  %32 = load i32, i32* @CVMX_EHB, align 4
  %33 = load i32, i32* @CVMX_TLBWI, align 4
  %34 = load i32, i32* @CVMX_EHB, align 4
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %18, %17
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @CVMX_MF_TLB_WIRED(i32) #1

declare dso_local i64 @cvmx_core_get_tlb_entries(...) #1

declare dso_local i32 @CVMX_MT_ENTRY_HIGH(i32) #1

declare dso_local i32 @CVMX_MT_ENTRY_LO_0(i32) #1

declare dso_local i32 @CVMX_MT_ENTRY_LO_1(i32) #1

declare dso_local i32 @CVMX_MT_PAGEMASK(i32) #1

declare dso_local i32 @CVMX_MT_TLB_INDEX(i32) #1

declare dso_local i32 @CVMX_MT_TLB_WIRED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
