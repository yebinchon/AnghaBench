; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dialog_util.c_tty_maxsize_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libdpv/extr_dialog_util.c_tty_maxsize_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.termios = type { i32 }

@STDIN_FILENO = common dso_local global i32 0, align 4
@maxsize = common dso_local global %struct.TYPE_4__* null, align 8
@EXIT_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Out of memory?!\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"/dev/tty\00", align 1
@O_RDONLY = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@TTY_DEFAULT_ROWS = common dso_local global i32 0, align 4
@TTY_DEFAULT_COLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tty_maxsize_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_maxsize_update() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.termios, align 4
  %3 = load i32, i32* @STDIN_FILENO, align 4
  store i32 %3, i32* %1, align 4
  %4 = load %struct.TYPE_4__*, %struct.TYPE_4__** @maxsize, align 8
  %5 = icmp eq %struct.TYPE_4__* %4, null
  br i1 %5, label %6, label %16

6:                                                ; preds = %0
  %7 = call %struct.TYPE_4__* @malloc(i32 4)
  store %struct.TYPE_4__* %7, %struct.TYPE_4__** @maxsize, align 8
  %8 = icmp eq %struct.TYPE_4__* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %6
  %10 = load i32, i32* @EXIT_FAILURE, align 4
  %11 = call i32 @errx(i32 %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %6
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @maxsize, align 8
  %14 = bitcast %struct.TYPE_4__* %13 to i8*
  %15 = call i32 @memset(i8* %14, i8 signext 0, i32 4)
  br label %16

16:                                               ; preds = %12, %0
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @isatty(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @O_RDONLY, align 4
  %22 = call i32 @open(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* %1, align 4
  %25 = call i64 @tcgetattr(i32 %24, %struct.termios* %2)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %1, align 4
  %29 = load i32, i32* @TIOCGWINSZ, align 4
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** @maxsize, align 8
  %31 = call i64 @ioctl(i32 %28, i32 %29, %struct.TYPE_4__* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27, %23
  %34 = load i32, i32* @TTY_DEFAULT_ROWS, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** @maxsize, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @TTY_DEFAULT_COLS, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @maxsize, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  br label %40

40:                                               ; preds = %33, %27
  ret void
}

declare dso_local %struct.TYPE_4__* @malloc(i32) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i64 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
