; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_efirt_machdep.c_efi_1t1_pte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_efirt_machdep.c_efi_1t1_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@efi_pml4 = common dso_local global i32* null, align 8
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"va %#jx *pt %#jx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i32)* @efi_1t1_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @efi_1t1_pte(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @pmap_pml4e_index(i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i32*, i32** @efi_pml4, align 8
  %15 = load i64, i64* %8, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = call i32 (...) @efi_1t1_page()
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @VM_PAGE_TO_PHYS(i32 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* @X86_PG_RW, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @X86_PG_V, align 4
  %28 = or i32 %26, %27
  %29 = load i32*, i32** %3, align 8
  store i32 %28, i32* %29, align 4
  br label %36

30:                                               ; preds = %1
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PAGE_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %30, %20
  %37 = load i32, i32* %11, align 4
  %38 = call i64 @PHYS_TO_DMAP(i32 %37)
  %39 = inttoptr i64 %38 to i32*
  store i32* %39, i32** %4, align 8
  %40 = load i32, i32* %2, align 4
  %41 = call i64 @pmap_pdpe_index(i32 %40)
  store i64 %41, i64* %9, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 %42
  store i32* %44, i32** %4, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* %45, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %36
  %49 = call i32 (...) @efi_1t1_page()
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @VM_PAGE_TO_PHYS(i32 %50)
  store i32 %51, i32* %11, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @X86_PG_RW, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @X86_PG_V, align 4
  %56 = or i32 %54, %55
  %57 = load i32*, i32** %4, align 8
  store i32 %56, i32* %57, align 4
  br label %64

58:                                               ; preds = %36
  %59 = load i32*, i32** %4, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @PAGE_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  store i32 %63, i32* %11, align 4
  br label %64

64:                                               ; preds = %58, %48
  %65 = load i32, i32* %11, align 4
  %66 = call i64 @PHYS_TO_DMAP(i32 %65)
  %67 = inttoptr i64 %66 to i32*
  store i32* %67, i32** %5, align 8
  %68 = load i32, i32* %2, align 4
  %69 = call i64 @pmap_pde_index(i32 %68)
  store i64 %69, i64* %10, align 8
  %70 = load i64, i64* %10, align 8
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 %70
  store i32* %72, i32** %5, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %64
  %77 = call i32 (...) @efi_1t1_page()
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @VM_PAGE_TO_PHYS(i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* @X86_PG_RW, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @X86_PG_V, align 4
  %84 = or i32 %82, %83
  %85 = load i32*, i32** %5, align 8
  store i32 %84, i32* %85, align 4
  br label %92

86:                                               ; preds = %64
  %87 = load i32*, i32** %5, align 8
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @PAGE_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %86, %76
  %93 = load i32, i32* %11, align 4
  %94 = call i64 @PHYS_TO_DMAP(i32 %93)
  %95 = inttoptr i64 %94 to i64*
  store i64* %95, i64** %6, align 8
  %96 = load i32, i32* %2, align 4
  %97 = call i32 @pmap_pte_index(i32 %96)
  %98 = load i64*, i64** %6, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i64, i64* %98, i64 %99
  store i64* %100, i64** %6, align 8
  %101 = load i64*, i64** %6, align 8
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %102, 0
  %104 = zext i1 %103 to i32
  %105 = load i32, i32* %2, align 4
  %106 = load i64*, i64** %6, align 8
  %107 = load i64, i64* %106, align 8
  %108 = inttoptr i64 %107 to i8*
  %109 = call i32 @KASSERT(i32 %104, i8* %108)
  %110 = load i64*, i64** %6, align 8
  ret i64* %110
}

declare dso_local i64 @pmap_pml4e_index(i32) #1

declare dso_local i32 @efi_1t1_page(...) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i64 @pmap_pdpe_index(i32) #1

declare dso_local i64 @pmap_pde_index(i32) #1

declare dso_local i32 @pmap_pte_index(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
