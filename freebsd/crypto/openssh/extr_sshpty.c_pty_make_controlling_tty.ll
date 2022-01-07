; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshpty.c_pty_make_controlling_tty.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_sshpty.c_pty_make_controlling_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"setsid: %.100s\00", align 1
@errno = common dso_local global i32 0, align 4
@_PATH_TTY = common dso_local global i8* null, align 8
@O_RDWR = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to disconnect from controlling tty.\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"%.100s: %.100s\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [61 x i8] c"open /dev/tty failed - could not set controlling tty: %.100s\00", align 1
@TIOCNOTTY = common dso_local global i32 0, align 4
@TIOCSCTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pty_make_controlling_tty(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call i64 (...) @setsid()
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load i32, i32* @errno, align 4
  %10 = call i8* @strerror(i32 %9)
  %11 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* %10)
  br label %12

12:                                               ; preds = %8, %2
  %13 = load i8*, i8** @_PATH_TTY, align 8
  %14 = load i32, i32* @O_RDWR, align 4
  %15 = load i32, i32* @O_NOCTTY, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @open(i8* %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %12
  %21 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @close(i32 %22)
  br label %24

24:                                               ; preds = %20, %12
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* @O_RDWR, align 4
  %27 = call i32 @open(i8* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* @errno, align 4
  %33 = call i8* @strerror(i32 %32)
  %34 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %31, i8* %33)
  br label %38

35:                                               ; preds = %24
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @close(i32 %36)
  br label %38

38:                                               ; preds = %35, %30
  %39 = load i8*, i8** @_PATH_TTY, align 8
  %40 = load i32, i32* @O_WRONLY, align 4
  %41 = call i32 @open(i8* %39, i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* @errno, align 4
  %46 = call i8* @strerror(i32 %45)
  %47 = call i32 (i8*, ...) @error(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0), i8* %46)
  br label %51

48:                                               ; preds = %38
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @close(i32 %49)
  br label %51

51:                                               ; preds = %48, %44
  ret void
}

declare dso_local i64 @setsid(...) #1

declare dso_local i32 @error(i8*, ...) #1

declare dso_local i8* @strerror(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
