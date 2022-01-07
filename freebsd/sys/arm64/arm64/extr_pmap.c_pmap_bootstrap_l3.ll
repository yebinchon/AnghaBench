; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_bootstrap_l3.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_bootstrap_l3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L2_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Invalid virtual address\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VM_MAX_KERNEL_ADDRESS = common dso_local global i32 0, align 4
@Ln_ENTRIES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"Invalid L2 index\00", align 1
@Ln_TABLE_MASK = common dso_local global i32 0, align 4
@ATTR_UXN = common dso_local global i32 0, align 4
@L2_TABLE = common dso_local global i32 0, align 4
@L2_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @pmap_bootstrap_l3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_bootstrap_l3(i32 %0, i32 %1, i32 %2) #0 {
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
  %12 = load i32, i32* @L2_OFFSET, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @kernel_pmap, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32* @pmap_l2(i32 %17, i32 %18)
  store i32* %19, i32** %9, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = ptrtoint i32* %20 to i64
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = call i64 @rounddown2(i64 %21, i32 %22)
  %24 = inttoptr i64 %23 to i32*
  store i32* %24, i32** %9, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @pmap_l2_index(i32 %25)
  store i64 %26, i64* %10, align 8
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %56, %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @VM_MAX_KERNEL_ADDRESS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %28
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* @Ln_ENTRIES, align 8
  %35 = icmp ult i64 %33, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @KASSERT(i32 %36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @pmap_early_vtophys(i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @Ln_TABLE_MASK, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = load i32, i32* @ATTR_UXN, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @L2_TABLE, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @pmap_store(i32* %43, i32 %51)
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %7, align 4
  br label %56

56:                                               ; preds = %32
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %10, align 8
  %59 = load i64, i64* @L2_SIZE, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = add nsw i64 %61, %59
  %63 = trunc i64 %62 to i32
  store i32 %63, i32* %5, align 4
  br label %28

64:                                               ; preds = %28
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %6, align 4
  %70 = sub nsw i32 %68, %69
  %71 = call i32 @memset(i8* %67, i32 0, i32 %70)
  %72 = load i32, i32* %7, align 4
  ret i32 %72
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @pmap_l2(i32, i32) #1

declare dso_local i64 @rounddown2(i64, i32) #1

declare dso_local i64 @pmap_l2_index(i32) #1

declare dso_local i32 @pmap_early_vtophys(i32, i32) #1

declare dso_local i32 @pmap_store(i32*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
