; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c_cvmx_bootmem_phy_available_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-bootmem.c_cvmx_bootmem_phy_available_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@head_addr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cvmx_bootmem_phy_available_mem(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %4, align 8
  %5 = call i32 @__cvmx_bootmem_lock(i32 0)
  %6 = load i32, i32* @head_addr, align 4
  %7 = call i64 @CVMX_BOOTMEM_DESC_GET_FIELD(i32 %6)
  store i64 %7, i64* %3, align 8
  br label %8

8:                                                ; preds = %21, %1
  %9 = load i64, i64* %3, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load i64, i64* %3, align 8
  %13 = call i64 @cvmx_bootmem_phy_get_size(i64 %12)
  %14 = load i64, i64* %2, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @cvmx_bootmem_phy_get_size(i64 %17)
  %19 = load i64, i64* %4, align 8
  %20 = add nsw i64 %19, %18
  store i64 %20, i64* %4, align 8
  br label %21

21:                                               ; preds = %16, %11
  %22 = load i64, i64* %3, align 8
  %23 = call i64 @cvmx_bootmem_phy_get_next(i64 %22)
  store i64 %23, i64* %3, align 8
  br label %8

24:                                               ; preds = %8
  %25 = call i32 @__cvmx_bootmem_unlock(i32 0)
  %26 = load i64, i64* %4, align 8
  ret i64 %26
}

declare dso_local i32 @__cvmx_bootmem_lock(i32) #1

declare dso_local i64 @CVMX_BOOTMEM_DESC_GET_FIELD(i32) #1

declare dso_local i64 @cvmx_bootmem_phy_get_size(i64) #1

declare dso_local i64 @cvmx_bootmem_phy_get_next(i64) #1

declare dso_local i32 @__cvmx_bootmem_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
