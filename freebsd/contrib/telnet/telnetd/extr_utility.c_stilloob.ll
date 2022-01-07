; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_utility.c_stilloob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnetd/extr_utility.c_stilloob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@stilloob.timeout = internal global %struct.timeval zeroinitializer, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@pty = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"select\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stilloob(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  br label %6

6:                                                ; preds = %21, %1
  %7 = call i32 @FD_ZERO(i32* %4)
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @FD_SET(i32 %8, i32* %4)
  %10 = call i32 @memset(i8* bitcast (%struct.timeval* @stilloob.timeout to i8*), i32 0, i32 8)
  %11 = load i32, i32* %3, align 4
  %12 = add nsw i32 %11, 1
  %13 = call i32 @select(i32 %12, i32* null, i32* null, i32* %4, %struct.timeval* @stilloob.timeout)
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %6
  %15 = load i32, i32* %5, align 4
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  %18 = load i64, i64* @errno, align 8
  %19 = load i64, i64* @EINTR, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %17, %14
  %22 = phi i1 [ false, %14 ], [ %20, %17 ]
  br i1 %22, label %6, label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %23
  %27 = load i32, i32* @pty, align 4
  %28 = call i32 @fatalperror(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %23
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @FD_ISSET(i32 %30, i32* %4)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  store i32 1, i32* %2, align 4
  br label %35

34:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @fatalperror(i32, i8*) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
