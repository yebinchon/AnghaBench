; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_enter_1mpage.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_enter_1mpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MA_OWNED = common dso_local global i32 0, align 4
@PTE1_NM = common dso_local global i32 0, align 4
@PTE1_RO = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@PTE1_NX = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@PTE1_U = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i64 0, align 8
@PTE1_NG = common dso_local global i32 0, align 4
@PMAP_ENTER_NOSLEEP = common dso_local global i32 0, align 4
@PMAP_ENTER_NOREPLACE = common dso_local global i32 0, align 4
@PMAP_ENTER_NORECLAIM = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32, i32)* @pmap_enter_1mpage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_enter_1mpage(i64 %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i64, i64* %5, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @PMAP_LOCK_ASSERT(i64 %11, i32 %12)
  %14 = load i32, i32* %7, align 4
  %15 = call i32 @VM_PAGE_TO_PHYS(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @PTE1_NM, align 4
  %18 = load i32, i32* @PTE1_RO, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @vm_page_pte2_attr(i32 %20)
  %22 = call i32 @ATTR_TO_L1(i32 %21)
  %23 = call i32 @PTE1(i32 %16, i32 %19, i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load i32, i32* @PTE1_NX, align 4
  %30 = load i32, i32* %9, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %28, %4
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %35 = icmp slt i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @PTE1_U, align 4
  %38 = load i32, i32* %9, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %36, %32
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* @kernel_pmap, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = load i32, i32* @PTE1_NG, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  br label %48

48:                                               ; preds = %44, %40
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @PMAP_ENTER_NOSLEEP, align 4
  %53 = load i32, i32* @PMAP_ENTER_NOREPLACE, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @PMAP_ENTER_NORECLAIM, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %7, align 4
  %58 = call i64 @pmap_enter_pte1(i64 %49, i64 %50, i32 %51, i32 %56, i32 %57)
  %59 = load i64, i64* @KERN_SUCCESS, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  ret i32 %61
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i64, i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @PTE1(i32, i32, i32) #1

declare dso_local i32 @ATTR_TO_L1(i32) #1

declare dso_local i32 @vm_page_pte2_attr(i32) #1

declare dso_local i64 @pmap_enter_pte1(i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
