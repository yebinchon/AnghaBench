; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pti_remove_kva.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_pti_remove_kva.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@pti = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_MAXUSER_ADDRESS = common dso_local global i64 0, align 8
@pti_obj = common dso_local global i32 0, align 4
@X86_PG_V = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"invalid pte va %#lx pte %#lx pt %#lx\00", align 1
@kernel_pmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_pti_remove_kva(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i32, i32* @pti, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %67

10:                                               ; preds = %2
  %11 = load i64, i64* %3, align 8
  %12 = load i64, i64* @PAGE_SIZE, align 8
  %13 = call i64 @rounddown2(i64 %11, i64 %12)
  store i64 %13, i64* %3, align 8
  %14 = load i64, i64* %3, align 8
  %15 = load i64, i64* @VM_MAXUSER_ADDRESS, align 8
  %16 = icmp sgt i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @MPASS(i32 %17)
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @PAGE_SIZE, align 8
  %21 = call i64 @roundup2(i64 %19, i64 %20)
  store i64 %21, i64* %4, align 8
  %22 = load i64, i64* %3, align 8
  %23 = load i64, i64* %4, align 8
  %24 = icmp slt i64 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @MPASS(i32 %25)
  %27 = load i32, i32* @pti_obj, align 4
  %28 = call i32 @VM_OBJECT_WLOCK(i32 %27)
  %29 = load i64, i64* %3, align 8
  store i64 %29, i64* %6, align 8
  br label %30

30:                                               ; preds = %56, %10
  %31 = load i64, i64* %6, align 8
  %32 = load i64, i64* %4, align 8
  %33 = icmp slt i64 %31, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load i64, i64* %6, align 8
  %36 = call i32* @pmap_pti_pte(i64 %35, i32* null)
  store i32* %36, i32** %5, align 8
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @X86_PG_V, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i32
  %43 = load i64, i64* %6, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = ptrtoint i32* %44 to i32
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 @KASSERT(i32 %42, i8* %49)
  %51 = load i32*, i32** %5, align 8
  %52 = call i32 @pte_clear(i32* %51)
  %53 = load i32*, i32** %5, align 8
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @pmap_pti_unwire_pte(i32* %53, i64 %54)
  br label %56

56:                                               ; preds = %34
  %57 = load i64, i64* @PAGE_SIZE, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %6, align 8
  br label %30

60:                                               ; preds = %30
  %61 = load i32, i32* @kernel_pmap, align 4
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @pmap_invalidate_range(i32 %61, i64 %62, i64 %63)
  %65 = load i32, i32* @pti_obj, align 4
  %66 = call i32 @VM_OBJECT_WUNLOCK(i32 %65)
  br label %67

67:                                               ; preds = %60, %9
  ret void
}

declare dso_local i64 @rounddown2(i64, i64) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @roundup2(i64, i64) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32* @pmap_pti_pte(i64, i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pte_clear(i32*) #1

declare dso_local i32 @pmap_pti_unwire_pte(i32*, i64) #1

declare dso_local i32 @pmap_invalidate_range(i32, i64, i64) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
