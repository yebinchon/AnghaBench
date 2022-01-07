; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libvgl/extr_keyboard.c_VGLKeyboardInit.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libvgl/extr_keyboard.c_VGLKeyboardInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32, i32, i64* }

@VGLKeyboardInit.term = internal global %struct.termios zeroinitializer, align 8
@KDGKBMODE = common dso_local global i32 0, align 4
@VGLKeyboardMode = common dso_local global i32 0, align 4
@VGLKeyboardTty = common dso_local global %struct.termios zeroinitializer, align 8
@IGNPAR = common dso_local global i32 0, align 4
@IGNBRK = common dso_local global i32 0, align 4
@OPOST = common dso_local global i32 0, align 4
@ONLCR = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@CS8 = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@ISIG = common dso_local global i32 0, align 4
@VTIME = common dso_local global i64 0, align 8
@VMIN = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@KDSKBMODE = common dso_local global i32 0, align 4
@K_RAW = common dso_local global i32* null, align 8
@K_CODE = common dso_local global i32* null, align 8
@K_XLATE = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VGLKeyboardInit(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @KDGKBMODE, align 4
  %4 = call i32 @ioctl(i32 0, i32 %3, i32* @VGLKeyboardMode)
  %5 = call i32 @tcgetattr(i32 0, %struct.termios* @VGLKeyboardTty)
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.termios* @VGLKeyboardInit.term to i8*), i8* align 8 bitcast (%struct.termios* @VGLKeyboardTty to i8*), i64 24, i1 false)
  %6 = call i32 @cfmakeraw(%struct.termios* @VGLKeyboardInit.term)
  %7 = load i32, i32* @IGNPAR, align 4
  %8 = load i32, i32* @IGNBRK, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* getelementptr inbounds (%struct.termios, %struct.termios* @VGLKeyboardInit.term, i32 0, i32 0), align 8
  %10 = load i32, i32* @OPOST, align 4
  %11 = load i32, i32* @ONLCR, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* getelementptr inbounds (%struct.termios, %struct.termios* @VGLKeyboardInit.term, i32 0, i32 1), align 4
  %13 = load i32, i32* @CREAD, align 4
  %14 = load i32, i32* @CS8, align 4
  %15 = or i32 %13, %14
  store i32 %15, i32* getelementptr inbounds (%struct.termios, %struct.termios* @VGLKeyboardInit.term, i32 0, i32 2), align 8
  %16 = load i32, i32* @ICANON, align 4
  %17 = load i32, i32* @ECHO, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ISIG, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = load i32, i32* getelementptr inbounds (%struct.termios, %struct.termios* @VGLKeyboardInit.term, i32 0, i32 3), align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* getelementptr inbounds (%struct.termios, %struct.termios* @VGLKeyboardInit.term, i32 0, i32 3), align 4
  %24 = load i64*, i64** getelementptr inbounds (%struct.termios, %struct.termios* @VGLKeyboardInit.term, i32 0, i32 4), align 8
  %25 = load i64, i64* @VTIME, align 8
  %26 = getelementptr inbounds i64, i64* %24, i64 %25
  store i64 0, i64* %26, align 8
  %27 = load i64*, i64** getelementptr inbounds (%struct.termios, %struct.termios* @VGLKeyboardInit.term, i32 0, i32 4), align 8
  %28 = load i64, i64* @VMIN, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  store i64 0, i64* %29, align 8
  %30 = call i32 @cfsetispeed(%struct.termios* @VGLKeyboardInit.term, i32 9600)
  %31 = call i32 @cfsetospeed(%struct.termios* @VGLKeyboardInit.term, i32 9600)
  %32 = load i32, i32* @TCSANOW, align 4
  %33 = load i32, i32* @TCSAFLUSH, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @tcsetattr(i32 0, i32 %34, %struct.termios* @VGLKeyboardInit.term)
  %36 = load i32, i32* %2, align 4
  switch i32 %36, label %49 [
    i32 129, label %37
    i32 130, label %41
    i32 128, label %45
  ]

37:                                               ; preds = %1
  %38 = load i32, i32* @KDSKBMODE, align 4
  %39 = load i32*, i32** @K_RAW, align 8
  %40 = call i32 @ioctl(i32 0, i32 %38, i32* %39)
  br label %49

41:                                               ; preds = %1
  %42 = load i32, i32* @KDSKBMODE, align 4
  %43 = load i32*, i32** @K_CODE, align 8
  %44 = call i32 @ioctl(i32 0, i32 %42, i32* %43)
  br label %49

45:                                               ; preds = %1
  %46 = load i32, i32* @KDSKBMODE, align 4
  %47 = load i32*, i32** @K_XLATE, align 8
  %48 = call i32 @ioctl(i32 0, i32 %46, i32* %47)
  br label %49

49:                                               ; preds = %1, %45, %41, %37
  ret i32 0
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @cfmakeraw(%struct.termios*) #1

declare dso_local i32 @cfsetispeed(%struct.termios*, i32) #1

declare dso_local i32 @cfsetospeed(%struct.termios*, i32) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
