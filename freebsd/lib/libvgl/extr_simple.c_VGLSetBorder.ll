; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLSetBorder.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_simple.c_VGLSetBorder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@VGLModeInfo = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@V_INFO_MM_DIRECT = common dso_local global i64 0, align 8
@KDENABIO = common dso_local global i32 0, align 4
@VGLBorderColor = common dso_local global i32 0, align 4
@KDDISABIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VGLSetBorder(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VGLModeInfo, i32 0, i32 0), align 8
  %4 = load i64, i64* @V_INFO_MM_DIRECT, align 8
  %5 = icmp eq i64 %3, %4
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load i32, i32* @KDENABIO, align 4
  %8 = call i64 @ioctl(i32 0, i32 %7, i32 0)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  br label %26

11:                                               ; preds = %6, %1
  %12 = call i32 (...) @VGLCheckSwitch()
  %13 = call i32 @inb(i32 986)
  %14 = call i32 @outb(i32 960, i32 17)
  %15 = load i32, i32* %2, align 4
  %16 = call i32 @outb(i32 960, i32 %15)
  %17 = call i32 @inb(i32 986)
  %18 = call i32 @outb(i32 960, i32 32)
  %19 = load i32, i32* %2, align 4
  store i32 %19, i32* @VGLBorderColor, align 4
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @VGLModeInfo, i32 0, i32 0), align 8
  %21 = load i64, i64* @V_INFO_MM_DIRECT, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %11
  %24 = load i32, i32* @KDDISABIO, align 4
  %25 = call i64 @ioctl(i32 0, i32 %24, i32 0)
  br label %26

26:                                               ; preds = %10, %23, %11
  ret void
}

declare dso_local i64 @ioctl(i32, i32, i32) #1

declare dso_local i32 @VGLCheckSwitch(...) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
