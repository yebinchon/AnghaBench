; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_copy_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_copy_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@_min_memcpy_size = common dso_local global i64 0, align 8
@IS_PHYSICAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_copy_page(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32 (...) @cpu_dcache_wbinv_all()
  %6 = call i32 (...) @cpu_l2cache_wbinv_all()
  br i1 true, label %7, label %23

7:                                                ; preds = %2
  %8 = load i64, i64* @PAGE_SIZE, align 8
  %9 = load i64, i64* @_min_memcpy_size, align 8
  %10 = icmp sge i64 %8, %9
  br i1 %10, label %11, label %23

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @VM_PAGE_TO_PHYS(i32 %12)
  %14 = inttoptr i64 %13 to i8*
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @VM_PAGE_TO_PHYS(i32 %15)
  %17 = inttoptr i64 %16 to i8*
  %18 = load i64, i64* @PAGE_SIZE, align 8
  %19 = load i32, i32* @IS_PHYSICAL, align 4
  %20 = call i64 @_arm_memcpy(i8* %14, i8* %17, i64 %18, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %11
  br label %29

23:                                               ; preds = %11, %7, %2
  %24 = load i32, i32* %3, align 4
  %25 = call i64 @VM_PAGE_TO_PHYS(i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = call i64 @VM_PAGE_TO_PHYS(i32 %26)
  %28 = call i32 @pmap_copy_page_generic(i64 %25, i64 %27)
  br label %29

29:                                               ; preds = %23, %22
  ret void
}

declare dso_local i32 @cpu_dcache_wbinv_all(...) #1

declare dso_local i32 @cpu_l2cache_wbinv_all(...) #1

declare dso_local i64 @_arm_memcpy(i8*, i8*, i64, i32) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @pmap_copy_page_generic(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
