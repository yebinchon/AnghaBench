; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libutil/extr_pty.c_openpty.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libutil/extr_pty.c_openpty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }
%struct.winsize = type { i32 }

@O_RDWR = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@TIOCSWINSZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openpty(i32* %0, i32* %1, i8* %2, %struct.termios* %3, %struct.winsize* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.termios*, align 8
  %11 = alloca %struct.winsize*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i8* %2, i8** %9, align 8
  store %struct.termios* %3, %struct.termios** %10, align 8
  store %struct.winsize* %4, %struct.winsize** %11, align 8
  %15 = load i32, i32* @O_RDWR, align 4
  %16 = load i32, i32* @O_NOCTTY, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @posix_openpt(i32 %17)
  store i32 %18, i32* %13, align 4
  %19 = load i32, i32* %13, align 4
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %77

22:                                               ; preds = %5
  %23 = load i32, i32* %13, align 4
  %24 = call i32 @grantpt(i32 %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %74

27:                                               ; preds = %22
  %28 = load i32, i32* %13, align 4
  %29 = call i32 @unlockpt(i32 %28)
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %74

32:                                               ; preds = %27
  %33 = load i32, i32* %13, align 4
  %34 = call i8* @ptsname(i32 %33)
  store i8* %34, i8** %12, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %74

38:                                               ; preds = %32
  %39 = load i8*, i8** %12, align 8
  %40 = load i32, i32* @O_RDWR, align 4
  %41 = call i32 @open(i8* %39, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %74

45:                                               ; preds = %38
  %46 = load i32, i32* %13, align 4
  %47 = load i32*, i32** %7, align 8
  store i32 %46, i32* %47, align 4
  %48 = load i32, i32* %14, align 4
  %49 = load i32*, i32** %8, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i8*, i8** %9, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i8*, i8** %9, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = call i32 @strcpy(i8* %53, i8* %54)
  br label %56

56:                                               ; preds = %52, %45
  %57 = load %struct.termios*, %struct.termios** %10, align 8
  %58 = icmp ne %struct.termios* %57, null
  br i1 %58, label %59, label %64

59:                                               ; preds = %56
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @TCSAFLUSH, align 4
  %62 = load %struct.termios*, %struct.termios** %10, align 8
  %63 = call i32 @tcsetattr(i32 %60, i32 %61, %struct.termios* %62)
  br label %64

64:                                               ; preds = %59, %56
  %65 = load %struct.winsize*, %struct.winsize** %11, align 8
  %66 = icmp ne %struct.winsize* %65, null
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @TIOCSWINSZ, align 4
  %70 = load %struct.winsize*, %struct.winsize** %11, align 8
  %71 = bitcast %struct.winsize* %70 to i8*
  %72 = call i32 @ioctl(i32 %68, i32 %69, i8* %71)
  br label %73

73:                                               ; preds = %67, %64
  store i32 0, i32* %6, align 4
  br label %77

74:                                               ; preds = %44, %37, %31, %26
  %75 = load i32, i32* %13, align 4
  %76 = call i32 @close(i32 %75)
  store i32 -1, i32* %6, align 4
  br label %77

77:                                               ; preds = %74, %73, %21
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @posix_openpt(i32) #1

declare dso_local i32 @grantpt(i32) #1

declare dso_local i32 @unlockpt(i32) #1

declare dso_local i8* @ptsname(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

declare dso_local i32 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
