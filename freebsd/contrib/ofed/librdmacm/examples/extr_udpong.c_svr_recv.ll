; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_svr_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_svr_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.message = type { i32 }
%union.socket_addr = type { i32 }
%struct.pollfd = type { i32, i32 }

@use_async = common dso_local global i64 0, align 8
@rs = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@poll_timeout = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EWOULDBLOCK = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"rrecv\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.message*, i64, %union.socket_addr*, i32*)* @svr_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @svr_recv(%struct.message* %0, i64 %1, %union.socket_addr* %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.message*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.socket_addr*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pollfd, align 4
  %11 = alloca i64, align 8
  store %struct.message* %0, %struct.message** %6, align 8
  store i64 %1, i64* %7, align 8
  store %union.socket_addr* %2, %union.socket_addr** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i64, i64* @use_async, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %4
  %15 = load i32, i32* @rs, align 4
  %16 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* @POLLIN, align 4
  %18 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %10, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  br label %19

19:                                               ; preds = %14, %4
  br label %20

20:                                               ; preds = %53, %19
  %21 = load i64, i64* @use_async, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* @poll_timeout, align 4
  %25 = call i64 @do_poll(%struct.pollfd* %10, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i64, i64* %11, align 8
  store i64 %29, i64* %5, align 8
  br label %62

30:                                               ; preds = %23
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i32, i32* @rs, align 4
  %33 = load %struct.message*, %struct.message** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* @flags, align 4
  %36 = load %union.socket_addr*, %union.socket_addr** %8, align 8
  %37 = bitcast %union.socket_addr* %36 to i32*
  %38 = load i32*, i32** %9, align 8
  %39 = call i64 @rs_recvfrom(i32 %32, %struct.message* %33, i64 %34, i32 %35, i32* %37, i32* %38)
  store i64 %39, i64* %11, align 8
  br label %40

40:                                               ; preds = %31
  %41 = load i64, i64* %11, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %40
  %44 = load i64, i64* @errno, align 8
  %45 = load i64, i64* @EWOULDBLOCK, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %51, label %47

47:                                               ; preds = %43
  %48 = load i64, i64* @errno, align 8
  %49 = load i64, i64* @EAGAIN, align 8
  %50 = icmp eq i64 %48, %49
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i1 [ true, %43 ], [ %50, %47 ]
  br label %53

53:                                               ; preds = %51, %40
  %54 = phi i1 [ false, %40 ], [ %52, %51 ]
  br i1 %54, label %20, label %55

55:                                               ; preds = %53
  %56 = load i64, i64* %11, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %55
  %59 = call i32 @perror(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %58, %55
  %61 = load i64, i64* %11, align 8
  store i64 %61, i64* %5, align 8
  br label %62

62:                                               ; preds = %60, %28
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

declare dso_local i64 @do_poll(%struct.pollfd*, i32) #1

declare dso_local i64 @rs_recvfrom(i32, %struct.message*, i64, i32, i32*, i32*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
