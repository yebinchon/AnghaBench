; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_kextract.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_pmap.c_pmap_kextract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMAP_MIN_ADDRESS = common dso_local global i32 0, align 4
@DMAP_MAX_ADDRESS = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@ATTR_DESCR_TYPE_MASK = common dso_local global i32 0, align 4
@ATTR_DESCR_TYPE_BLOCK = common dso_local global i32 0, align 4
@ATTR_MASK = common dso_local global i32 0, align 4
@L1_OFFSET = common dso_local global i32 0, align 4
@L2_OFFSET = common dso_local global i32 0, align 4
@L3_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_kextract(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @DMAP_MIN_ADDRESS, align 4
  %8 = icmp sge i32 %6, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @DMAP_MAX_ADDRESS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @DMAP_TO_PHYS(i32 %14)
  store i32 %15, i32* %2, align 4
  br label %84

16:                                               ; preds = %9, %1
  %17 = load i32, i32* @kernel_pmap, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32* @pmap_l1(i32 %17, i32 %18)
  store i32* %19, i32** %4, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %84

23:                                               ; preds = %16
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @pmap_load(i32* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %84

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ATTR_DESCR_TYPE_MASK, align 4
  %32 = and i32 %30, %31
  %33 = load i32, i32* @ATTR_DESCR_TYPE_BLOCK, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ATTR_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = and i32 %36, %38
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @L1_OFFSET, align 4
  %42 = and i32 %40, %41
  %43 = or i32 %39, %42
  store i32 %43, i32* %2, align 4
  br label %84

44:                                               ; preds = %29
  %45 = load i32, i32* %3, align 4
  %46 = call i32* @pmap_l1_to_l2(i32* %5, i32 %45)
  store i32* %46, i32** %4, align 8
  %47 = load i32*, i32** %4, align 8
  %48 = call i32 @pmap_load(i32* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %84

52:                                               ; preds = %44
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @ATTR_DESCR_TYPE_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @ATTR_DESCR_TYPE_BLOCK, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %52
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @ATTR_MASK, align 4
  %61 = xor i32 %60, -1
  %62 = and i32 %59, %61
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @L2_OFFSET, align 4
  %65 = and i32 %63, %64
  %66 = or i32 %62, %65
  store i32 %66, i32* %2, align 4
  br label %84

67:                                               ; preds = %52
  %68 = load i32, i32* %3, align 4
  %69 = call i32* @pmap_l2_to_l3(i32* %5, i32 %68)
  store i32* %69, i32** %4, align 8
  %70 = load i32*, i32** %4, align 8
  %71 = call i32 @pmap_load(i32* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %84

75:                                               ; preds = %67
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* @ATTR_MASK, align 4
  %78 = xor i32 %77, -1
  %79 = and i32 %76, %78
  %80 = load i32, i32* %3, align 4
  %81 = load i32, i32* @L3_OFFSET, align 4
  %82 = and i32 %80, %81
  %83 = or i32 %79, %82
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %75, %74, %58, %51, %35, %28, %22, %13
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local i32 @DMAP_TO_PHYS(i32) #1

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
