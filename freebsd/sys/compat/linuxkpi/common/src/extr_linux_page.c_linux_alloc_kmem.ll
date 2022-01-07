; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_page.c_linux_alloc_kmem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/linuxkpi/common/src/extr_linux_page.c_linux_alloc_kmem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@GFP_DMA32 = common dso_local global i32 0, align 4
@GFP_NATIVE_MASK = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @linux_alloc_kmem(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* @PAGE_SIZE, align 8
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = shl i64 %7, %9
  store i64 %10, i64* %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @GFP_DMA32, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @GFP_NATIVE_MASK, align 4
  %19 = and i32 %17, %18
  %20 = call i32 @kmem_malloc(i64 %16, i32 %19)
  store i32 %20, i32* %6, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load i64, i64* %5, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @GFP_NATIVE_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %29 = call i32 @kmem_alloc_contig(i64 %22, i32 %25, i32 0, i32 %26, i64 %27, i32 0, i32 %28)
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %21, %15
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i32 @kmem_malloc(i64, i32) #1

declare dso_local i32 @kmem_alloc_contig(i64, i32, i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
