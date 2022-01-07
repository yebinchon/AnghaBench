; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_text.c_VGLBitmapString.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_text.c_VGLBitmapString.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@VGLTextFont = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VGLBitmapString(i32* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %132, %8
  %19 = load i32, i32* %17, align 4
  %20 = load i8*, i8** %12, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %135

23:                                               ; preds = %18
  %24 = load i32, i32* %16, align 4
  switch i32 %24, label %131 [
    i32 0, label %25
    i32 1, label %45
    i32 2, label %65
    i32 3, label %85
    i32 4, label %105
  ]

25:                                               ; preds = %23
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* %17, align 4
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLTextFont, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = add nsw i32 %27, %32
  %34 = load i32, i32* %11, align 4
  %35 = load i8*, i8** %12, align 8
  %36 = load i32, i32* %17, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, i8* %35, i64 %37
  %39 = load i8, i8* %38, align 1
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* %16, align 4
  %44 = call i32 @VGLBitmapPutChar(i32* %26, i32 %33, i32 %34, i8 signext %39, i32 %40, i32 %41, i32 %42, i32 %43)
  br label %131

45:                                               ; preds = %23
  %46 = load i32*, i32** %9, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %17, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLTextFont, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = sub nsw i32 %48, %53
  %55 = load i8*, i8** %12, align 8
  %56 = load i32, i32* %17, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = load i8, i8* %58, align 1
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %15, align 4
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @VGLBitmapPutChar(i32* %46, i32 %47, i32 %54, i8 signext %59, i32 %60, i32 %61, i32 %62, i32 %63)
  br label %131

65:                                               ; preds = %23
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %17, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLTextFont, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = mul nsw i32 %68, %71
  %73 = sub nsw i32 %67, %72
  %74 = load i32, i32* %11, align 4
  %75 = load i8*, i8** %12, align 8
  %76 = load i32, i32* %17, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8, i8* %75, i64 %77
  %79 = load i8, i8* %78, align 1
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %14, align 4
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* %16, align 4
  %84 = call i32 @VGLBitmapPutChar(i32* %66, i32 %73, i32 %74, i8 signext %79, i32 %80, i32 %81, i32 %82, i32 %83)
  br label %131

85:                                               ; preds = %23
  %86 = load i32*, i32** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLTextFont, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = mul nsw i32 %89, %92
  %94 = add nsw i32 %88, %93
  %95 = load i8*, i8** %12, align 8
  %96 = load i32, i32* %17, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %95, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i32, i32* %16, align 4
  %104 = call i32 @VGLBitmapPutChar(i32* %86, i32 %87, i32 %94, i8 signext %99, i32 %100, i32 %101, i32 %102, i32 %103)
  br label %131

105:                                              ; preds = %23
  %106 = load i32*, i32** %9, align 8
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* %17, align 4
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLTextFont, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %108, %111
  %113 = add nsw i32 %107, %112
  %114 = load i32, i32* %11, align 4
  %115 = load i32, i32* %17, align 4
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** @VGLTextFont, align 8
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %115, %118
  %120 = sub nsw i32 %114, %119
  %121 = load i8*, i8** %12, align 8
  %122 = load i32, i32* %17, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i8, i8* %121, i64 %123
  %125 = load i8, i8* %124, align 1
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %14, align 4
  %128 = load i32, i32* %15, align 4
  %129 = load i32, i32* %16, align 4
  %130 = call i32 @VGLBitmapPutChar(i32* %106, i32 %113, i32 %120, i8 signext %125, i32 %126, i32 %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %23, %105, %85, %65, %45, %25
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %17, align 4
  br label %18

135:                                              ; preds = %18
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @VGLBitmapPutChar(i32*, i32, i32, i8 signext, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
