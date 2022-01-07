; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLRestorePalette.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLRestorePalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@VGLModeInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@V_INFO_MM_DIRECT = common dso_local global i64 0, align 8
@VGLSavePaletteRed = common dso_local global i32* null, align 8
@VGLSavePaletteGreen = common dso_local global i32* null, align 8
@VGLSavePaletteBlue = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VGLRestorePalette() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VGLModeInfo, i32 0, i32 0), align 8
  %3 = load i64, i64* @V_INFO_MM_DIRECT, align 8
  %4 = icmp eq i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %41

6:                                                ; preds = %0
  %7 = call i32 @outb(i32 966, i32 255)
  %8 = call i32 @inb(i32 986)
  %9 = call i32 @outb(i32 968, i32 0)
  store i32 0, i32* %1, align 4
  br label %10

10:                                               ; preds = %35, %6
  %11 = load i32, i32* %1, align 4
  %12 = icmp slt i32 %11, 256
  br i1 %12, label %13, label %38

13:                                               ; preds = %10
  %14 = load i32*, i32** @VGLSavePaletteRed, align 8
  %15 = load i32, i32* %1, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @outb(i32 969, i32 %18)
  %20 = call i32 @inb(i32 132)
  %21 = load i32*, i32** @VGLSavePaletteGreen, align 8
  %22 = load i32, i32* %1, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @outb(i32 969, i32 %25)
  %27 = call i32 @inb(i32 132)
  %28 = load i32*, i32** @VGLSavePaletteBlue, align 8
  %29 = load i32, i32* %1, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @outb(i32 969, i32 %32)
  %34 = call i32 @inb(i32 132)
  br label %35

35:                                               ; preds = %13
  %36 = load i32, i32* %1, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %1, align 4
  br label %10

38:                                               ; preds = %10
  %39 = call i32 @inb(i32 986)
  %40 = call i32 @outb(i32 960, i32 32)
  br label %41

41:                                               ; preds = %38, %5
  ret void
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
