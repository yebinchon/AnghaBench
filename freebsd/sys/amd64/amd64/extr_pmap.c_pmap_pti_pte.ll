; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pti_pte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pti_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pti_obj = common dso_local global i32 0, align 4
@X86_PG_PS = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@pg_nx = common dso_local global i32 0, align 4
@X86_PG_RW = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32*)* @pmap_pti_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_pti_pte(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32* %1, i32** %4, align 8
  %9 = load i32, i32* @pti_obj, align 4
  %10 = call i32 @VM_OBJECT_ASSERT_WLOCKED(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = call i32* @pmap_pti_pde(i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  store i32 1, i32* %16, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @pmap_pti_wire_pte(i32* %17)
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i32*, i32** %5, align 8
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %60

23:                                               ; preds = %19
  %24 = call i32 (...) @pmap_pti_alloc_page()
  store i32 %24, i32* %7, align 4
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %45

28:                                               ; preds = %23
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @pmap_pti_free_page(i32 %29)
  %31 = load i32*, i32** %5, align 8
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @X86_PG_PS, align 4
  %34 = and i32 %32, %33
  %35 = icmp eq i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @MPASS(i32 %36)
  %38 = load i32*, i32** %5, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @PAGE_MASK, align 4
  %41 = load i32, i32* @pg_nx, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = and i32 %39, %43
  store i32 %44, i32* %8, align 4
  br label %59

45:                                               ; preds = %23
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @VM_PAGE_TO_PHYS(i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @X86_PG_RW, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @X86_PG_V, align 4
  %52 = or i32 %50, %51
  %53 = load i32*, i32** %5, align 8
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %45
  %57 = load i32*, i32** %4, align 8
  store i32 0, i32* %57, align 4
  br label %58

58:                                               ; preds = %56, %45
  br label %59

59:                                               ; preds = %58, %28
  br label %75

60:                                               ; preds = %19
  %61 = load i32*, i32** %5, align 8
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @X86_PG_PS, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = call i32 @MPASS(i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PAGE_MASK, align 4
  %71 = load i32, i32* @pg_nx, align 4
  %72 = or i32 %70, %71
  %73 = xor i32 %72, -1
  %74 = and i32 %69, %73
  store i32 %74, i32* %8, align 4
  br label %75

75:                                               ; preds = %60, %59
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @PHYS_TO_DMAP(i32 %76)
  %78 = inttoptr i64 %77 to i32*
  store i32* %78, i32** %6, align 8
  %79 = load i32, i32* %3, align 4
  %80 = call i32 @pmap_pte_index(i32 %79)
  %81 = load i32*, i32** %6, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  store i32* %83, i32** %6, align 8
  %84 = load i32*, i32** %6, align 8
  ret i32* %84
}

declare dso_local i32 @VM_OBJECT_ASSERT_WLOCKED(i32) #1

declare dso_local i32* @pmap_pti_pde(i32) #1

declare dso_local i32 @pmap_pti_wire_pte(i32*) #1

declare dso_local i32 @pmap_pti_alloc_page(...) #1

declare dso_local i32 @pmap_pti_free_page(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i64 @PHYS_TO_DMAP(i32) #1

declare dso_local i32 @pmap_pte_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
