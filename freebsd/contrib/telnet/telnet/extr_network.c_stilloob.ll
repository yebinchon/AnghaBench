; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_network.c_stilloob.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_network.c_stilloob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }

@stilloob.timeout = internal global %struct.timeval zeroinitializer, align 4
@net = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"select\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stilloob() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %18, %0
  %5 = call i32 @FD_ZERO(i32* %2)
  %6 = load i64, i64* @net, align 8
  %7 = call i32 @FD_SET(i64 %6, i32* %2)
  %8 = load i64, i64* @net, align 8
  %9 = add nsw i64 %8, 1
  %10 = call i32 @select(i64 %9, i32* null, i32* null, i32* %2, %struct.timeval* @stilloob.timeout)
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @EINTR, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %4, label %20

20:                                               ; preds = %18
  %21 = load i32, i32* %3, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 (...) @quit()
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i64, i64* @net, align 8
  %28 = call i64 @FD_ISSET(i64 %27, i32* %2)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* %1, align 4
  br label %32

31:                                               ; preds = %26
  store i32 0, i32* %1, align 4
  br label %32

32:                                               ; preds = %31, %30
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @quit(...) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
