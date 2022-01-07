; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_sync_icache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_sync_icache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MIN_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_sync_icache(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @VM_MIN_KERNEL_ADDRESS, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @cpu_icache_sync_range(i32 %14, i32 %15)
  br label %52

17:                                               ; preds = %3
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @PAGE_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %8, align 4
  %21 = load i64, i64* @PAGE_SIZE, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %21, %23
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @imin(i64 %24, i32 %25)
  store i32 %26, i32* %7, align 4
  br label %27

27:                                               ; preds = %41, %17
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i64 @pmap_extract(i32 %31, i32 %32)
  store i64 %33, i64* %9, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %30
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @PHYS_TO_DMAP(i64 %37)
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @cpu_icache_sync_range(i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %30
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %5, align 4
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @imin(i64 %48, i32 %49)
  store i32 %50, i32* %7, align 4
  br label %27

51:                                               ; preds = %27
  br label %52

52:                                               ; preds = %51, %13
  ret void
}

declare dso_local i32 @cpu_icache_sync_range(i32, i32) #1

declare dso_local i32 @imin(i64, i32) #1

declare dso_local i64 @pmap_extract(i32, i32) #1

declare dso_local i32 @PHYS_TO_DMAP(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
