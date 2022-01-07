; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_io_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpd/extr_ntp_io.c_io_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@handler_calls = common dso_local global i32 0, align 4
@activefds = common dso_local global i32 0, align 4
@maxactivefd = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"select() error: %m\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @io_handler() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval, align 8
  %4 = alloca i32, align 4
  %5 = load i32, i32* @handler_calls, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @handler_calls, align 4
  %7 = load i32, i32* @activefds, align 4
  store i32 %7, i32* %1, align 4
  %8 = load i64, i64* @maxactivefd, align 8
  %9 = add nsw i64 %8, 1
  %10 = call i32 @select(i64 %9, i32* %1, i32* null, i32* null, %struct.timeval* null)
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %0
  %14 = load i64, i64* @errno, align 8
  %15 = call i64 @sanitize_fdset(i64 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* @activefds, align 4
  store i32 %20, i32* %1, align 4
  %21 = load i64, i64* @maxactivefd, align 8
  %22 = add nsw i64 %21, 1
  %23 = call i32 @select(i64 %22, i32* %1, i32* null, i32* null, %struct.timeval* %3)
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %17, %13, %0
  %25 = load i32, i32* %2, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = call i32 @get_systime(i32* %4)
  %29 = call i32 @input_handler_scan(i32* %4, i32* %1)
  br label %41

30:                                               ; preds = %24
  %31 = load i32, i32* %2, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load i64, i64* @errno, align 8
  %35 = load i64, i64* @EINTR, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @LOG_ERR, align 4
  %39 = call i32 (i32, i8*, ...) @msyslog(i32 %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %33, %30
  br label %41

41:                                               ; preds = %40, %27
  ret void
}

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i64 @sanitize_fdset(i64) #1

declare dso_local i32 @get_systime(i32*) #1

declare dso_local i32 @input_handler_scan(i32*, i32*) #1

declare dso_local i32 @msyslog(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
