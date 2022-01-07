; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_bufferevent_ssl_renegotiate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_bufferevent_ssl_renegotiate.c"
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
  br label %34

10:                                               ; preds = %1
  %11 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %12 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @SSL_renegotiate(i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i32 -1, i32* %2, align 4
  br label %34

17:                                               ; preds = %10
  %18 = load i32, i32* @BUFFEREVENT_SSL_CONNECTING, align 4
  %19 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %20 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %22 = call i64 @set_handshake_callbacks(%struct.bufferevent_openssl* %21, i32 -1)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 -1, i32* %2, align 4
  br label %34

25:                                               ; preds = %17
  %26 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %27 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %25
  %31 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %4, align 8
  %32 = call i32 @do_handshake(%struct.bufferevent_openssl* %31)
  store i32 %32, i32* %2, align 4
  br label %34

33:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %30, %24, %16, %9
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.bufferevent_openssl* @upcast(%struct.bufferevent*) #1

declare dso_local i64 @SSL_renegotiate(i32) #1

declare dso_local i64 @set_handshake_callbacks(%struct.bufferevent_openssl*, i32) #1

declare dso_local i32 @do_handshake(%struct.bufferevent_openssl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
