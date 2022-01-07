; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_ashrdi3.c___ashrdi3.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/quad/extr_ashrdi3.c___ashrdi3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.uu = type { i32* }

@LONG_BITS = common dso_local global i32 0, align 4
@H = common dso_local global i64 0, align 8
@QUAD_BITS = common dso_local global i32 0, align 4
@L = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ashrdi3(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.uu, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %3, align 4
  %8 = bitcast %union.uu* %5 to i32*
  store i32 %7, i32* %8, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @LONG_BITS, align 4
  %11 = icmp sge i32 %9, %10
  br i1 %11, label %12, label %50

12:                                               ; preds = %2
  %13 = bitcast %union.uu* %5 to i32**
  %14 = load i32*, i32** %13, align 8
  %15 = load i64, i64* @H, align 8
  %16 = getelementptr inbounds i32, i32* %14, i64 %15
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @LONG_BITS, align 4
  %19 = sub nsw i32 %18, 1
  %20 = ashr i32 %17, %19
  %21 = ashr i32 %20, 1
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %6, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @QUAD_BITS, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = load i64, i64* %6, align 8
  br label %39

28:                                               ; preds = %12
  %29 = bitcast %union.uu* %5 to i32**
  %30 = load i32*, i32** %29, align 8
  %31 = load i64, i64* @H, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @LONG_BITS, align 4
  %36 = sub nsw i32 %34, %35
  %37 = ashr i32 %33, %36
  %38 = sext i32 %37 to i64
  br label %39

39:                                               ; preds = %28, %26
  %40 = phi i64 [ %27, %26 ], [ %38, %28 ]
  %41 = bitcast %union.uu* %5 to i64**
  %42 = load i64*, i64** %41, align 8
  %43 = load i64, i64* @L, align 8
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  store i64 %40, i64* %44, align 8
  %45 = load i64, i64* %6, align 8
  %46 = bitcast %union.uu* %5 to i64**
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @H, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 %45, i64* %49, align 8
  br label %85

50:                                               ; preds = %2
  %51 = load i32, i32* %4, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %50
  %54 = bitcast %union.uu* %5 to i64**
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* @L, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %4, align 4
  %60 = zext i32 %59 to i64
  %61 = ashr i64 %58, %60
  %62 = bitcast %union.uu* %5 to i64**
  %63 = load i64*, i64** %62, align 8
  %64 = load i64, i64* @H, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @LONG_BITS, align 4
  %68 = load i32, i32* %4, align 4
  %69 = sub nsw i32 %67, %68
  %70 = zext i32 %69 to i64
  %71 = shl i64 %66, %70
  %72 = or i64 %61, %71
  %73 = bitcast %union.uu* %5 to i64**
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @L, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 %72, i64* %76, align 8
  %77 = load i32, i32* %4, align 4
  %78 = bitcast %union.uu* %5 to i32**
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* @H, align 8
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = ashr i32 %82, %77
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %53, %50
  br label %85

85:                                               ; preds = %84, %39
  %86 = bitcast %union.uu* %5 to i32*
  %87 = load i32, i32* %86, align 8
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
