; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pti_pde.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pti_pde.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pti_obj = common dso_local global i32 0, align 4
@X86_PG_PS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @pmap_pti_pde to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_pti_pde(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* @pti_obj, align 4
  %9 = call i32 @VM_OBJECT_ASSERT_WLOCKED(i32 %8)
  %10 = load i32, i32* %2, align 4
  %11 = call i32* @pmap_pti_pdpe(i32 %10)
  store i32* %11, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %45

15:                                               ; preds = %1
  %16 = call i32 (...) @pmap_pti_alloc_page()
  store i32 %16, i32* %5, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %35

20:                                               ; preds = %15
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @pmap_pti_free_page(i32 %21)
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @X86_PG_PS, align 4
  %26 = and i32 %24, %25
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i32 @MPASS(i32 %28)
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @PAGE_MASK, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  store i32 %34, i32* %7, align 4
  br label %44

35:                                               ; preds = %15
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @VM_PAGE_TO_PHYS(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @X86_PG_RW, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @X86_PG_V, align 4
  %42 = or i32 %40, %41
  %43 = load i32*, i32** %3, align 8
  store i32 %42, i32* %43, align 4
  br label %44

44:                                               ; preds = %35, %20
  br label %58

45:                                               ; preds = %1
  %46 = load i32*, i32** %3, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @X86_PG_PS, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @MPASS(i32 %51)
  %53 = load i32*, i32** %3, align 8
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PAGE_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %45, %44
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @PHYS_TO_DMAP(i32 %59)
  %61 = inttoptr i64 %60 to i32*
  store i32* %61, i32** %4, align 8
  %62 = load i32, i32* %2, align 4
  %63 = call i32 @pmap_pde_index(i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** %4, align 8
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %65, i64 %66
  store i32* %67, i32** %4, align 8
  %68 = load i32*, i32** %4, align 8
  ret i32* %68
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(i32) #1

declare dso_local i32* @pmap_pti_pdpe(i32) #1

declare dso_local i32 @pmap_pti_alloc_page(...) #1

declare dso_local i32 @pmap_pti_free_page(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @pmap_pde_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
