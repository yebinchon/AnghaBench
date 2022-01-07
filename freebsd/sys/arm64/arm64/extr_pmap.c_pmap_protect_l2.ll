; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_protect_l2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_protect_l2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MA_OWNED = common dso_local global i32 0, align 4
@L2_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"pmap_protect_l2: sva is not 2mpage aligned\00", align 1
@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L2_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"pmap_protect_l2: L2e %lx is not a block mapping\00", align 1
@ATTR_SW_MANAGED = common dso_local global i32 0, align 4
@ATTR_AP_RO = common dso_local global i32 0, align 4
@ATTR_MASK = common dso_local global i32 0, align 4
@L2_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32, i32, i32)* @pmap_protect_l2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_protect_l2(i32 %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @MA_OWNED, align 4
  %16 = call i32 @PMAP_LOCK_ASSERT(i32 %14, i32 %15)
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @L2_OFFSET, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i32 @KASSERT(i32 %21, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %23 = load i32*, i32** %7, align 8
  %24 = call i32 @pmap_load(i32* %23)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @L2_BLOCK, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %11, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = call i32 @KASSERT(i32 %30, i8* %33)
  br label %35

35:                                               ; preds = %89, %5
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %36, %37
  %39 = load i32, i32* %10, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %94

42:                                               ; preds = %35
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @ATTR_SW_MANAGED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %79

47:                                               ; preds = %42
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @ATTR_AP_RO, align 4
  %50 = call i32 @ATTR_AP(i32 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %79

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  %55 = call i64 @pmap_pte_dirty(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %79

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @ATTR_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32* @PHYS_TO_VM_PAGE(i32 %61)
  store i32* %62, i32** %12, align 8
  %63 = load i32*, i32** %12, align 8
  store i32* %63, i32** %13, align 8
  br label %64

64:                                               ; preds = %75, %57
  %65 = load i32*, i32** %13, align 8
  %66 = load i32*, i32** %12, align 8
  %67 = load i64, i64* @L2_SIZE, align 8
  %68 = load i64, i64* @PAGE_SIZE, align 8
  %69 = udiv i64 %67, %68
  %70 = getelementptr inbounds i32, i32* %66, i64 %69
  %71 = icmp ult i32* %65, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %64
  %73 = load i32*, i32** %13, align 8
  %74 = call i32 @vm_page_dirty(i32* %73)
  br label %75

75:                                               ; preds = %72
  %76 = load i32*, i32** %13, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 1
  store i32* %77, i32** %13, align 8
  br label %64

78:                                               ; preds = %64
  br label %79

79:                                               ; preds = %78, %53, %47, %42
  %80 = load i32*, i32** %7, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %9, align 4
  %83 = xor i32 %82, -1
  %84 = and i32 %81, %83
  %85 = load i32, i32* %10, align 4
  %86 = or i32 %84, %85
  %87 = call i32 @atomic_fcmpset_64(i32* %80, i32* %11, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %90, label %89

89:                                               ; preds = %79
  br label %35

90:                                               ; preds = %79
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @pmap_invalidate_page(i32 %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %41
  ret void
}

declare dso_local i32 @PMAP_LOCK_ASSERT(i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32 @ATTR_AP(i32) #1

declare dso_local i64 @pmap_pte_dirty(i32) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_dirty(i32*) #1

declare dso_local i32 @atomic_fcmpset_64(i32*, i32*, i32) #1

declare dso_local i32 @pmap_invalidate_page(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
