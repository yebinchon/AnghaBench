; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLSavePalette.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLSavePalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@VGLModeInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@V_INFO_MM_DIRECT = common dso_local global i64 0, align 8
@VGLSavePaletteRed = common dso_local global i8** null, align 8
@VGLSavePaletteGreen = common dso_local global i8** null, align 8
@VGLSavePaletteBlue = common dso_local global i8** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VGLSavePalette() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VGLModeInfo, i32 0, i32 0), align 8
  %3 = load i64, i64* @V_INFO_MM_DIRECT, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %38

6:                                                ; preds = %0
  %7 = call i32 @outb(i32 966, i32 255)
  %8 = call i8* @inb(i32 986)
  %9 = call i32 @outb(i32 967, i32 0)
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %32, %6
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = call i8* @inb(i32 969)
  %15 = load i8**, i8*** @VGLSavePaletteRed, align 8
  %16 = load i32, i32* %1, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i8*, i8** %15, i64 %17
  store i8* %14, i8** %18, align 8
  %19 = call i8* @inb(i32 132)
  %20 = call i8* @inb(i32 969)
  %21 = load i8**, i8*** @VGLSavePaletteGreen, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  store i8* %20, i8** %24, align 8
  %25 = call i8* @inb(i32 132)
  %26 = call i8* @inb(i32 969)
  %27 = load i8**, i8*** @VGLSavePaletteBlue, align 8
  %28 = load i32, i32* %1, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i8*, i8** %27, i64 %29
  store i8* %26, i8** %30, align 8
  %31 = call i8* @inb(i32 132)
  br label %32

32:                                               ; preds = %13
  %33 = load i32, i32* %1, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %1, align 4
  br label %10

35:                                               ; preds = %10
  %36 = call i8* @inb(i32 986)
  %37 = call i32 @outb(i32 960, i32 32)
  br label %38

38:                                               ; preds = %35, %5
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i8* @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
