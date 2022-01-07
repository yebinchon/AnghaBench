; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_change_pte1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_change_pte1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kernel_pmap = common dso_local global i64 0, align 8
@allpmaps_lock = common dso_local global i32 0, align 4
@PSR_I = common dso_local global i32 0, align 4
@PSR_F = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32*, i32, i32)* @pmap_change_pte1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_change_pte1(i64 %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @kernel_pmap, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %4
  %14 = call i32 @mtx_lock_spin(i32* @allpmaps_lock)
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @pmap_update_pte1_kernel(i32 %15, i32 %16)
  %18 = call i32 @mtx_unlock_spin(i32* @allpmaps_lock)
  br label %35

19:                                               ; preds = %4
  %20 = load i32, i32* @PSR_I, align 4
  %21 = load i32, i32* @PSR_F, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @disable_interrupts(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32*, i32** %6, align 8
  %25 = call i32 @pte1_clear(i32* %24)
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @pmap_tlb_flush_pte1(i64 %26, i32 %27, i32 %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @pte1_store(i32* %30, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @restore_interrupts(i32 %33)
  br label %35

35:                                               ; preds = %19, %13
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @pmap_update_pte1_kernel(i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @disable_interrupts(i32) #1

declare dso_local i32 @pte1_clear(i32*) #1

declare dso_local i32 @pmap_tlb_flush_pte1(i64, i32, i32) #1

declare dso_local i32 @pte1_store(i32*, i32) #1

declare dso_local i32 @restore_interrupts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
