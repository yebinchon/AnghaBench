; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_kremove_device.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_kremove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L3_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"pmap_kremove_device: Invalid virtual address\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"pmap_kremove_device: Mapping is not page-sized\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Invalid page table, va: 0x%lx\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Invalid device pagetable level: %d != 3\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_kremove_device(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @L3_OFFSET, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @PAGE_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %24, %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %21
  %25 = load i32, i32* @kernel_pmap, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32* @pmap_pte(i32 %25, i32 %26, i32* %7)
  store i32* %27, i32** %5, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = icmp ne i32* %28, null
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @KASSERT(i32 %30, i8* %33)
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %35, 3
  %37 = zext i1 %36 to i32
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @KASSERT(i32 %37, i8* %40)
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @pmap_clear(i32* %42)
  %44 = load i64, i64* @PAGE_SIZE, align 8
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %6, align 4
  %49 = load i64, i64* @PAGE_SIZE, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = sub nsw i64 %51, %49
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %4, align 4
  br label %21

54:                                               ; preds = %21
  %55 = load i32, i32* @kernel_pmap, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @pmap_invalidate_range(i32 %55, i32 %56, i32 %57)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @pmap_pte(i32, i32, i32*) #1

declare dso_local i32 @pmap_clear(i32*) #1

declare dso_local i32 @pmap_invalidate_range(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
