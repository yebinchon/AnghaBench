; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_termios.c_tcflow.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/gen/extr_termios.c_tcflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32* }

@TIOCSTOP = common dso_local global i32 0, align 4
@TIOCSTART = common dso_local global i32 0, align 4
@VSTOP = common dso_local global i64 0, align 8
@VSTART = common dso_local global i64 0, align 8
@_POSIX_VDISABLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcflow(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.termios, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  switch i32 %8, label %44 [
    i32 129, label %9
    i32 128, label %13
    i32 130, label %17
    i32 131, label %17
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @TIOCSTOP, align 4
  %12 = call i32 @_ioctl(i32 %10, i32 %11, i32 0)
  store i32 %12, i32* %3, align 4
  br label %46

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @TIOCSTART, align 4
  %16 = call i32 @_ioctl(i32 %14, i32 %15, i32 0)
  store i32 %16, i32* %3, align 4
  br label %46

17:                                               ; preds = %2, %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @tcgetattr(i32 %18, %struct.termios* %6)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 -1, i32* %3, align 4
  br label %46

22:                                               ; preds = %17
  %23 = getelementptr inbounds %struct.termios, %struct.termios* %6, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 131
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* @VSTOP, align 8
  br label %31

29:                                               ; preds = %22
  %30 = load i64, i64* @VSTART, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i64 [ %28, %27 ], [ %30, %29 ]
  %33 = getelementptr inbounds i32, i32* %24, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @_POSIX_VDISABLE, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @_write(i32 %39, i32* %7, i32 4)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i32 -1, i32* %3, align 4
  br label %46

43:                                               ; preds = %38, %31
  store i32 0, i32* %3, align 4
  br label %46

44:                                               ; preds = %2
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* @errno, align 4
  store i32 -1, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %43, %42, %21, %13, %9
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @_ioctl(i32, i32, i32) #1

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @_write(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
