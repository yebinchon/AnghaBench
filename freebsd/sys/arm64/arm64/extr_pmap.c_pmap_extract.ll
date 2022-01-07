; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_extract.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATTR_MASK = common dso_local global i32 0, align 4
@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L1_BLOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"pmap_extract: Invalid L1 pte found: %lx\00", align 1
@L1_OFFSET = common dso_local global i32 0, align 4
@L2_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"pmap_extract: Invalid L2 pte found: %lx\00", align 1
@L2_OFFSET = common dso_local global i32 0, align 4
@L3_PAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"pmap_extract: Invalid L3 pte found: %lx\00", align 1
@L3_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_extract(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @PMAP_LOCK(i32 %9)
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32* @pmap_pte(i32 %11, i32 %12, i32* %8)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %79

16:                                               ; preds = %2
  %17 = load i32*, i32** %5, align 8
  %18 = call i32 @pmap_load(i32* %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ATTR_MASK, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %78 [
    i32 1, label %24
    i32 2, label %42
    i32 3, label %60
  ]

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @L1_BLOCK, align 4
  %29 = icmp eq i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %33 = and i32 %31, %32
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @KASSERT(i32 %30, i8* %35)
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @L1_OFFSET, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %7, align 4
  br label %78

42:                                               ; preds = %16
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %45 = and i32 %43, %44
  %46 = load i32, i32* @L2_BLOCK, align 4
  %47 = icmp eq i32 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %51 = and i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @KASSERT(i32 %48, i8* %53)
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @L2_OFFSET, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %78

60:                                               ; preds = %16
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %63 = and i32 %61, %62
  %64 = load i32, i32* @L3_PAGE, align 4
  %65 = icmp eq i32 %63, %64
  %66 = zext i1 %65 to i32
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %69 = and i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @KASSERT(i32 %66, i8* %71)
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @L3_OFFSET, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %7, align 4
  br label %78

78:                                               ; preds = %16, %60, %42, %24
  br label %79

79:                                               ; preds = %78, %2
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @PMAP_UNLOCK(i32 %80)
  %82 = load i32, i32* %7, align 4
  ret i32 %82
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32* @pmap_pte(i32, i32, i32*) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
