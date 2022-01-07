; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_qenter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_qenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PTE2_AP_KRW = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_qenter(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32* @pt2map_entry(i32 %13)
  store i32* %14, i32** %9, align 8
  %15 = load i32*, i32** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %8, align 8
  br label %19

19:                                               ; preds = %51, %3
  %20 = load i32*, i32** %9, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = icmp ult i32* %20, %21
  br i1 %22, label %23, label %54

23:                                               ; preds = %19
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %5, align 8
  %26 = load i32, i32* %24, align 4
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %11, align 4
  %28 = call i64 @VM_PAGE_TO_PHYS(i32 %27)
  store i64 %28, i64* %12, align 8
  %29 = load i32*, i32** %9, align 8
  %30 = call i32 @pte2_load(i32* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i64 @pte2_pa(i32 %31)
  %33 = load i64, i64* %12, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %23
  %36 = load i32, i32* %10, align 4
  %37 = call i64 @pte2_attr(i32 %36)
  %38 = load i32, i32* %11, align 4
  %39 = call i64 @vm_page_pte2_attr(i32 %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35, %23
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, i64* %7, align 8
  %44 = load i32*, i32** %9, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i32, i32* @PTE2_AP_KRW, align 4
  %47 = load i32, i32* %11, align 4
  %48 = call i64 @vm_page_pte2_attr(i32 %47)
  %49 = call i32 @PTE2_KERN(i64 %45, i32 %46, i64 %48)
  %50 = call i32 @pte2_store(i32* %44, i32 %49)
  br label %51

51:                                               ; preds = %41, %35
  %52 = load i32*, i32** %9, align 8
  %53 = getelementptr inbounds i32, i32* %52, i32 1
  store i32* %53, i32** %9, align 8
  br label %19

54:                                               ; preds = %19
  %55 = load i64, i64* %7, align 8
  %56 = call i64 @__predict_false(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %54
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @PAGE_SIZE, align 4
  %62 = mul nsw i32 %60, %61
  %63 = call i32 @tlb_flush_range(i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %58, %54
  ret void
}

declare dso_local i32* @pt2map_entry(i32) #1

declare dso_local i64 @VM_PAGE_TO_PHYS(i32) #1

declare dso_local i32 @pte2_load(i32*) #1

declare dso_local i64 @pte2_pa(i32) #1

declare dso_local i64 @pte2_attr(i32) #1

declare dso_local i64 @vm_page_pte2_attr(i32) #1

declare dso_local i32 @pte2_store(i32*, i32) #1

declare dso_local i32 @PTE2_KERN(i64, i32, i64) #1

declare dso_local i64 @__predict_false(i64) #1

declare dso_local i32 @tlb_flush_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
