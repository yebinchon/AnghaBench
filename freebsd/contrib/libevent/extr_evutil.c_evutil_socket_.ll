; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil.c_evutil_socket_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_evutil.c_evutil_socket_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EVUTIL_SOCK_NONBLOCK = common dso_local global i32 0, align 4
@EVUTIL_SOCK_CLOEXEC = common dso_local global i32 0, align 4
@SOCKET_TYPE_MASK = common dso_local global i32 0, align 4
@SOCK_CLOEXEC = common dso_local global i32 0, align 4
@SOCK_NONBLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @evutil_socket_(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @EVUTIL_SOCK_NONBLOCK, align 4
  %12 = load i32, i32* @EVUTIL_SOCK_CLOEXEC, align 4
  %13 = or i32 %11, %12
  %14 = xor i32 %13, -1
  %15 = and i32 %10, %14
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @socket(i32 %9, i32 %15, i32 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i64 -1, i64* %4, align 8
  br label %49

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @EVUTIL_SOCK_NONBLOCK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i64, i64* %8, align 8
  %28 = call i64 @evutil_fast_socket_nonblocking(i64 %27)
  %29 = icmp slt i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @evutil_closesocket(i64 %31)
  store i64 -1, i64* %4, align 8
  br label %49

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %21
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @EVUTIL_SOCK_CLOEXEC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %34
  %40 = load i64, i64* %8, align 8
  %41 = call i64 @evutil_fast_socket_closeonexec(i64 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @evutil_closesocket(i64 %44)
  store i64 -1, i64* %4, align 8
  br label %49

46:                                               ; preds = %39
  br label %47

47:                                               ; preds = %46, %34
  %48 = load i64, i64* %8, align 8
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %47, %43, %30, %20
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local i64 @socket(i32, i32, i32) #1

declare dso_local i64 @evutil_fast_socket_nonblocking(i64) #1

declare dso_local i32 @evutil_closesocket(i64) #1

declare dso_local i64 @evutil_fast_socket_closeonexec(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
