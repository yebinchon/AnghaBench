; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_mouse.c_VGLMouseOverlap.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_mouse.c_VGLMouseOverlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@VGLMouseShown = common dso_local global i64 0, align 8
@VGL_MOUSESHOW = common dso_local global i64 0, align 8
@VGLMouseXpos = common dso_local global i32 0, align 4
@VGLMouseAndMask = common dso_local global %struct.TYPE_2__* null, align 8
@VGLMouseYpos = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VGLMouseOverlap(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* @VGLMouseShown, align 8
  %12 = load i64, i64* @VGL_MOUSESHOW, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %59

15:                                               ; preds = %4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @VGLMouseXpos, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %15
  %20 = load i32, i32* @VGLMouseXpos, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLMouseAndMask, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  br label %33

27:                                               ; preds = %15
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* @VGLMouseXpos, align 4
  %32 = sub nsw i32 %30, %31
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %27, %19
  %34 = load i32, i32* %10, align 4
  %35 = icmp sle i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %59

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @VGLMouseYpos, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* @VGLMouseYpos, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLMouseAndMask, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %42, %45
  %47 = load i32, i32* %7, align 4
  %48 = sub nsw i32 %46, %47
  store i32 %48, i32* %10, align 4
  br label %55

49:                                               ; preds = %37
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* @VGLMouseYpos, align 4
  %54 = sub nsw i32 %52, %53
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %49, %41
  %56 = load i32, i32* %10, align 4
  %57 = icmp sgt i32 %56, 0
  %58 = zext i1 %57 to i32
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %55, %36, %14
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
