; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_mouse.c___VGLMouseMode.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_mouse.c___VGLMouseMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@VGLMouseShown = common dso_local global i32 0, align 4
@VGL_MOUSESHOW = common dso_local global i32 0, align 4
@VGL_MOUSEHIDE = common dso_local global i32 0, align 4
@VGLVDisplay = common dso_local global i32 0, align 4
@VGLMouseXpos = common dso_local global i32 0, align 4
@VGLMouseYpos = common dso_local global i32 0, align 4
@VGLDisplay = common dso_local global i32 0, align 4
@VGLMouseAndMask = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__VGLMouseMode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 (...) @INTOFF()
  %5 = load i32, i32* @VGLMouseShown, align 4
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @VGL_MOUSESHOW, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %29

9:                                                ; preds = %1
  %10 = load i32, i32* @VGLMouseShown, align 4
  %11 = load i32, i32* @VGL_MOUSEHIDE, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load i32, i32* @VGL_MOUSESHOW, align 4
  store i32 %14, i32* @VGLMouseShown, align 4
  %15 = load i32, i32* @VGLMouseXpos, align 4
  %16 = load i32, i32* @VGLMouseYpos, align 4
  %17 = load i32, i32* @VGLDisplay, align 4
  %18 = load i32, i32* @VGLMouseXpos, align 4
  %19 = load i32, i32* @VGLMouseYpos, align 4
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLMouseAndMask, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLMouseAndMask, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 0, %25
  %27 = call i32 @__VGLBitmapCopy(i32* @VGLVDisplay, i32 %15, i32 %16, i32 %17, i32 %18, i32 %19, i32 %22, i32 %26)
  br label %28

28:                                               ; preds = %13, %9
  br label %48

29:                                               ; preds = %1
  %30 = load i32, i32* @VGLMouseShown, align 4
  %31 = load i32, i32* @VGL_MOUSESHOW, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i32, i32* @VGL_MOUSEHIDE, align 4
  store i32 %34, i32* @VGLMouseShown, align 4
  %35 = load i32, i32* @VGLMouseXpos, align 4
  %36 = load i32, i32* @VGLMouseYpos, align 4
  %37 = load i32, i32* @VGLDisplay, align 4
  %38 = load i32, i32* @VGLMouseXpos, align 4
  %39 = load i32, i32* @VGLMouseYpos, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLMouseAndMask, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLMouseAndMask, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @__VGLBitmapCopy(i32* @VGLVDisplay, i32 %35, i32 %36, i32 %37, i32 %38, i32 %39, i32 %42, i32 %45)
  br label %47

47:                                               ; preds = %33, %29
  br label %48

48:                                               ; preds = %47, %28
  %49 = call i32 (...) @INTON()
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @INTOFF(...) #1

declare dso_local i32 @__VGLBitmapCopy(i32*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @INTON(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
