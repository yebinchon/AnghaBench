; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_zero_page_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_zero_page_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_min_bzero_size = common dso_local global i32 0, align 4
@IS_PHYSICAL = common dso_local global i32 0, align 4
@cmtx = common dso_local global i32 0, align 4
@L2_S_PROTO = common dso_local global i32 0, align 4
@PTE_KERNEL = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@cdst_pte = common dso_local global i32* null, align 8
@cdstp = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @pmap_zero_page_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_zero_page_generic(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  br i1 true, label %7, label %22

7:                                                ; preds = %3
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @_min_bzero_size, align 4
  %10 = icmp sge i32 %8, %9
  br i1 %10, label %11, label %22

11:                                               ; preds = %7
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* %5, align 4
  %14 = add nsw i32 %12, %13
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @IS_PHYSICAL, align 4
  %19 = call i64 @_arm_bzero(i8* %16, i32 %17, i32 %18)
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  br label %56

22:                                               ; preds = %11, %7, %3
  %23 = call i32 @mtx_lock(i32* @cmtx)
  %24 = load i32, i32* @L2_S_PROTO, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @PTE_KERNEL, align 4
  %28 = load i32, i32* @VM_PROT_WRITE, align 4
  %29 = call i32 @L2_S_PROT(i32 %27, i32 %28)
  %30 = or i32 %26, %29
  %31 = load i32*, i32** @cdst_pte, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** @cdst_pte, align 8
  %33 = call i32 @PTE_SYNC(i32* %32)
  %34 = load i64, i64* @cdstp, align 8
  %35 = call i32 @cpu_tlb_flushD_SE(i64 %34)
  %36 = call i32 (...) @cpu_cpwait()
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %43, label %39

39:                                               ; preds = %22
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @PAGE_SIZE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39, %22
  %44 = load i64, i64* @cdstp, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = inttoptr i64 %47 to i8*
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @bzero(i8* %48, i32 %49)
  br label %54

51:                                               ; preds = %39
  %52 = load i64, i64* @cdstp, align 8
  %53 = call i32 @bzero_page(i64 %52)
  br label %54

54:                                               ; preds = %51, %43
  %55 = call i32 @mtx_unlock(i32* @cmtx)
  br label %56

56:                                               ; preds = %54, %21
  ret void
}

declare dso_local i64 @_arm_bzero(i8*, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @L2_S_PROT(i32, i32) #1

declare dso_local i32 @PTE_SYNC(i32*) #1

declare dso_local i32 @cpu_tlb_flushD_SE(i64) #1

declare dso_local i32 @cpu_cpwait(...) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @bzero_page(i64) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
