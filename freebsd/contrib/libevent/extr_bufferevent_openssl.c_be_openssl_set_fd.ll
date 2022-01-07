; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_be_openssl_set_fd.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_be_openssl_set_fd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_openssl*, i32, i32)* @be_openssl_set_fd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @be_openssl_set_fd(%struct.bufferevent_openssl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bufferevent_openssl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %10 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %9, i32 0, i32 0
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %41 [
    i32 130, label %12
    i32 129, label %23
    i32 128, label %34
  ]

12:                                               ; preds = %3
  %13 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %14 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @SSL_set_accept_state(i32 %15)
  %17 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @set_handshake_callbacks(%struct.bufferevent_openssl* %17, i32 %18)
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  store i32 -1, i32* %4, align 4
  br label %43

22:                                               ; preds = %12
  br label %42

23:                                               ; preds = %3
  %24 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %25 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @SSL_set_connect_state(i32 %26)
  %28 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @set_handshake_callbacks(%struct.bufferevent_openssl* %28, i32 %29)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %23
  store i32 -1, i32* %4, align 4
  br label %43

33:                                               ; preds = %23
  br label %42

34:                                               ; preds = %3
  %35 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %5, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i32 @set_open_callbacks(%struct.bufferevent_openssl* %35, i32 %36)
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %43

40:                                               ; preds = %34
  br label %42

41:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %43

42:                                               ; preds = %40, %33, %22
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %41, %39, %32, %21
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @SSL_set_accept_state(i32) #1

declare dso_local i32 @set_handshake_callbacks(%struct.bufferevent_openssl*, i32) #1

declare dso_local i32 @SSL_set_connect_state(i32) #1

declare dso_local i32 @set_open_callbacks(%struct.bufferevent_openssl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
