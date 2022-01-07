; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_map_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_map_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"ouin\00", align 1
@pte_l2_s_cache_mode = common dso_local global i64 0, align 8
@pte_l2_s_cache_mode_pt = common dso_local global i64 0, align 8
@L1_S_SHIFT = common dso_local global i64 0, align 8
@L1_TYPE_MASK = common dso_local global i32 0, align 4
@L1_TYPE_C = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"pmap_map_entry: no L2 table for VA 0x%08x\00", align 1
@L1_C_ADDR_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"pmap_map_entry: can't find L2 table for VA 0x%08x\00", align 1
@L2_S_PROTO = common dso_local global i64 0, align 8
@PTE_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_map_entry(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i64, i64* %6, align 8
  %15 = inttoptr i64 %14 to i32*
  store i32* %15, i32** %11, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = or i64 %16, %17
  %19 = load i64, i64* @PAGE_MASK, align 8
  %20 = and i64 %18, %19
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* %10, align 4
  switch i32 %24, label %26 [
    i32 129, label %25
    i32 130, label %27
    i32 128, label %29
  ]

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %5, %25
  store i64 0, i64* %12, align 8
  br label %31

27:                                               ; preds = %5
  %28 = load i64, i64* @pte_l2_s_cache_mode, align 8
  store i64 %28, i64* %12, align 8
  br label %31

29:                                               ; preds = %5
  %30 = load i64, i64* @pte_l2_s_cache_mode_pt, align 8
  store i64 %30, i64* %12, align 8
  br label %31

31:                                               ; preds = %29, %27, %26
  %32 = load i32*, i32** %11, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @L1_S_SHIFT, align 8
  %35 = lshr i64 %33, %34
  %36 = getelementptr inbounds i32, i32* %32, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @L1_TYPE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @L1_TYPE_C, align 4
  %41 = icmp ne i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i64, i64* %7, align 8
  %44 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %42, %31
  %46 = load i32*, i32** %11, align 8
  %47 = load i64, i64* %7, align 8
  %48 = call i64 @L1_IDX(i64 %47)
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @L1_C_ADDR_MASK, align 4
  %52 = and i32 %50, %51
  %53 = call i64 @kernel_pt_lookup(i32 %52)
  %54 = inttoptr i64 %53 to i64*
  store i64* %54, i64** %13, align 8
  %55 = load i64*, i64** %13, align 8
  %56 = icmp eq i64* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %45
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @panic(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %58)
  br label %60

60:                                               ; preds = %57, %45
  %61 = load i64, i64* @L2_S_PROTO, align 8
  %62 = load i64, i64* %8, align 8
  %63 = or i64 %61, %62
  %64 = load i32, i32* @PTE_KERNEL, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call i64 @L2_S_PROT(i32 %64, i32 %65)
  %67 = or i64 %63, %66
  %68 = load i64, i64* %12, align 8
  %69 = or i64 %67, %68
  %70 = load i64*, i64** %13, align 8
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @l2pte_index(i64 %71)
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  store i64 %69, i64* %73, align 8
  %74 = load i64*, i64** %13, align 8
  %75 = load i64, i64* %7, align 8
  %76 = call i64 @l2pte_index(i64 %75)
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = call i32 @PTE_SYNC(i64* %77)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @panic(i8*, i64) #1

declare dso_local i64 @kernel_pt_lookup(i32) #1

declare dso_local i64 @L1_IDX(i64) #1

declare dso_local i64 @L2_S_PROT(i32, i32) #1

declare dso_local i64 @l2pte_index(i64) #1

declare dso_local i32 @PTE_SYNC(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
