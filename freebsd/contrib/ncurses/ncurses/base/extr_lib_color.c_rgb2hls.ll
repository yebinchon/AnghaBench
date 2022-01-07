; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/base/extr_lib_color.c_rgb2hls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ncurses/ncurses/base/extr_lib_color.c_rgb2hls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32*, i32*, i32*)* @rgb2hls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rgb2hls(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %6
  %20 = load i32, i32* %8, align 4
  br label %23

21:                                               ; preds = %6
  %22 = load i32, i32* %7, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %13, align 4
  br label %29

29:                                               ; preds = %27, %23
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %14, align 4
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %44, %45
  %47 = sdiv i32 %46, 20
  %48 = load i32*, i32** %11, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load i32*, i32** %10, align 8
  store i32 0, i32* %53, align 4
  %54 = load i32*, i32** %12, align 8
  store i32 0, i32* %54, align 4
  br label %123

55:                                               ; preds = %43
  %56 = load i32*, i32** %11, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp slt i32 %57, 50
  br i1 %58, label %59, label %69

59:                                               ; preds = %55
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %13, align 4
  %62 = sub nsw i32 %60, %61
  %63 = mul nsw i32 %62, 100
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %13, align 4
  %66 = add nsw i32 %64, %65
  %67 = sdiv i32 %63, %66
  %68 = load i32*, i32** %12, align 8
  store i32 %67, i32* %68, align 4
  br label %80

69:                                               ; preds = %55
  %70 = load i32, i32* %14, align 4
  %71 = load i32, i32* %13, align 4
  %72 = sub nsw i32 %70, %71
  %73 = mul nsw i32 %72, 100
  %74 = load i32, i32* %14, align 4
  %75 = sub nsw i32 2000, %74
  %76 = load i32, i32* %13, align 4
  %77 = sub nsw i32 %75, %76
  %78 = sdiv i32 %73, %77
  %79 = load i32*, i32** %12, align 8
  store i32 %78, i32* %79, align 4
  br label %80

80:                                               ; preds = %69, %59
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %14, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %94

84:                                               ; preds = %80
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* %9, align 4
  %87 = sub nsw i32 %85, %86
  %88 = mul nsw i32 %87, 60
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %13, align 4
  %91 = sub nsw i32 %89, %90
  %92 = sdiv i32 %88, %91
  %93 = add nsw i32 120, %92
  store i32 %93, i32* %15, align 4
  br label %119

94:                                               ; preds = %80
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* %14, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %108

98:                                               ; preds = %94
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* %7, align 4
  %101 = sub nsw i32 %99, %100
  %102 = mul nsw i32 %101, 60
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %13, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sdiv i32 %102, %105
  %107 = add nsw i32 240, %106
  store i32 %107, i32* %15, align 4
  br label %118

108:                                              ; preds = %94
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %8, align 4
  %111 = sub nsw i32 %109, %110
  %112 = mul nsw i32 %111, 60
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %13, align 4
  %115 = sub nsw i32 %113, %114
  %116 = sdiv i32 %112, %115
  %117 = add nsw i32 360, %116
  store i32 %117, i32* %15, align 4
  br label %118

118:                                              ; preds = %108, %98
  br label %119

119:                                              ; preds = %118, %84
  %120 = load i32, i32* %15, align 4
  %121 = srem i32 %120, 360
  %122 = load i32*, i32** %10, align 8
  store i32 %121, i32* %122, align 4
  br label %123

123:                                              ; preds = %119, %52
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
