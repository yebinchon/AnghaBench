; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_large_map_wb_large.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_large_map_wb_large.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@amd_feature = common dso_local global i32 0, align 4
@AMDID_PAGE1GB = common dso_local global i32 0, align 4
@X86_PG_PS = common dso_local global i32 0, align 4
@NBPDP = common dso_local global i64 0, align 8
@NBPDR = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@X86_PG_AVAIL1 = common dso_local global i32 0, align 4
@X86_PG_M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64)* @pmap_large_map_wb_large to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_large_map_wb_large(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i64, i64* %3, align 8
  store i64 %10, i64* %7, align 8
  br label %11

11:                                               ; preds = %98, %2
  %12 = load i64, i64* %7, align 8
  %13 = load i64, i64* %4, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %102

15:                                               ; preds = %11
  store i64 0, i64* %8, align 8
  %16 = load i32, i32* @amd_feature, align 4
  %17 = load i32, i32* @AMDID_PAGE1GB, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %15
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @pmap_large_map_pdpe(i64 %21)
  %23 = inttoptr i64 %22 to i32*
  store i32* %23, i32** %5, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load volatile i32, i32* %24, align 4
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @X86_PG_PS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = load i64, i64* @NBPDP, align 8
  store i64 %31, i64* %8, align 8
  br label %32

32:                                               ; preds = %30, %20
  br label %33

33:                                               ; preds = %32, %15
  %34 = load i64, i64* %8, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @pmap_large_map_pde(i64 %37)
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %5, align 8
  %40 = load i32*, i32** %5, align 8
  %41 = load volatile i32, i32* %40, align 4
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @X86_PG_PS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %36
  %47 = load i64, i64* @NBPDR, align 8
  store i64 %47, i64* %8, align 8
  br label %48

48:                                               ; preds = %46, %36
  br label %49

49:                                               ; preds = %48, %33
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i64, i64* %7, align 8
  %54 = call i64 @pmap_large_map_pte(i64 %53)
  %55 = inttoptr i64 %54 to i32*
  store i32* %55, i32** %5, align 8
  %56 = load i32*, i32** %5, align 8
  %57 = load volatile i32, i32* %56, align 4
  store i32 %57, i32* %6, align 4
  %58 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %58, i64* %8, align 8
  br label %59

59:                                               ; preds = %52, %49
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %87, %65, %59
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @X86_PG_AVAIL1, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = call i32 (...) @cpu_spinwait()
  %67 = load i32*, i32** %5, align 8
  %68 = load volatile i32, i32* %67, align 4
  store i32 %68, i32* %6, align 4
  store i32 1, i32* %9, align 4
  br label %60

69:                                               ; preds = %60
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @X86_PG_M, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* %9, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %74, %69
  %78 = load i32*, i32** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @X86_PG_M, align 4
  %81 = xor i32 %80, -1
  %82 = and i32 %79, %81
  %83 = load i32, i32* @X86_PG_AVAIL1, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @atomic_fcmpset_long(i32* %78, i32* %6, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %77
  br label %60

88:                                               ; preds = %77
  %89 = load i64, i64* %7, align 8
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @pmap_large_map_flush_range(i64 %89, i64 %90)
  %92 = load i32*, i32** %5, align 8
  %93 = load i32, i32* @X86_PG_AVAIL1, align 4
  %94 = call i32 @atomic_clear_long(i32* %92, i32 %93)
  br label %95

95:                                               ; preds = %88, %74
  br label %96

96:                                               ; preds = %95
  %97 = call i32 (...) @maybe_yield()
  br label %98

98:                                               ; preds = %96
  %99 = load i64, i64* %8, align 8
  %100 = load i64, i64* %7, align 8
  %101 = add nsw i64 %100, %99
  store i64 %101, i64* %7, align 8
  br label %11

102:                                              ; preds = %11
  ret void
}

declare dso_local i64 @pmap_large_map_pdpe(i64) #1

declare dso_local i64 @pmap_large_map_pde(i64) #1

declare dso_local i64 @pmap_large_map_pte(i64) #1

declare dso_local i32 @cpu_spinwait(...) #1

declare dso_local i32 @atomic_fcmpset_long(i32*, i32*, i32) #1

declare dso_local i32 @pmap_large_map_flush_range(i64, i64) #1

declare dso_local i32 @atomic_clear_long(i32*, i32) #1

declare dso_local i32 @maybe_yield(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
