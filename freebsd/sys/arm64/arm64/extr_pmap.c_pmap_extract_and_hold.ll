; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_extract_and_hold.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_extract_and_hold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"pmap_extract_and_hold: Invalid level %d\00", align 1
@L1_BLOCK = common dso_local global i32 0, align 4
@L2_BLOCK = common dso_local global i32 0, align 4
@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L3_PAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"pmap_extract_and_hold: Invalid pte at L%d: %lx\00", align 1
@ATTR_AP_RW_BIT = common dso_local global i32 0, align 4
@ATTR_AP_RW = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@L1_OFFSET = common dso_local global i32 0, align 4
@L2_OFFSET = common dso_local global i32 0, align 4
@ATTR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @pmap_extract_and_hold(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32* null, i32** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @PMAP_LOCK(i32 %12)
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32* @pmap_pte(i32 %14, i32 %15, i32* %11)
  store i32* %16, i32** %7, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %105

19:                                               ; preds = %3
  %20 = load i32*, i32** %7, align 8
  %21 = call i32 @pmap_load(i32* %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %11, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %11, align 4
  %26 = icmp sle i32 %25, 3
  br label %27

27:                                               ; preds = %24, %19
  %28 = phi i1 [ false, %19 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @KASSERT(i32 %29, i8* %32)
  %34 = load i32, i32* @L1_BLOCK, align 4
  %35 = load i32, i32* @L2_BLOCK, align 4
  %36 = icmp eq i32 %34, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @CTASSERT(i32 %37)
  %39 = load i32, i32* %11, align 4
  %40 = icmp eq i32 %39, 3
  br i1 %40, label %41, label %47

41:                                               ; preds = %27
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @L3_PAGE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %58, label %47

47:                                               ; preds = %41, %27
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %48, 3
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %53 = and i32 %51, %52
  %54 = load i32, i32* @L1_BLOCK, align 4
  %55 = icmp eq i32 %53, %54
  br label %56

56:                                               ; preds = %50, %47
  %57 = phi i1 [ false, %47 ], [ %55, %50 ]
  br label %58

58:                                               ; preds = %56, %41
  %59 = phi i1 [ true, %41 ], [ %57, %56 ]
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %64 = and i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @KASSERT(i32 %60, i8* %66)
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @ATTR_AP_RW_BIT, align 4
  %70 = and i32 %68, %69
  %71 = load i32, i32* @ATTR_AP_RW, align 4
  %72 = call i32 @ATTR_AP(i32 %71)
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %79, label %74

74:                                               ; preds = %58
  %75 = load i32, i32* %6, align 4
  %76 = load i32, i32* @VM_PROT_WRITE, align 4
  %77 = and i32 %75, %76
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %104

79:                                               ; preds = %74, %58
  %80 = load i32, i32* %11, align 4
  switch i32 %80, label %90 [
    i32 1, label %81
    i32 2, label %85
    i32 3, label %89
  ]

81:                                               ; preds = %79
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @L1_OFFSET, align 4
  %84 = and i32 %82, %83
  store i32 %84, i32* %9, align 4
  br label %91

85:                                               ; preds = %79
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @L2_OFFSET, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %9, align 4
  br label %91

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %79, %89
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %90, %85, %81
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* @ATTR_MASK, align 4
  %94 = xor i32 %93, -1
  %95 = and i32 %92, %94
  %96 = load i32, i32* %9, align 4
  %97 = or i32 %95, %96
  %98 = call i32* @PHYS_TO_VM_PAGE(i32 %97)
  store i32* %98, i32** %10, align 8
  %99 = load i32*, i32** %10, align 8
  %100 = call i32 @vm_page_wire_mapped(i32* %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %91
  store i32* null, i32** %10, align 8
  br label %103

103:                                              ; preds = %102, %91
  br label %104

104:                                              ; preds = %103, %74
  br label %105

105:                                              ; preds = %104, %3
  %106 = load i32, i32* %4, align 4
  %107 = call i32 @PMAP_UNLOCK(i32 %106)
  %108 = load i32*, i32** %10, align 8
  ret i32* %108
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap_pte(i32, i32, i32*) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @CTASSERT(i32) #1

declare dso_local i32 @ATTR_AP(i32) #1

declare dso_local i32* @PHYS_TO_VM_PAGE(i32) #1

declare dso_local i32 @vm_page_wire_mapped(i32*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
