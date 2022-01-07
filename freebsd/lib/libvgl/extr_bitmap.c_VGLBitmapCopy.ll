; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_bitmap.c_VGLBitmapCopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_bitmap.c_VGLBitmapCopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@VGLDisplay = common dso_local global %struct.TYPE_8__* null, align 8
@VGLVDisplay = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@MEMBUF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VGLBitmapCopy(%struct.TYPE_8__* %0, i32 %1, i32 %2, %struct.TYPE_8__* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store %struct.TYPE_8__* %3, %struct.TYPE_8__** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %19 = load i32, i32* %17, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %8
  store i32 -1, i32* %9, align 4
  br label %89

22:                                               ; preds = %8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** @VGLDisplay, align 8
  %25 = icmp eq %struct.TYPE_8__* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  store %struct.TYPE_8__* @VGLVDisplay, %struct.TYPE_8__** %10, align 8
  br label %27

27:                                               ; preds = %26, %22
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MEMBUF, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  store i32 -1, i32* %9, align 4
  br label %89

34:                                               ; preds = %27
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %36 = load %struct.TYPE_8__*, %struct.TYPE_8__** @VGLDisplay, align 8
  %37 = icmp eq %struct.TYPE_8__* %35, %36
  br i1 %37, label %38, label %63

38:                                               ; preds = %34
  %39 = call i32 (...) @VGLMouseFreeze()
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %14, align 4
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* %16, align 4
  %46 = load i32, i32* %17, align 4
  %47 = call i32 @__VGLBitmapCopy(%struct.TYPE_8__* %40, i32 %41, i32 %42, %struct.TYPE_8__* @VGLVDisplay, i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = load i32, i32* %17, align 4
  %55 = call i32 @__VGLBitmapCopy(%struct.TYPE_8__* %48, i32 %49, i32 %50, %struct.TYPE_8__* @VGLVDisplay, i32 %51, i32 %52, i32 %53, i32 %54)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %38
  %59 = load i32, i32* %18, align 4
  store i32 %59, i32* %9, align 4
  br label %89

60:                                               ; preds = %38
  store %struct.TYPE_8__* @VGLVDisplay, %struct.TYPE_8__** %10, align 8
  %61 = load i32, i32* %14, align 4
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %15, align 4
  store i32 %62, i32* %12, align 4
  br label %71

63:                                               ; preds = %34
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MEMBUF, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  store i32 -1, i32* %9, align 4
  br label %89

70:                                               ; preds = %63
  br label %71

71:                                               ; preds = %70, %60
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = load i32, i32* %17, align 4
  %80 = sub nsw i32 0, %79
  %81 = call i32 @__VGLBitmapCopy(%struct.TYPE_8__* %72, i32 %73, i32 %74, %struct.TYPE_8__* %75, i32 %76, i32 %77, i32 %78, i32 %80)
  store i32 %81, i32* %18, align 4
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** @VGLDisplay, align 8
  %84 = icmp eq %struct.TYPE_8__* %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %71
  %86 = call i32 (...) @VGLMouseUnFreeze()
  br label %87

87:                                               ; preds = %85, %71
  %88 = load i32, i32* %18, align 4
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %87, %69, %58, %33, %21
  %90 = load i32, i32* %9, align 4
  ret i32 %90
}

declare dso_local i32 @VGLMouseFreeze(...) #1

declare dso_local i32 @__VGLBitmapCopy(%struct.TYPE_8__*, i32, i32, %struct.TYPE_8__*, i32, i32, i32, i32) #1

declare dso_local i32 @VGLMouseUnFreeze(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
