; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_copy_page_offs_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_copy_page_offs_generic.c"
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_copy_page_offs_generic(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = call i32 @mtx_lock(i32* @cmtx)
  %12 = load i32, i32* @L2_S_PROTO, align 4
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @PTE_KERNEL, align 4
  %16 = load i32, i32* @VM_PROT_READ, align 4
  %17 = call i32 @L2_S_PROT(i32 %15, i32 %16)
  %18 = or i32 %14, %17
  %19 = load i32, i32* @pte_l2_s_cache_mode, align 4
  %20 = or i32 %18, %19
  %21 = load i32*, i32** @csrc_pte, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** @csrc_pte, align 8
  %23 = call i32 @PTE_SYNC(i32* %22)
  %24 = load i32, i32* @L2_S_PROTO, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PTE_KERNEL, align 4
  %28 = load i32, i32* @VM_PROT_WRITE, align 4
  %29 = call i32 @L2_S_PROT(i32 %27, i32 %28)
  %30 = or i32 %26, %29
  %31 = load i32, i32* @pte_l2_s_cache_mode, align 4
  %32 = or i32 %30, %31
  %33 = load i32*, i32** @cdst_pte, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** @cdst_pte, align 8
  %35 = call i32 @PTE_SYNC(i32* %34)
  %36 = load i32, i32* @csrcp, align 4
  %37 = call i32 @cpu_tlb_flushD_SE(i32 %36)
  %38 = load i32, i32* @cdstp, align 4
  %39 = call i32 @cpu_tlb_flushD_SE(i32 %38)
  %40 = call i32 (...) @cpu_cpwait()
  %41 = load i32, i32* @csrcp, align 4
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i32, i32* @cdstp, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load i32, i32* %9, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load i32, i32* %10, align 4
  %54 = call i32 @bcopy(i8* %46, i8* %52, i32 %53)
  %55 = call i32 @mtx_unlock(i32* @cmtx)
  %56 = load i32, i32* @csrcp, align 4
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %10, align 4
  %60 = call i32 @cpu_dcache_inv_range(i32 %58, i32 %59)
  %61 = load i32, i32* @cdstp, align 4
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @cpu_dcache_wbinv_range(i32 %63, i32 %64)
  %66 = load i32, i32* @csrcp, align 4
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @cpu_l2cache_inv_range(i32 %68, i32 %69)
  %71 = load i32, i32* @cdstp, align 4
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %71, %72
  %74 = load i32, i32* %10, align 4
  %75 = call i32 @cpu_l2cache_wbinv_range(i32 %73, i32 %74)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @L2_S_PROT(i32, i32) #1

declare dso_local i32 @PTE_SYNC(i32*) #1

declare dso_local i32 @cpu_tlb_flushD_SE(i32) #1

declare dso_local i32 @cpu_cpwait(...) #1

declare dso_local i32 @bcopy(i8*, i8*, i32) #1

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
