; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_client_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_client_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }
%struct.pollfd = type { i32, i32 }

@use_async = common dso_local global i64 0, align 8
@rs = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4
@poll_timeout = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"rsend\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.message*, i64)* @client_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @client_send(%struct.message* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.message*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pollfd, align 4
  %7 = alloca i32, align 4
  store %struct.message* %0, %struct.message** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* @use_async, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* @rs, align 4
  %12 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 1
  store i32 %11, i32* %12, align 4
  %13 = load i32, i32* @POLLOUT, align 4
  %14 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %6, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  br label %15

15:                                               ; preds = %10, %2
  br label %16

16:                                               ; preds = %46, %15
  %17 = load i64, i64* @use_async, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = load i32, i32* @poll_timeout, align 4
  %21 = call i32 @do_poll(%struct.pollfd* %6, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  store i32 %25, i32* %3, align 4
  br label %55

26:                                               ; preds = %19
  br label %27

27:                                               ; preds = %26, %16
  %28 = load i32, i32* @rs, align 4
  %29 = load %struct.message*, %struct.message** %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = load i32, i32* @flags, align 4
  %32 = call i32 @rs_send(i32 %28, %struct.message* %29, i64 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i64, i64* @errno, align 8
  %38 = load i64, i64* @EWOULDBLOCK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %44, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* @errno, align 8
  %42 = load i64, i64* @EAGAIN, align 8
  %43 = icmp eq i64 %41, %42
  br label %44

44:                                               ; preds = %40, %36
  %45 = phi i1 [ true, %36 ], [ %43, %40 ]
  br label %46

46:                                               ; preds = %44, %33
  %47 = phi i1 [ false, %33 ], [ %45, %44 ]
  br i1 %47, label %16, label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %48
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %53, %24
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @do_poll(%struct.pollfd*, i32) #1

declare dso_local i32 @rs_send(i32, %struct.message*, i64, i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
