; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_network.c_stilloob.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_network.c_stilloob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }

@stilloob.timeout = internal global %struct.timeval zeroinitializer, align 4
@net = common dso_local global i64 0, align 8
@FD_SETSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"fd too large\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"select\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stilloob() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %24, %0
  %5 = call i32 @FD_ZERO(i32* %2)
  %6 = load i64, i64* @net, align 8
  %7 = load i64, i64* @FD_SETSIZE, align 8
  %8 = icmp sge i64 %6, %7
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %9, %4
  %12 = load i64, i64* @net, align 8
  %13 = call i32 @FD_SET(i64 %12, i32* %2)
  %14 = load i64, i64* @net, align 8
  %15 = add nsw i64 %14, 1
  %16 = call i32 @select(i64 %15, i32 0, i32 0, i32* %2, %struct.timeval* @stilloob.timeout)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %11
  %18 = load i32, i32* %3, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EINTR, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %20, %17
  %25 = phi i1 [ false, %17 ], [ %23, %20 ]
  br i1 %25, label %4, label %26

26:                                               ; preds = %24
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = call i32 @perror(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %31 = call i32 (...) @quit()
  br label %32

32:                                               ; preds = %29, %26
  %33 = load i64, i64* @net, align 8
  %34 = call i64 @FD_ISSET(i64 %33, i32* %2)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 1, i32* %1, align 4
  br label %38

37:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %37, %36
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i32 @FD_ZERO(i32*) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32, i32, i32*, %struct.timeval*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @quit(...) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
