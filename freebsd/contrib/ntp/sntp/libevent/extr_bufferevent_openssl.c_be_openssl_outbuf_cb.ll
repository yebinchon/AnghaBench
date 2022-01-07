; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_be_openssl_outbuf_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_bufferevent_openssl.c_be_openssl_outbuf_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuffer = type { i32 }
%struct.evbuffer_cb_info = type { i64, i64 }
%struct.bufferevent_openssl = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@BUFFEREVENT_SSL_OPEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuffer*, %struct.evbuffer_cb_info*, i8*)* @be_openssl_outbuf_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_openssl_outbuf_cb(%struct.evbuffer* %0, %struct.evbuffer_cb_info* %1, i8* %2) #0 {
  %4 = alloca %struct.evbuffer*, align 8
  %5 = alloca %struct.evbuffer_cb_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bufferevent_openssl*, align 8
  %8 = alloca i32, align 4
  store %struct.evbuffer* %0, %struct.evbuffer** %4, align 8
  store %struct.evbuffer_cb_info* %1, %struct.evbuffer_cb_info** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.bufferevent_openssl*
  store %struct.bufferevent_openssl* %10, %struct.bufferevent_openssl** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.evbuffer_cb_info*, %struct.evbuffer_cb_info** %5, align 8
  %12 = getelementptr inbounds %struct.evbuffer_cb_info, %struct.evbuffer_cb_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %3
  %16 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %7, align 8
  %17 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @BUFFEREVENT_SSL_OPEN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %39

21:                                               ; preds = %15
  %22 = load %struct.evbuffer_cb_info*, %struct.evbuffer_cb_info** %5, align 8
  %23 = getelementptr inbounds %struct.evbuffer_cb_info, %struct.evbuffer_cb_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %7, align 8
  %28 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %7, align 8
  %32 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @bufferevent_add_event_(i32* %30, i32* %34)
  store i32 %35, i32* %8, align 4
  br label %36

36:                                               ; preds = %26, %21
  %37 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %7, align 8
  %38 = call i32 @consider_writing(%struct.bufferevent_openssl* %37)
  br label %39

39:                                               ; preds = %36, %15, %3
  %40 = load i32, i32* %8, align 4
  ret void
}

declare dso_local i32 @bufferevent_add_event_(i32*, i32*) #1

declare dso_local i32 @consider_writing(%struct.bufferevent_openssl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
