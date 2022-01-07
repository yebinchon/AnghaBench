; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil.c_evutil_accept4_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil.c_evutil_accept4_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }

@EVUTIL_SOCK_CLOEXEC = common dso_local global i32 0, align 4
@EVUTIL_SOCK_NONBLOCK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @evutil_accept4_(i64 %0, %struct.sockaddr* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store %struct.sockaddr* %1, %struct.sockaddr** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i64, i64* %6, align 8
  %12 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call i64 @accept(i64 %11, %struct.sockaddr* %12, i32* %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i64, i64* %10, align 8
  store i64 %18, i64* %5, align 8
  br label %47

19:                                               ; preds = %4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @EVUTIL_SOCK_CLOEXEC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %19
  %25 = load i64, i64* %10, align 8
  %26 = call i64 @evutil_fast_socket_closeonexec(i64 %25)
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @evutil_closesocket(i64 %29)
  store i64 -1, i64* %5, align 8
  br label %47

31:                                               ; preds = %24
  br label %32

32:                                               ; preds = %31, %19
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @EVUTIL_SOCK_NONBLOCK, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load i64, i64* %10, align 8
  %39 = call i64 @evutil_fast_socket_nonblocking(i64 %38)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i64, i64* %10, align 8
  %43 = call i32 @evutil_closesocket(i64 %42)
  store i64 -1, i64* %5, align 8
  br label %47

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i64, i64* %10, align 8
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %45, %41, %28, %17
  %48 = load i64, i64* %5, align 8
  ret i64 %48
}

declare dso_local i64 @accept(i64, %struct.sockaddr*, i32*) #1

declare dso_local i64 @evutil_fast_socket_closeonexec(i64) #1

declare dso_local i32 @evutil_closesocket(i64) #1

declare dso_local i64 @evutil_fast_socket_nonblocking(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
