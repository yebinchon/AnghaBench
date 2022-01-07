; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_copy_page_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_copy_page_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmtx = common dso_local global i32 0, align 4
@L2_S_PROTO = common dso_local global i32 0, align 4
@PTE_KERNEL = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@pte_l2_s_cache_mode = common dso_local global i32 0, align 4
@csrc_pte = common dso_local global i32* null, align 8
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@cdst_pte = common dso_local global i32* null, align 8
@csrcp = common dso_local global i32 0, align 4
@cdstp = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @pmap_copy_page_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_copy_page_generic(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = call i32 @mtx_lock(i32* @cmtx)
  %6 = load i32, i32* @L2_S_PROTO, align 4
  %7 = load i32, i32* %3, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @PTE_KERNEL, align 4
  %10 = load i32, i32* @VM_PROT_READ, align 4
  %11 = call i32 @L2_S_PROT(i32 %9, i32 %10)
  %12 = or i32 %8, %11
  %13 = load i32, i32* @pte_l2_s_cache_mode, align 4
  %14 = or i32 %12, %13
  %15 = load i32*, i32** @csrc_pte, align 8
  store i32 %14, i32* %15, align 4
  %16 = load i32*, i32** @csrc_pte, align 8
  %17 = call i32 @PTE_SYNC(i32* %16)
  %18 = load i32, i32* @L2_S_PROTO, align 4
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @PTE_KERNEL, align 4
  %22 = load i32, i32* @VM_PROT_WRITE, align 4
  %23 = call i32 @L2_S_PROT(i32 %21, i32 %22)
  %24 = or i32 %20, %23
  %25 = load i32, i32* @pte_l2_s_cache_mode, align 4
  %26 = or i32 %24, %25
  %27 = load i32*, i32** @cdst_pte, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** @cdst_pte, align 8
  %29 = call i32 @PTE_SYNC(i32* %28)
  %30 = load i32, i32* @csrcp, align 4
  %31 = call i32 @cpu_tlb_flushD_SE(i32 %30)
  %32 = load i32, i32* @cdstp, align 4
  %33 = call i32 @cpu_tlb_flushD_SE(i32 %32)
  %34 = call i32 (...) @cpu_cpwait()
  %35 = load i32, i32* @csrcp, align 4
  %36 = load i32, i32* @cdstp, align 4
  %37 = call i32 @bcopy_page(i32 %35, i32 %36)
  %38 = call i32 @mtx_unlock(i32* @cmtx)
  %39 = load i32, i32* @csrcp, align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = call i32 @cpu_dcache_inv_range(i32 %39, i32 %40)
  %42 = load i32, i32* @cdstp, align 4
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = call i32 @cpu_dcache_wbinv_range(i32 %42, i32 %43)
  %45 = load i32, i32* @csrcp, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = call i32 @cpu_l2cache_inv_range(i32 %45, i32 %46)
  %48 = load i32, i32* @cdstp, align 4
  %49 = load i32, i32* @PAGE_SIZE, align 4
  %50 = call i32 @cpu_l2cache_wbinv_range(i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @L2_S_PROT(i32, i32) #1

declare dso_local i32 @PTE_SYNC(i32*) #1

declare dso_local i32 @cpu_tlb_flushD_SE(i32) #1

declare dso_local i32 @cpu_cpwait(...) #1

declare dso_local i32 @bcopy_page(i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @cpu_dcache_inv_range(i32, i32) #1

declare dso_local i32 @cpu_dcache_wbinv_range(i32, i32) #1

declare dso_local i32 @cpu_l2cache_inv_range(i32, i32) #1

declare dso_local i32 @cpu_l2cache_wbinv_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
