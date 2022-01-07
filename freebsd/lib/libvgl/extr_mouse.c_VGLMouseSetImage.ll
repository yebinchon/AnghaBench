; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_mouse.c_VGLMouseSetImage.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_mouse.c_VGLMouseSetImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_12__* }

@VGL_MOUSEHIDE = common dso_local global i32 0, align 4
@VGLMouseAndMask = common dso_local global %struct.TYPE_11__* null, align 8
@VGLMouseOrMask = common dso_local global %struct.TYPE_12__* null, align 8
@MEMBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VGLMouseSetImage(%struct.TYPE_11__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %6 = load i32, i32* @VGL_MOUSEHIDE, align 4
  %7 = call i32 @__VGLMouseMode(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** @VGLMouseAndMask, align 8
  %9 = load %struct.TYPE_12__*, %struct.TYPE_12__** @VGLMouseOrMask, align 8
  %10 = icmp ne %struct.TYPE_12__* %9, null
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** @VGLMouseOrMask, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %13, align 8
  %15 = call i32 @free(%struct.TYPE_12__* %14)
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** @VGLMouseOrMask, align 8
  %17 = call i32 @free(%struct.TYPE_12__* %16)
  br label %18

18:                                               ; preds = %11, %2
  %19 = load i32, i32* @MEMBUF, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call %struct.TYPE_12__* @VGLBitmapCreate(i32 %19, i32 %22, i32 %25, i32 0)
  store %struct.TYPE_12__* %26, %struct.TYPE_12__** @VGLMouseOrMask, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** @VGLMouseOrMask, align 8
  %28 = call i32 @VGLBitmapAllocateBits(%struct.TYPE_12__* %27)
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** @VGLMouseOrMask, align 8
  %31 = call i32 @VGLBitmapCvt(%struct.TYPE_11__* %29, %struct.TYPE_12__* %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @__VGLMouseMode(i32 %32)
  ret void
}

declare dso_local i32 @__VGLMouseMode(i32) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local %struct.TYPE_12__* @VGLBitmapCreate(i32, i32, i32, i32) #1

declare dso_local i32 @VGLBitmapAllocateBits(%struct.TYPE_12__*) #1

declare dso_local i32 @VGLBitmapCvt(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
