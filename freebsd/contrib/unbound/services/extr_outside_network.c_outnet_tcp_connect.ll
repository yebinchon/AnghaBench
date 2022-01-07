; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_tcp_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/services/extr_outside_network.c_outnet_tcp_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_storage = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"outgoing tcp: connect\00", align 1
@errno = common dso_local global i64 0, align 8
@EINPROGRESS = common dso_local global i64 0, align 8
@WSAEINPROGRESS = common dso_local global i64 0, align 8
@WSAEWOULDBLOCK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @outnet_tcp_connect(i32 %0, %struct.sockaddr_storage* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr_storage*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr_storage* %1, %struct.sockaddr_storage** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %10 = bitcast %struct.sockaddr_storage* %9 to %struct.sockaddr*
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @connect(i32 %8, %struct.sockaddr* %10, i32 %11)
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %16 = bitcast %struct.sockaddr_storage* %15 to %struct.sockaddr*
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @tcp_connect_errno_needs_log(%struct.sockaddr* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %14
  %21 = load i64, i64* @errno, align 8
  %22 = call i32 @strerror(i64 %21)
  %23 = load %struct.sockaddr_storage*, %struct.sockaddr_storage** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @log_err_addr(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %22, %struct.sockaddr_storage* %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %14
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @close(i32 %27)
  store i32 0, i32* %4, align 4
  br label %30

29:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @connect(i32, %struct.sockaddr*, i32) #1

declare dso_local i64 @tcp_connect_errno_needs_log(%struct.sockaddr*, i32) #1

declare dso_local i32 @log_err_addr(i8*, i32, %struct.sockaddr_storage*, i32) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
