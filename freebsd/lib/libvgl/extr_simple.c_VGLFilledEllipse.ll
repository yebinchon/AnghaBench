; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLFilledEllipse.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLFilledEllipse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VGLFilledEllipse(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* %11, align 4
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = mul nsw i32 %26, %27
  %29 = mul nsw i32 %28, 2
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = mul nsw i32 %30, %31
  store i32 %32, i32* %17, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = mul nsw i32 %33, %34
  %36 = mul nsw i32 %35, 2
  store i32 %36, i32* %18, align 4
  %37 = load i32, i32* %17, align 4
  %38 = load i32, i32* %15, align 4
  %39 = load i32, i32* %11, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sub nsw i32 %37, %40
  %42 = load i32, i32* %15, align 4
  %43 = sdiv i32 %42, 4
  %44 = add nsw i32 %41, %43
  store i32 %44, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %11, align 4
  %47 = mul nsw i32 %45, %46
  store i32 %47, i32* %21, align 4
  br label %48

48:                                               ; preds = %71, %6
  %49 = load i32, i32* %20, align 4
  %50 = load i32, i32* %21, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %82

52:                                               ; preds = %48
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* %14, align 4
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %12, align 4
  %59 = call i32 @set2lines(i32* %53, i32 %54, i32 %55, i32 %56, i32 %57, i32 %58)
  %60 = load i32, i32* %19, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %52
  %63 = load i32, i32* %14, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %14, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %21, align 4
  %67 = sub nsw i32 %66, %65
  store i32 %67, i32* %21, align 4
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %19, align 4
  %70 = sub nsw i32 %69, %68
  store i32 %70, i32* %19, align 4
  br label %71

71:                                               ; preds = %62, %52
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %18, align 4
  %75 = load i32, i32* %20, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %20, align 4
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %20, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %19, align 4
  %81 = add nsw i32 %80, %79
  store i32 %81, i32* %19, align 4
  br label %48

82:                                               ; preds = %48
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* %17, align 4
  %85 = sub nsw i32 %83, %84
  %86 = mul nsw i32 3, %85
  %87 = sdiv i32 %86, 2
  %88 = load i32, i32* %20, align 4
  %89 = load i32, i32* %21, align 4
  %90 = add nsw i32 %88, %89
  %91 = sub nsw i32 %87, %90
  %92 = sdiv i32 %91, 2
  %93 = load i32, i32* %19, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %19, align 4
  br label %95

95:                                               ; preds = %117, %82
  %96 = load i32, i32* %14, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %128

98:                                               ; preds = %95
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %9, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @set2lines(i32* %99, i32 %100, i32 %101, i32 %102, i32 %103, i32 %104)
  %106 = load i32, i32* %19, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %98
  %109 = load i32, i32* %13, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %13, align 4
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %20, align 4
  %113 = add nsw i32 %112, %111
  store i32 %113, i32* %20, align 4
  %114 = load i32, i32* %20, align 4
  %115 = load i32, i32* %19, align 4
  %116 = add nsw i32 %115, %114
  store i32 %116, i32* %19, align 4
  br label %117

117:                                              ; preds = %108, %98
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %21, align 4
  %122 = sub nsw i32 %121, %120
  store i32 %122, i32* %21, align 4
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %21, align 4
  %125 = sub nsw i32 %123, %124
  %126 = load i32, i32* %19, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %19, align 4
  br label %95

128:                                              ; preds = %95
  ret void
}

declare dso_local i32 @set2lines(i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
