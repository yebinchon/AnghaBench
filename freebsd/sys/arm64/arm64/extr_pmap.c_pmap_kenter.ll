; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_kenter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_kenter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@L3_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"pmap_kenter: Invalid physical address\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"pmap_kenter: Invalid virtual address\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"pmap_kenter: Mapping is not page-sized\00", align 1
@ATTR_DEFAULT = common dso_local global i32 0, align 4
@L3_PAGE = common dso_local global i32 0, align 4
@DEVICE_MEMORY = common dso_local global i32 0, align 4
@ATTR_XN = common dso_local global i32 0, align 4
@ATTR_UXN = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"pmap_kenter: Invalid page entry, va: 0x%lx\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"pmap_kenter: Invalid level %d\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_kenter(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @L3_OFFSET, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @L3_OFFSET, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  %24 = zext i1 %23 to i32
  %25 = call i32 @KASSERT(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @PAGE_MASK, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @KASSERT(i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %32 = load i32, i32* @ATTR_DEFAULT, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @ATTR_IDX(i32 %33)
  %35 = or i32 %32, %34
  %36 = load i32, i32* @L3_PAGE, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* @DEVICE_MEMORY, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %4
  %42 = load i32, i32* @ATTR_XN, align 4
  %43 = load i32, i32* %11, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %11, align 4
  br label %49

45:                                               ; preds = %4
  %46 = load i32, i32* @ATTR_UXN, align 4
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %45, %41
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %12, align 4
  br label %51

51:                                               ; preds = %54, %49
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %98

54:                                               ; preds = %51
  %55 = load i32, i32* @kernel_pmap, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32* @pmap_pde(i32 %55, i32 %56, i32* %13)
  store i32* %57, i32** %9, align 8
  %58 = load i32*, i32** %9, align 8
  %59 = icmp ne i32* %58, null
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = call i32 @KASSERT(i32 %60, i8* %63)
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %65, 2
  %67 = zext i1 %66 to i32
  %68 = load i32, i32* %13, align 4
  %69 = sext i32 %68 to i64
  %70 = inttoptr i64 %69 to i8*
  %71 = call i32 @KASSERT(i32 %67, i8* %70)
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %12, align 4
  %74 = call i32* @pmap_l2_to_l3(i32* %72, i32 %73)
  store i32* %74, i32** %10, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @L3_OFFSET, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = load i32, i32* %11, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @pmap_load_store(i32* %75, i32 %81)
  %83 = load i64, i64* @PAGE_SIZE, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %12, align 4
  %88 = load i64, i64* @PAGE_SIZE, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %88
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %7, align 4
  %93 = load i64, i64* @PAGE_SIZE, align 8
  %94 = load i32, i32* %6, align 4
  %95 = sext i32 %94 to i64
  %96 = sub nsw i64 %95, %93
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %6, align 4
  br label %51

98:                                               ; preds = %51
  %99 = load i32, i32* @kernel_pmap, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @pmap_invalidate_range(i32 %99, i32 %100, i32 %101)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @ATTR_IDX(i32) #1

declare dso_local i32* @pmap_pde(i32, i32, i32*) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i32) #1

declare dso_local i32 @pmap_load_store(i32*, i32) #1

declare dso_local i32 @pmap_invalidate_range(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
