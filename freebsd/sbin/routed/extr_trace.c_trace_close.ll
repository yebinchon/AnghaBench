; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_trace.c_trace_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_trace.c_trace_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@ftrace = common dso_local global i32* null, align 8
@_PATH_DEVNULL = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@STDERR_FILENO = common dso_local global i32 0, align 4
@lastlog_time = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32*, i32** @stdout, align 8
  %5 = call i32 @fflush(i32* %4)
  %6 = load i32*, i32** @stderr, align 8
  %7 = call i32 @fflush(i32* %6)
  %8 = load i32*, i32** @ftrace, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %54

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %54

13:                                               ; preds = %10
  %14 = load i32*, i32** @ftrace, align 8
  %15 = load i32*, i32** @stdout, align 8
  %16 = icmp ne i32* %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32*, i32** @ftrace, align 8
  %19 = call i32 @fclose(i32* %18)
  br label %20

20:                                               ; preds = %17, %13
  store i32* null, i32** @ftrace, align 8
  %21 = load i32, i32* @_PATH_DEVNULL, align 4
  %22 = load i32, i32* @O_RDWR, align 4
  %23 = call i32 @open(i32 %21, i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %55

27:                                               ; preds = %20
  %28 = load i32, i32* @STDIN_FILENO, align 4
  %29 = call i64 @isatty(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @STDIN_FILENO, align 4
  %34 = call i32 @dup2(i32 %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* @STDOUT_FILENO, align 4
  %37 = call i64 @isatty(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @STDOUT_FILENO, align 4
  %42 = call i32 @dup2(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @STDERR_FILENO, align 4
  %45 = call i64 @isatty(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @STDERR_FILENO, align 4
  %50 = call i32 @dup2(i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %43
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @close(i32 %52)
  br label %54

54:                                               ; preds = %51, %10, %1
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @lastlog_time, i32 0, i32 0), align 8
  br label %55

55:                                               ; preds = %54, %26
  ret void
}

declare dso_local i32 @fflush(i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @open(i32, i32) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @dup2(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
