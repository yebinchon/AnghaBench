; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pti_pdpe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pti_pdpe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pti_obj = common dso_local global i32 0, align 4
@pti_pml4 = common dso_local global i32* null, align 8
@pti_finalized = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"pml4 alloc after finalization\0A\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @pmap_pti_pdpe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_pti_pdpe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @pti_obj, align 4
  %9 = call i32 @VM_OBJECT_ASSERT_WLOCKED(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = call i64 @pmap_pml4e_index(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i32*, i32** @pti_pml4, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  store i32* %14, i32** %3, align 8
  store i32* null, i32** %5, align 8
  %15 = load i32*, i32** %3, align 8
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %1
  %19 = load i64, i64* @pti_finalized, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = call i32* (...) @pmap_pti_alloc_page()
  store i32* %24, i32** %5, align 8
  %25 = load i32*, i32** %3, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i32*, i32** %5, align 8
  %30 = call i32 @pmap_pti_free_page(i32* %29)
  %31 = load i32*, i32** %3, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PAGE_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  store i32 %35, i32* %7, align 4
  br label %45

36:                                               ; preds = %23
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @VM_PAGE_TO_PHYS(i32* %37)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @X86_PG_RW, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @X86_PG_V, align 4
  %43 = or i32 %41, %42
  %44 = load i32*, i32** %3, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %36, %28
  br label %52

46:                                               ; preds = %1
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @PAGE_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = and i32 %48, %50
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %46, %45
  %53 = load i32, i32* %7, align 4
  %54 = call i64 @PHYS_TO_DMAP(i32 %53)
  %55 = inttoptr i64 %54 to i32*
  %56 = load i32, i32* %2, align 4
  %57 = call i32 @pmap_pdpe_index(i32 %56)
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32* %59, i32** %4, align 8
  %60 = load i32*, i32** %4, align 8
  ret i32* %60
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(i32) #1

declare dso_local i64 @pmap_pml4e_index(i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32* @pmap_pti_alloc_page(...) #1

declare dso_local i32 @pmap_pti_free_page(i32*) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32*) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @pmap_pdpe_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
