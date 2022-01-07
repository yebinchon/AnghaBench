; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_pty.c_condition.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/netbsd-tests/kernel/extr_t_pty.c_condition.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32 }

@qsize = common dso_local global i32 0, align 4
@TIOCSQSIZE = common dso_local global i32 0, align 4
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Couldn't set tty(4) buffer size\00", align 1
@TIOCGQSIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Couldn't get tty(4) buffer size\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Wrong qsize %d != %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"tcgetattr()\00", align 1
@B921600 = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [12 x i8] c"tcsetattr()\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @condition to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @condition(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.termios, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @qsize, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %34

7:                                                ; preds = %1
  %8 = load i32, i32* @qsize, align 4
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @TIOCSQSIZE, align 4
  %11 = call i32 @ioctl(i32 %9, i32 %10, i32* %4)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @EXIT_FAILURE, align 4
  %15 = call i32 @err(i32 %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %7
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @TIOCGQSIZE, align 4
  %19 = call i32 @ioctl(i32 %17, i32 %18, i32* %4)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i32, i32* @EXIT_FAILURE, align 4
  %23 = call i32 @err(i32 %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @qsize, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load i32, i32* @EXIT_FAILURE, align 4
  %30 = load i32, i32* @qsize, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @errx(i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %28, %24
  br label %34

34:                                               ; preds = %33, %1
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @tcgetattr(i32 %35, %struct.termios* %3)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i32, i32* @EXIT_FAILURE, align 4
  %40 = call i32 @err(i32 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %34
  %42 = call i32 @cfmakeraw(%struct.termios* %3)
  %43 = load i32, i32* @B921600, align 4
  %44 = call i32 @cfsetspeed(%struct.termios* %3, i32 %43)
  %45 = load i32, i32* %2, align 4
  %46 = load i32, i32* @TCSANOW, align 4
  %47 = call i32 @tcsetattr(i32 %45, i32 %46, %struct.termios* %3)
  %48 = icmp eq i32 %47, -1
  br i1 %48, label %49, label %52

49:                                               ; preds = %41
  %50 = load i32, i32* @EXIT_FAILURE, align 4
  %51 = call i32 @err(i32 %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %52

52:                                               ; preds = %49, %41
  ret void
}

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @errx(i32, i8*, i32, i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @cfmakeraw(%struct.termios*) #1

declare dso_local i32 @cfsetspeed(%struct.termios*, i32) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
