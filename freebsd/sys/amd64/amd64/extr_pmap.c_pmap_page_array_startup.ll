; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_page_array_startup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_page_array_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@vm_page_array_size = common dso_local global i64 0, align 8
@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@first_page = common dso_local global i64 0, align 8
@kernel_pmap = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_A = common dso_local global i32 0, align 4
@X86_PG_M = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Unexpected pde\00", align 1
@NBPDR = common dso_local global i32 0, align 4
@NPDEPG = common dso_local global i32 0, align 4
@PG_PS = common dso_local global i32 0, align 4
@pg_g = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@vm_page_array = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_page_array_startup(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %13 = load i64, i64* %2, align 8
  store i64 %13, i64* @vm_page_array_size, align 8
  %14 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %2, align 8
  %17 = mul i64 %16, 4
  %18 = add i64 %15, %17
  store i64 %18, i64* %8, align 8
  %19 = load i64, i64* %7, align 8
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %110, %1
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %8, align 8
  %23 = icmp slt i64 %21, %22
  br i1 %23, label %24, label %115

24:                                               ; preds = %20
  %25 = load i64, i64* @first_page, align 8
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = sub nsw i64 %26, %27
  %29 = udiv i64 %28, 4
  %30 = add i64 %25, %29
  store i64 %30, i64* %10, align 8
  %31 = load i64, i64* %10, align 8
  %32 = call i32 @ptoa(i64 %31)
  %33 = call i32 @_vm_phys_domain(i32 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* @kernel_pmap, align 4
  %35 = load i64, i64* %6, align 8
  %36 = call i32* @pmap_pdpe(i32 %34, i64 %35)
  store i32* %36, i32** %3, align 8
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @X86_PG_V, align 4
  %40 = and i32 %38, %39
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %62

42:                                               ; preds = %24
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @PAGE_SIZE, align 4
  %45 = call i32 @vm_phys_early_alloc(i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @dump_add_page(i32 %46)
  %48 = load i32, i32* %9, align 4
  %49 = call i64 @PHYS_TO_DMAP(i32 %48)
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @pagezero(i8* %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @X86_PG_V, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @X86_PG_RW, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @X86_PG_A, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @X86_PG_M, align 4
  %60 = or i32 %58, %59
  %61 = load i32*, i32** %3, align 8
  store i32 %60, i32* %61, align 4
  br label %62

62:                                               ; preds = %42, %24
  %63 = load i32*, i32** %3, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32* @pmap_pdpe_to_pde(i32* %63, i64 %64)
  store i32* %65, i32** %4, align 8
  %66 = load i32*, i32** %4, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @X86_PG_V, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %62
  %72 = call i32 @panic(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %71, %62
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* @NBPDR, align 4
  %76 = call i32 @vm_phys_early_alloc(i32 %74, i32 %75)
  store i32 %76, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %88, %73
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* @NPDEPG, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %91

81:                                               ; preds = %77
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* %12, align 4
  %84 = load i32, i32* @PAGE_SIZE, align 4
  %85 = mul nsw i32 %83, %84
  %86 = add nsw i32 %82, %85
  %87 = call i32 @dump_add_page(i32 %86)
  br label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %12, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %12, align 4
  br label %77

91:                                               ; preds = %77
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @X86_PG_V, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @X86_PG_RW, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @X86_PG_A, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @X86_PG_M, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @PG_PS, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @pg_g, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @pg_nx, align 4
  %106 = or i32 %104, %105
  store i32 %106, i32* %5, align 4
  %107 = load i32*, i32** %4, align 8
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @pde_store(i32* %107, i32 %108)
  br label %110

110:                                              ; preds = %91
  %111 = load i32, i32* @NBPDR, align 4
  %112 = sext i32 %111 to i64
  %113 = load i64, i64* %6, align 8
  %114 = add nsw i64 %113, %112
  store i64 %114, i64* %6, align 8
  br label %20

115:                                              ; preds = %20
  %116 = load i64, i64* %7, align 8
  store i64 %116, i64* @vm_page_array, align 8
  ret void
}

declare dso_local i32 @_vm_phys_domain(i32) #1

declare dso_local i32 @ptoa(i64) #1

declare dso_local i32* @pmap_pdpe(i32, i64) #1

declare dso_local i32 @vm_phys_early_alloc(i32, i32) #1

declare dso_local i32 @dump_add_page(i32) #1

declare dso_local i32 @pagezero(i8*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32* @pmap_pdpe_to_pde(i32*, i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @pde_store(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
