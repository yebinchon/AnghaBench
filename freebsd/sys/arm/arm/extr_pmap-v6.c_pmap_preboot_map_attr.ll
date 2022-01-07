; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_preboot_map_attr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_pmap-v6.c_pmap_preboot_map_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_PROT_WRITE = common dso_local global i32 0, align 4
@PTE2_AP_KRW = common dso_local global i64 0, align 8
@PTE2_AP_KR = common dso_local global i64 0, align 8
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@PTE2_X = common dso_local global i64 0, align 8
@PTE2_NX = common dso_local global i64 0, align 8
@PTE1_OFFSET = common dso_local global i32 0, align 4
@PTE1_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_preboot_map_attr(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @VM_PROT_WRITE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %5
  %23 = load i64, i64* @PTE2_AP_KRW, align 8
  br label %26

24:                                               ; preds = %5
  %25 = load i64, i64* @PTE2_AP_KR, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i64 [ %23, %22 ], [ %25, %24 ]
  store i64 %27, i64* %14, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i64, i64* @PTE2_X, align 8
  br label %36

34:                                               ; preds = %26
  %35 = load i64, i64* @PTE2_NX, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i64 [ %33, %32 ], [ %35, %34 ]
  %38 = load i64, i64* %14, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %14, align 8
  %40 = load i32, i32* %10, align 4
  %41 = call i64 @vm_memattr_to_pte2(i32 %40)
  store i64 %41, i64* %15, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call i64 @ATTR_TO_L1(i64 %42)
  store i64 %43, i64* %13, align 8
  %44 = load i64, i64* %15, align 8
  %45 = call i64 @ATTR_TO_L1(i64 %44)
  store i64 %45, i64* %12, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i64 @round_page(i32 %46)
  store i64 %47, i64* %11, align 8
  br label %48

48:                                               ; preds = %106, %36
  %49 = load i64, i64* %11, align 8
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %107

51:                                               ; preds = %48
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @PTE1_OFFSET, align 4
  %56 = and i32 %54, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %84

58:                                               ; preds = %51
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @PTE1_SIZE, align 8
  %61 = icmp sge i64 %59, %60
  br i1 %61, label %62, label %84

62:                                               ; preds = %58
  %63 = load i32, i32* %7, align 4
  %64 = call i32* @kern_pte1(i32 %63)
  store i32* %64, i32** %16, align 8
  %65 = load i32*, i32** %16, align 8
  %66 = load i32, i32* %6, align 4
  %67 = load i64, i64* %13, align 8
  %68 = load i64, i64* %12, align 8
  %69 = call i32 @PTE1_KERN(i32 %66, i64 %67, i64 %68)
  %70 = call i32 @pte1_store(i32* %65, i32 %69)
  %71 = load i64, i64* @PTE1_SIZE, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %71
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %7, align 4
  %76 = load i64, i64* @PTE1_SIZE, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %6, align 4
  %81 = load i64, i64* @PTE1_SIZE, align 8
  %82 = load i64, i64* %11, align 8
  %83 = sub nsw i64 %82, %81
  store i64 %83, i64* %11, align 8
  br label %106

84:                                               ; preds = %58, %51
  %85 = load i32, i32* %7, align 4
  %86 = call i32* @pmap_preboot_vtopte2(i32 %85)
  store i32* %86, i32** %17, align 8
  %87 = load i32*, i32** %17, align 8
  %88 = load i32, i32* %6, align 4
  %89 = load i64, i64* %14, align 8
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @PTE2_KERN(i32 %88, i64 %89, i64 %90)
  %92 = call i32 @pte2_store(i32* %87, i32 %91)
  %93 = load i64, i64* @PAGE_SIZE, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %7, align 4
  %98 = load i64, i64* @PAGE_SIZE, align 8
  %99 = load i32, i32* %6, align 4
  %100 = sext i32 %99 to i64
  %101 = add nsw i64 %100, %98
  %102 = trunc i64 %101 to i32
  store i32 %102, i32* %6, align 4
  %103 = load i64, i64* @PAGE_SIZE, align 8
  %104 = load i64, i64* %11, align 8
  %105 = sub nsw i64 %104, %103
  store i64 %105, i64* %11, align 8
  br label %106

106:                                              ; preds = %84, %62
  br label %48

107:                                              ; preds = %48
  ret void
}

declare dso_local i64 @vm_memattr_to_pte2(i32) #1

declare dso_local i64 @ATTR_TO_L1(i64) #1

declare dso_local i64 @round_page(i32) #1

declare dso_local i32* @kern_pte1(i32) #1

declare dso_local i32 @pte1_store(i32*, i32) #1

declare dso_local i32 @PTE1_KERN(i32, i64, i64) #1

declare dso_local i32* @pmap_preboot_vtopte2(i32) #1

declare dso_local i32 @pte2_store(i32*, i32) #1

declare dso_local i32 @PTE2_KERN(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
