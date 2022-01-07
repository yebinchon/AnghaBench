; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_pte.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ATTR_DESCR_MASK = common dso_local global i32 0, align 4
@L1_BLOCK = common dso_local global i32 0, align 4
@L1_TABLE = common dso_local global i32 0, align 4
@L2_BLOCK = common dso_local global i32 0, align 4
@L2_TABLE = common dso_local global i32 0, align 4
@L3_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, i32, i32*)* @pmap_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @pmap_pte(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i32* @pmap_l1(i32 %12, i32 %13)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32*, i32** %7, align 8
  store i32 0, i32* %18, align 4
  store i32* null, i32** %4, align 8
  br label %70

19:                                               ; preds = %3
  %20 = load i32*, i32** %8, align 8
  %21 = call i32 @pmap_load(i32* %20)
  %22 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @L1_BLOCK, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32*, i32** %7, align 8
  store i32 1, i32* %28, align 4
  %29 = load i32*, i32** %8, align 8
  store i32* %29, i32** %4, align 8
  br label %70

30:                                               ; preds = %19
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @L1_TABLE, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  store i32 1, i32* %35, align 4
  store i32* null, i32** %4, align 8
  br label %70

36:                                               ; preds = %30
  %37 = load i32*, i32** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32* @pmap_l1_to_l2(i32* %37, i32 %38)
  store i32* %39, i32** %9, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = call i32 @pmap_load(i32* %40)
  %42 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %43 = and i32 %41, %42
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @L2_BLOCK, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %36
  %48 = load i32*, i32** %7, align 8
  store i32 2, i32* %48, align 4
  %49 = load i32*, i32** %9, align 8
  store i32* %49, i32** %4, align 8
  br label %70

50:                                               ; preds = %36
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @L2_TABLE, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32*, i32** %7, align 8
  store i32 2, i32* %55, align 4
  store i32* null, i32** %4, align 8
  br label %70

56:                                               ; preds = %50
  %57 = load i32*, i32** %7, align 8
  store i32 3, i32* %57, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32* @pmap_l2_to_l3(i32* %58, i32 %59)
  store i32* %60, i32** %11, align 8
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @pmap_load(i32* %61)
  %63 = load i32, i32* @ATTR_DESCR_MASK, align 4
  %64 = and i32 %62, %63
  %65 = load i32, i32* @L3_PAGE, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %56
  store i32* null, i32** %4, align 8
  br label %70

68:                                               ; preds = %56
  %69 = load i32*, i32** %11, align 8
  store i32* %69, i32** %4, align 8
  br label %70

70:                                               ; preds = %68, %67, %54, %47, %34, %27, %17
  %71 = load i32*, i32** %4, align 8
  ret i32* %71
}

declare dso_local i32* @pmap_l1(i32, i32) #1

declare dso_local i32 @pmap_load(i32*) #1

declare dso_local i32* @pmap_l1_to_l2(i32*, i32) #1

declare dso_local i32* @pmap_l2_to_l3(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
