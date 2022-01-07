; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_do_handshake.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_do_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent_openssl = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@BEV_EVENT_CONNECTED = common dso_local global i32 0, align 4
@BEV_EVENT_READING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bufferevent_openssl*)* @do_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_handshake(%struct.bufferevent_openssl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bufferevent_openssl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bufferevent_openssl* %0, %struct.bufferevent_openssl** %3, align 8
  %7 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %8 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %10 [
    i32 130, label %11
    i32 131, label %13
    i32 132, label %13
  ]

10:                                               ; preds = %1
  br label %11

11:                                               ; preds = %1, %10
  %12 = call i32 @EVUTIL_ASSERT(i32 0)
  store i32 -1, i32* %2, align 4
  br label %74

13:                                               ; preds = %1, %1
  %14 = call i32 (...) @ERR_clear_error()
  %15 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %16 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @SSL_do_handshake(i32 %17)
  store i32 %18, i32* %4, align 4
  br label %19

19:                                               ; preds = %13
  %20 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %21 = call i32 @decrement_buckets(%struct.bufferevent_openssl* %20)
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %49

24:                                               ; preds = %19
  %25 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %26 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = call i32 @event_get_fd(i32* %28)
  store i32 %29, i32* %5, align 4
  %30 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %31 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %30, i32 0, i32 0
  store i32 130, i32* %31, align 4
  %32 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @set_open_callbacks(%struct.bufferevent_openssl* %32, i32 %33)
  %35 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %36 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %39 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bufferevent_enable(%struct.TYPE_5__* %37, i32 %42)
  %44 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %45 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* @BEV_EVENT_CONNECTED, align 4
  %48 = call i32 @bufferevent_run_eventcb_(%struct.TYPE_5__* %46, i32 %47, i32 0)
  store i32 1, i32* %2, align 4
  br label %74

49:                                               ; preds = %19
  %50 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %51 = getelementptr inbounds %struct.bufferevent_openssl, %struct.bufferevent_openssl* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @SSL_get_error(i32 %52, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @print_err(i32 %55)
  %57 = load i32, i32* %6, align 4
  switch i32 %57, label %68 [
    i32 128, label %58
    i32 129, label %63
  ]

58:                                               ; preds = %49
  %59 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %60 = call i32 @stop_reading(%struct.bufferevent_openssl* %59)
  %61 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %62 = call i32 @start_writing(%struct.bufferevent_openssl* %61)
  store i32 %62, i32* %2, align 4
  br label %74

63:                                               ; preds = %49
  %64 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %65 = call i32 @stop_writing(%struct.bufferevent_openssl* %64)
  %66 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %67 = call i32 @start_reading(%struct.bufferevent_openssl* %66)
  store i32 %67, i32* %2, align 4
  br label %74

68:                                               ; preds = %49
  %69 = load %struct.bufferevent_openssl*, %struct.bufferevent_openssl** %3, align 8
  %70 = load i32, i32* @BEV_EVENT_READING, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @conn_closed(%struct.bufferevent_openssl* %69, i32 %70, i32 %71, i32 %72)
  store i32 -1, i32* %2, align 4
  br label %74

74:                                               ; preds = %68, %63, %58, %24, %11
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @ERR_clear_error(...) #1

declare dso_local i32 @SSL_do_handshake(i32) #1

declare dso_local i32 @decrement_buckets(%struct.bufferevent_openssl*) #1

declare dso_local i32 @event_get_fd(i32*) #1

declare dso_local i32 @set_open_callbacks(%struct.bufferevent_openssl*, i32) #1

declare dso_local i32 @bufferevent_enable(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @bufferevent_run_eventcb_(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @SSL_get_error(i32, i32) #1

declare dso_local i32 @print_err(i32) #1

declare dso_local i32 @stop_reading(%struct.bufferevent_openssl*) #1

declare dso_local i32 @start_writing(%struct.bufferevent_openssl*) #1

declare dso_local i32 @stop_writing(%struct.bufferevent_openssl*) #1

declare dso_local i32 @start_reading(%struct.bufferevent_openssl*) #1

declare dso_local i32 @conn_closed(%struct.bufferevent_openssl*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
