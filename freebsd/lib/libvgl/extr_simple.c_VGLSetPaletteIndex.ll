; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLSetPaletteIndex.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLSetPaletteIndex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@VGLModeInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@V_INFO_MM_DIRECT = common dso_local global i64 0, align 8
@VGLSavePaletteRed = common dso_local global i64* null, align 8
@VGLSavePaletteGreen = common dso_local global i64* null, align 8
@VGLSavePaletteBlue = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VGLSetPaletteIndex(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VGLModeInfo, i32 0, i32 0), align 8
  %10 = load i64, i64* @V_INFO_MM_DIRECT, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  br label %43

13:                                               ; preds = %4
  %14 = load i64, i64* %6, align 8
  %15 = load i64*, i64** @VGLSavePaletteRed, align 8
  %16 = load i64, i64* %5, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  store i64 %14, i64* %17, align 8
  %18 = load i64, i64* %7, align 8
  %19 = load i64*, i64** @VGLSavePaletteGreen, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  store i64 %18, i64* %21, align 8
  %22 = load i64, i64* %8, align 8
  %23 = load i64*, i64** @VGLSavePaletteBlue, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  store i64 %22, i64* %25, align 8
  %26 = call i32 (...) @VGLCheckSwitch()
  %27 = call i32 @outb(i32 966, i32 255)
  %28 = call i32 @inb(i32 986)
  %29 = load i64, i64* %5, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @outb(i32 968, i32 %30)
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i32 @outb(i32 969, i32 %33)
  %35 = load i64, i64* %7, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @outb(i32 969, i32 %36)
  %38 = load i64, i64* %8, align 8
  %39 = trunc i64 %38 to i32
  %40 = call i32 @outb(i32 969, i32 %39)
  %41 = call i32 @inb(i32 986)
  %42 = call i32 @outb(i32 960, i32 32)
  br label %43

43:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @VGLCheckSwitch(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
