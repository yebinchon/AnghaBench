; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_mouse.c_VGLMouseAction.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_mouse.c_VGLMouseAction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mouse_info = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64, i32 }

@VGLMsuppressint = common dso_local global i64 0, align 8
@VGLMintpending = common dso_local global i32 0, align 4
@MOUSE_GETINFO = common dso_local global i32 0, align 4
@CONS_MOUSECTL = common dso_local global i32 0, align 4
@VGLMouseXpos = common dso_local global i64 0, align 8
@VGLMouseYpos = common dso_local global i64 0, align 8
@VGL_MOUSEHIDE = common dso_local global i32 0, align 4
@VGLMouseButtons = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @VGLMouseAction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @VGLMouseAction(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mouse_info, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @VGLMsuppressint, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  store i32 1, i32* @VGLMintpending, align 4
  br label %49

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %48, %8
  %10 = call i32 (...) @INTOFF()
  store i32 0, i32* @VGLMintpending, align 4
  %11 = load i32, i32* @MOUSE_GETINFO, align 4
  %12 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %3, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = load i32, i32* @CONS_MOUSECTL, align 4
  %14 = call i32 @ioctl(i32 0, i32 %13, %struct.mouse_info* %3)
  %15 = load i64, i64* @VGLMouseXpos, align 8
  %16 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %3, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %9
  %22 = load i64, i64* @VGLMouseYpos, align 8
  %23 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %3, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %22, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %21, %9
  %29 = load i32, i32* @VGL_MOUSEHIDE, align 4
  %30 = call i32 @__VGLMouseMode(i32 %29)
  store i32 %30, i32* %4, align 4
  %31 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %3, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* @VGLMouseXpos, align 8
  %35 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %3, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* @VGLMouseYpos, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @__VGLMouseMode(i32 %39)
  br label %41

41:                                               ; preds = %28, %21
  %42 = getelementptr inbounds %struct.mouse_info, %struct.mouse_info* %3, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* @VGLMouseButtons, align 4
  store i64 0, i64* @VGLMsuppressint, align 8
  %46 = load i32, i32* @VGLMintpending, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  br label %9

49:                                               ; preds = %7, %41
  ret void
}

declare dso_local i32 @INTOFF(...) #1

declare dso_local i32 @ioctl(i32, i32, %struct.mouse_info*) #1

declare dso_local i32 @__VGLMouseMode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
