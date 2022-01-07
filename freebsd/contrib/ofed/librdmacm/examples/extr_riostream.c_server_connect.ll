; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_riostream.c_server_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_riostream.c_server_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i64 }

@lrs = common dso_local global i64 0, align 8
@use_async = common dso_local global i64 0, align 8
@POLLIN = common dso_local global i32 0, align 4
@poll_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"rpoll\00", align 1
@rs = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"raccept\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @server_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @server_connect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.pollfd, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  %4 = load i64, i64* @lrs, align 8
  %5 = call i32 @set_options(i64 %4)
  br label %6

6:                                                ; preds = %38, %0
  %7 = load i64, i64* @use_async, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %6
  %10 = load i64, i64* @lrs, align 8
  %11 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %2, i32 0, i32 1
  store i64 %10, i64* %11, align 8
  %12 = load i32, i32* @POLLIN, align 4
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %2, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load i32, i32* @poll_timeout, align 4
  %15 = call i32 @do_poll(%struct.pollfd* %2, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %9
  %19 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %1, align 4
  br label %51

21:                                               ; preds = %9
  br label %22

22:                                               ; preds = %21, %6
  %23 = load i64, i64* @lrs, align 8
  %24 = call i64 @raccept(i64 %23, i32* null, i32* null)
  store i64 %24, i64* @rs, align 8
  br label %25

25:                                               ; preds = %22
  %26 = load i64, i64* @rs, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %25
  %29 = load i64, i64* @errno, align 8
  %30 = load i64, i64* @EAGAIN, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* @errno, align 8
  %34 = load i64, i64* @EWOULDBLOCK, align 8
  %35 = icmp eq i64 %33, %34
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i1 [ true, %28 ], [ %35, %32 ]
  br label %38

38:                                               ; preds = %36, %25
  %39 = phi i1 [ false, %25 ], [ %37, %36 ]
  br i1 %39, label %6, label %40

40:                                               ; preds = %38
  %41 = load i64, i64* @rs, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = call i32 @perror(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i64, i64* @rs, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %1, align 4
  br label %51

47:                                               ; preds = %40
  %48 = load i64, i64* @rs, align 8
  %49 = call i32 @set_options(i64 %48)
  %50 = load i32, i32* %3, align 4
  store i32 %50, i32* %1, align 4
  br label %51

51:                                               ; preds = %47, %43, %18
  %52 = load i32, i32* %1, align 4
  ret i32 %52
}

declare dso_local i32 @set_options(i64) #1

declare dso_local i32 @do_poll(%struct.pollfd*, i32) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i64 @raccept(i64, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
