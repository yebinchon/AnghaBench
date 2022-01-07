; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_bootstrap_l2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_bootstrap_l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L1_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid virtual address\00", align 1
@VM_MAX_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@Ln_ENTRIES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid L1 index\00", align 1
@Ln_TABLE_MASK = common dso_local global i32 0, align 4
@L1_TABLE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@L1_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @pmap_bootstrap_l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_bootstrap_l2(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @L1_OFFSET, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i32*
  store i32* %19, i32** %9, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @pmap_l1_index(i32 %20)
  store i64 %21, i64* %10, align 8
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %49, %3
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @VM_MAX_KERNEL_ADDRESS, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %23
  %28 = load i64, i64* %10, align 8
  %29 = load i64, i64* @Ln_ENTRIES, align 8
  %30 = icmp ult i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i32 @KASSERT(i32 %31, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @pmap_early_vtophys(i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i64, i64* %10, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @Ln_TABLE_MASK, align 4
  %41 = xor i32 %40, -1
  %42 = and i32 %39, %41
  %43 = load i32, i32* @L1_TABLE, align 4
  %44 = or i32 %42, %43
  %45 = call i32 @pmap_store(i32* %38, i32 %44)
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %7, align 4
  br label %49

49:                                               ; preds = %27
  %50 = load i64, i64* %10, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %10, align 8
  %52 = load i64, i64* @L1_SIZE, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %52
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %5, align 4
  br label %23

57:                                               ; preds = %23
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sub nsw i32 %61, %62
  %64 = call i32 @memset(i8* %60, i32 0, i32 %63)
  %65 = load i32, i32* %7, align 4
  ret i32 %65
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @pmap_l1_index(i32) #1

declare dso_local i32 @pmap_early_vtophys(i32, i32) #1

declare dso_local i32 @pmap_store(i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
