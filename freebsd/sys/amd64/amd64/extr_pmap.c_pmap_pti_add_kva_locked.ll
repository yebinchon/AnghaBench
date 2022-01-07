; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pti_add_kva_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pti_add_kva_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pti_obj = common dso_local global i32 0, align 4
@VM_MAXUSER_ADDRESS = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@X86_PG_A = common dso_local global i32 0, align 4
@X86_PG_G = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@VM_MEMATTR_DEFAULT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@pti_finalized = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"pti overlap after fin %#lx %#lx %#lx\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"pti non-identical pte after fin %#lx %#lx %#lx\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @pmap_pti_add_kva_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_pti_add_kva_locked(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* @pti_obj, align 4
  %13 = call i32 @VM_OBJECT_ASSERT_WLOCKED(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @trunc_page(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @VM_MAXUSER_ADDRESS, align 4
  %18 = icmp sgt i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @MPASS(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @round_page(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @MPASS(i32 %26)
  br label %28

28:                                               ; preds = %101, %3
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %107

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = call i32* @pmap_pti_pte(i32 %33, i32* %11)
  store i32* %34, i32** %9, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @pmap_kextract(i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @X86_PG_RW, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @X86_PG_V, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @X86_PG_A, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @X86_PG_G, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %51

49:                                               ; preds = %32
  %50 = load i32, i32* @pg_nx, align 4
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ 0, %48 ], [ %50, %49 ]
  %53 = or i32 %45, %52
  %54 = load i32, i32* @kernel_pmap, align 4
  %55 = load i32, i32* @VM_MEMATTR_DEFAULT, align 4
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i32 @pmap_cache_bits(i32 %54, i32 %55, i32 %56)
  %58 = or i32 %53, %57
  store i32 %58, i32* %10, align 4
  %59 = load i32*, i32** %9, align 8
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %51
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @pte_store(i32* %63, i32 %64)
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @pmap_pti_wire_pte(i32* %66)
  br label %92

68:                                               ; preds = %51
  %69 = load i32, i32* @pti_finalized, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = load i32, i32* %4, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %10, align 4
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 @KASSERT(i32 %72, i8* %78)
  %80 = load i32*, i32** %9, align 8
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  %85 = load i32, i32* %4, align 4
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i8*
  %91 = call i32 @KASSERT(i32 %84, i8* %90)
  br label %92

92:                                               ; preds = %68, %62
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %92
  %96 = load i32, i32* %4, align 4
  %97 = call i32* @pmap_pti_pde(i32 %96)
  store i32* %97, i32** %8, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = call i32 @pmap_pti_unwire_pde(i32* %98, i32 1)
  br label %100

100:                                              ; preds = %95, %92
  br label %101

101:                                              ; preds = %100
  %102 = load i64, i64* @PAGE_SIZE, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %102
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %4, align 4
  br label %28

107:                                              ; preds = %28
  ret void
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(i32) #1

declare dso_local i32 @trunc_page(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32* @pmap_pti_pte(i32, i32*) #1

declare dso_local i32 @pmap_kextract(i32) #1

declare dso_local i32 @pmap_cache_bits(i32, i32, i32) #1

declare dso_local i32 @pte_store(i32*, i32) #1

declare dso_local i32 @pmap_pti_wire_pte(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32* @pmap_pti_pde(i32) #1

declare dso_local i32 @pmap_pti_unwire_pde(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
