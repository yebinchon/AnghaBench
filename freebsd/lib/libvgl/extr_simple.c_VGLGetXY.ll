; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLGetXY.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLGetXY.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64, i32, i32* }

@VGLDisplay = common dso_local global %struct.TYPE_5__* null, align 8
@VGLVDisplay = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@MEMBUF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VGLGetXY(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 (...) @VGLCheckSwitch()
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %28, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sge i32 %14, %17
  br i1 %18, label %28, label %19

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %19, %13, %3
  store i32 0, i32* %4, align 4
  br label %101

29:                                               ; preds = %22
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** @VGLDisplay, align 8
  %32 = icmp eq %struct.TYPE_5__* %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store %struct.TYPE_5__* @VGLVDisplay, %struct.TYPE_5__** %5, align 8
  br label %42

34:                                               ; preds = %29
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MEMBUF, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %101

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %33
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = mul nsw i32 %43, %46
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %47, %48
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = mul nsw i32 %49, %52
  store i32 %53, i32* %9, align 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  switch i32 %56, label %100 [
    i32 1, label %57
    i32 2, label %68
    i32 3, label %79
    i32 4, label %90
  ]

57:                                               ; preds = %42
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = call i32 @memcpy(i32* %8, i32* %63, i32 1)
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @le32toh(i32 %65)
  %67 = and i32 %66, 255
  store i32 %67, i32* %4, align 4
  br label %101

68:                                               ; preds = %42
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = call i32 @memcpy(i32* %8, i32* %74, i32 2)
  %76 = load i32, i32* %8, align 4
  %77 = call i32 @le32toh(i32 %76)
  %78 = and i32 %77, 65535
  store i32 %78, i32* %4, align 4
  br label %101

79:                                               ; preds = %42
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = call i32 @memcpy(i32* %8, i32* %85, i32 3)
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @le32toh(i32 %87)
  %89 = and i32 %88, 16777215
  store i32 %89, i32* %4, align 4
  br label %101

90:                                               ; preds = %42
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = call i32 @memcpy(i32* %8, i32* %96, i32 4)
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @le32toh(i32 %98)
  store i32 %99, i32* %4, align 4
  br label %101

100:                                              ; preds = %42
  store i32 0, i32* %4, align 4
  br label %101

101:                                              ; preds = %100, %90, %79, %68, %57, %40, %28
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

declare dso_local i32 @VGLCheckSwitch(...) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @le32toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
