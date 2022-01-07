; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_bufferevent_ssl_renegotiate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_bufferevent_ssl_renegotiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }
%struct.bufferevent_openssl = type { i32, i32, i32 }

@BUFFEREVENT_SSL_CONNECTING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bufferevent_ssl_renegotiate(%struct.bufferevent* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bufferevent*, align 8
  %4 = alloca %struct.bufferevent_openssl*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %3, align 8
  %5 = load %struct.bufferevent*, %struct.bufferevent** %3, align 8
  %6 = call %struct.bufferevent_openssl* @upcast(%struct.bufferevent* %5)
  store %struct.bufferevent_openssl* %6, %struct.bufferevent_openssl** %4, align 8
  %7 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %8 = icmp ne %struct.bufferevent_openssl* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %12 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @SSL_renegotiate(i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %36

17:                                               ; preds = %10
  %18 = load i32, i32* @BUFFEREVENT_SSL_CONNECTING, align 4
  %19 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %20 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %22 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %23 = call i32 @be_openssl_auto_fd(%struct.bufferevent_openssl* %22, i32 -1)
  %24 = call i64 @set_handshake_callbacks(%struct.bufferevent_openssl* %21, i32 %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %36

27:                                               ; preds = %17
  %28 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %29 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %34 = call i32 @do_handshake(%struct.bufferevent_openssl* %33)
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %32, %26, %16, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local %struct.bufferevent_openssl* @upcast(%struct.bufferevent*) #1

declare dso_local i64 @SSL_renegotiate(i32) #1

declare dso_local i64 @set_handshake_callbacks(%struct.bufferevent_openssl*, i32) #1

declare dso_local i32 @be_openssl_auto_fd(%struct.bufferevent_openssl*, i32) #1

declare dso_local i32 @do_handshake(%struct.bufferevent_openssl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
