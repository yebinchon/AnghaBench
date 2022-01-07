; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/getty/extr_main.c_setttymode.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/getty/extr_main.c_setttymode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STDIN_FILENO = common dso_local global i32 0, align 4
@TCIOFLUSH = common dso_local global i32 0, align 4
@FIONBIO = common dso_local global i32 0, align 4
@FIOASYNC = common dso_local global i32 0, align 4
@IS = common dso_local global i64 0, align 8
@tmode = common dso_local global i32 0, align 4
@SP = common dso_local global i64 0, align 8
@OS = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"tcsetattr %s: %m\00", align 1
@ttyn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @setttymode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setttymode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %4 = load i32, i32* @STDIN_FILENO, align 4
  %5 = load i32, i32* @TCIOFLUSH, align 4
  %6 = call i32 @tcflush(i32 %4, i32 %5)
  %7 = load i32, i32* @STDIN_FILENO, align 4
  %8 = load i32, i32* @FIONBIO, align 4
  %9 = call i32 @ioctl(i32 %7, i32 %8, i32* %3)
  %10 = load i32, i32* @STDIN_FILENO, align 4
  %11 = load i32, i32* @FIOASYNC, align 4
  %12 = call i32 @ioctl(i32 %10, i32 %11, i32* %3)
  %13 = load i64, i64* @IS, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i64, i64* @IS, align 8
  %17 = call i32 @speed(i64 %16)
  %18 = call i32 @cfsetispeed(i32* @tmode, i32 %17)
  br label %27

19:                                               ; preds = %1
  %20 = load i64, i64* @SP, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i64, i64* @SP, align 8
  %24 = call i32 @speed(i64 %23)
  %25 = call i32 @cfsetispeed(i32* @tmode, i32 %24)
  br label %26

26:                                               ; preds = %22, %19
  br label %27

27:                                               ; preds = %26, %15
  %28 = load i64, i64* @OS, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i64, i64* @OS, align 8
  %32 = call i32 @speed(i64 %31)
  %33 = call i32 @cfsetospeed(i32* @tmode, i32 %32)
  br label %42

34:                                               ; preds = %27
  %35 = load i64, i64* @SP, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* @SP, align 8
  %39 = call i32 @speed(i64 %38)
  %40 = call i32 @cfsetospeed(i32* @tmode, i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  br label %42

42:                                               ; preds = %41, %30
  %43 = call i32 @set_flags(i32 0)
  %44 = call i32 (...) @setchars()
  %45 = load i32, i32* %2, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @cfmakeraw(i32* @tmode)
  br label %49

49:                                               ; preds = %47, %42
  %50 = load i32, i32* @STDIN_FILENO, align 4
  %51 = load i32, i32* @TCSANOW, align 4
  %52 = call i64 @tcsetattr(i32 %50, i32 %51, i32* @tmode)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load i32, i32* @LOG_ERR, align 4
  %56 = load i32, i32* @ttyn, align 4
  %57 = call i32 @syslog(i32 %55, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = call i32 @exit(i32 1) #3
  unreachable

59:                                               ; preds = %49
  ret void
}

declare dso_local i32 @tcflush(i32, i32) #1

declare dso_local i32 @ioctl(i32, i32, i32*) #1

declare dso_local i32 @cfsetispeed(i32*, i32) #1

declare dso_local i32 @speed(i64) #1

declare dso_local i32 @cfsetospeed(i32*, i32) #1

declare dso_local i32 @set_flags(i32) #1

declare dso_local i32 @setchars(...) #1

declare dso_local i32 @cfmakeraw(i32*) #1

declare dso_local i64 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @syslog(i32, i8*, i32) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
