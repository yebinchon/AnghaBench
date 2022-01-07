; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_set_pt_cache_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v4.c_pmap_set_pt_cache_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L1_S_CACHE_MASK = common dso_local global i32 0, align 4
@pte_l1_s_cache_mode_pt = common dso_local global i32 0, align 4
@L1_C_ADDR_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"pmap_bootstrap: No L2 for L2 @ va %p\0A\00", align 1
@L2_S_CACHE_MASK = common dso_local global i32 0, align 4
@pte_l2_s_cache_mode_pt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64)* @pmap_set_pt_cache_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_set_pt_cache_mode(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @L1_IDX(i64 %12)
  %14 = getelementptr inbounds i32, i32* %11, i64 %13
  store i32* %14, i32** %5, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i64 @l1pte_section_p(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %43

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @L1_S_CACHE_MASK, align 4
  %23 = and i32 %21, %22
  %24 = load i32, i32* @pte_l1_s_cache_mode_pt, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @L1_S_CACHE_MASK, align 4
  %29 = xor i32 %28, -1
  %30 = and i32 %27, %29
  %31 = load i32, i32* @pte_l1_s_cache_mode_pt, align 4
  %32 = or i32 %30, %31
  %33 = load i32*, i32** %5, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @PTE_SYNC(i32* %34)
  %36 = load i32*, i32** %5, align 8
  %37 = ptrtoint i32* %36 to i64
  %38 = call i32 @cpu_dcache_wbinv_range(i64 %37, i32 4)
  %39 = load i32*, i32** %5, align 8
  %40 = ptrtoint i32* %39 to i64
  %41 = call i32 @cpu_l2cache_wbinv_range(i64 %40, i32 4)
  store i32 1, i32* %10, align 4
  br label %42

42:                                               ; preds = %26, %20
  br label %85

43:                                               ; preds = %2
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @L1_C_ADDR_MASK, align 4
  %46 = and i32 %44, %45
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %9, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @kernel_pt_lookup(i64 %48)
  %50 = inttoptr i64 %49 to i32*
  store i32* %50, i32** %7, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32*, i32** %7, align 8
  %55 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32* %54)
  br label %56

56:                                               ; preds = %53, %43
  %57 = load i32*, i32** %7, align 8
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @l2pte_index(i64 %58)
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32* %60, i32** %7, align 8
  %61 = load i32*, i32** %7, align 8
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @L2_S_CACHE_MASK, align 4
  %65 = and i32 %63, %64
  %66 = load i32, i32* @pte_l2_s_cache_mode_pt, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %84

68:                                               ; preds = %56
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @L2_S_CACHE_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = and i32 %69, %71
  %73 = load i32, i32* @pte_l2_s_cache_mode_pt, align 4
  %74 = or i32 %72, %73
  %75 = load i32*, i32** %7, align 8
  store i32 %74, i32* %75, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @PTE_SYNC(i32* %76)
  %78 = load i32*, i32** %7, align 8
  %79 = ptrtoint i32* %78 to i64
  %80 = call i32 @cpu_dcache_wbinv_range(i64 %79, i32 4)
  %81 = load i32*, i32** %7, align 8
  %82 = ptrtoint i32* %81 to i64
  %83 = call i32 @cpu_l2cache_wbinv_range(i64 %82, i32 4)
  store i32 1, i32* %10, align 4
  br label %84

84:                                               ; preds = %68, %56
  br label %85

85:                                               ; preds = %84, %42
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local i64 @L1_IDX(i64) #1

declare dso_local i64 @l1pte_section_p(i32) #1

declare dso_local i32 @PTE_SYNC(i32*) #1

declare dso_local i32 @cpu_dcache_wbinv_range(i64, i32) #1

declare dso_local i32 @cpu_l2cache_wbinv_range(i64, i32) #1

declare dso_local i64 @kernel_pt_lookup(i64) #1

declare dso_local i32 @panic(i8*, i32*) #1

declare dso_local i64 @l2pte_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
