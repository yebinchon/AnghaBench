; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_test-eof.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_test-eof.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.event = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"test string\00", align 1
@AF_UNIX = common dso_local global i32 0, align 4
@SOCK_STREAM = common dso_local global i32 0, align 4
@EVUTIL_SHUT_WR = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@EV_TIMEOUT = common dso_local global i32 0, align 4
@read_cb = common dso_local global i32 0, align 4
@timeout = common dso_local global i32 0, align 4
@test_okay = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.event, align 4
  %7 = alloca i8*, align 8
  %8 = alloca [2 x i32], align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %9 = load i32, i32* @AF_UNIX, align 4
  %10 = load i32, i32* @SOCK_STREAM, align 4
  %11 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %12 = call i32 @evutil_socketpair(i32 %9, i32 %10, i32 0, i32* %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %42

15:                                               ; preds = %2
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %7, align 8
  %19 = load i8*, i8** %7, align 8
  %20 = call i64 @strlen(i8* %19)
  %21 = trunc i64 %20 to i32
  %22 = add nsw i32 %21, 1
  %23 = call i64 @send(i32 %17, i8* %18, i32 %22, i32 0)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %15
  store i32 1, i32* %3, align 4
  br label %42

26:                                               ; preds = %15
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @EVUTIL_SHUT_WR, align 4
  %30 = call i32 @shutdown(i32 %28, i32 %29)
  %31 = call i32 (...) @event_init()
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @EV_READ, align 4
  %35 = load i32, i32* @EV_TIMEOUT, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @read_cb, align 4
  %38 = call i32 @event_set(%struct.event* %6, i32 %33, i32 %36, i32 %37, %struct.event* %6)
  %39 = call i32 @event_add(%struct.event* %6, i32* @timeout)
  %40 = call i32 (...) @event_dispatch()
  %41 = load i32, i32* @test_okay, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %26, %25, %14
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @evutil_socketpair(i32, i32, i32, i32*) #1

declare dso_local i64 @send(i32, i8*, i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @shutdown(i32, i32) #1

declare dso_local i32 @event_init(...) #1

declare dso_local i32 @event_set(%struct.event*, i32, i32, i32, %struct.event*) #1

declare dso_local i32 @event_add(%struct.event*, i32*) #1

declare dso_local i32 @event_dispatch(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
