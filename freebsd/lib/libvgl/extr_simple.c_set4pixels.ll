; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_set4pixels.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_set4pixels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32, i32)* @set4pixels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set4pixels(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %56

15:                                               ; preds = %6
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* %8, align 4
  %19 = add nsw i32 %17, %18
  %20 = load i32, i32* %11, align 4
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %20, %21
  %23 = load i32, i32* %12, align 4
  %24 = call i32 @VGLSetXY(i32* %16, i32 %19, i32 %22, i32 %23)
  %25 = load i32*, i32** %7, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sub nsw i32 %26, %27
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @VGLSetXY(i32* %25, i32 %28, i32 %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %15
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %38, %39
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %9, align 4
  %43 = sub nsw i32 %41, %42
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @VGLSetXY(i32* %37, i32 %40, i32 %43, i32 %44)
  %46 = load i32*, i32** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub nsw i32 %47, %48
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* %9, align 4
  %52 = sub nsw i32 %50, %51
  %53 = load i32, i32* %12, align 4
  %54 = call i32 @VGLSetXY(i32* %46, i32 %49, i32 %52, i32 %53)
  br label %55

55:                                               ; preds = %36, %15
  br label %75

56:                                               ; preds = %6
  %57 = load i32*, i32** %7, align 8
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %9, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %12, align 4
  %63 = call i32 @VGLSetXY(i32* %57, i32 %58, i32 %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %56
  %67 = load i32*, i32** %7, align 8
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %11, align 4
  %70 = load i32, i32* %9, align 4
  %71 = sub nsw i32 %69, %70
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @VGLSetXY(i32* %67, i32 %68, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %66, %56
  br label %75

75:                                               ; preds = %74, %55
  ret void
}

declare dso_local i32 @VGLSetXY(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
