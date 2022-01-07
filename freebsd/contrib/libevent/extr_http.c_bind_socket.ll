; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_bind_socket.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_bind_socket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evutil_addrinfo = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @bind_socket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bind_socket(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.evutil_addrinfo*, align 8
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.evutil_addrinfo* null, %struct.evutil_addrinfo** %9, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %12
  %16 = call i32 @bind_socket_ai(%struct.evutil_addrinfo* null, i32 0)
  store i32 %16, i32* %4, align 4
  br label %31

17:                                               ; preds = %12, %3
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call %struct.evutil_addrinfo* @make_addrinfo(i8* %18, i64 %19)
  store %struct.evutil_addrinfo* %20, %struct.evutil_addrinfo** %9, align 8
  %21 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %22 = icmp eq %struct.evutil_addrinfo* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %31

24:                                               ; preds = %17
  %25 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @bind_socket_ai(%struct.evutil_addrinfo* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load %struct.evutil_addrinfo*, %struct.evutil_addrinfo** %9, align 8
  %29 = call i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo* %28)
  %30 = load i32, i32* %8, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %24, %23, %15
  %32 = load i32, i32* %4, align 4
  ret i32 %32
}

declare dso_local i32 @bind_socket_ai(%struct.evutil_addrinfo*, i32) #1

declare dso_local %struct.evutil_addrinfo* @make_addrinfo(i8*, i64) #1

declare dso_local i32 @evutil_freeaddrinfo(%struct.evutil_addrinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
