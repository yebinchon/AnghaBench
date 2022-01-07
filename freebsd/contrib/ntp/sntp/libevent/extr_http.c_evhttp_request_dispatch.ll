; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_request_dispatch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_request_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i64, i32 }
%struct.evhttp_request = type { i32 }

@EVCON_IDLE = common dso_local global i64 0, align 8
@EVCON_WRITING = common dso_local global i64 0, align 8
@evhttp_write_connectioncb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*)* @evhttp_request_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_request_dispatch(%struct.evhttp_connection* %0) #0 {
  %2 = alloca %struct.evhttp_connection*, align 8
  %3 = alloca %struct.evhttp_request*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %2, align 8
  %4 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %5 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %4, i32 0, i32 1
  %6 = call %struct.evhttp_request* @TAILQ_FIRST(i32* %5)
  store %struct.evhttp_request* %6, %struct.evhttp_request** %3, align 8
  %7 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %8 = icmp eq %struct.evhttp_request* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %29

10:                                               ; preds = %1
  %11 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %12 = call i32 @evhttp_connection_stop_detectclose(%struct.evhttp_connection* %11)
  %13 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %14 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @EVCON_IDLE, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @EVUTIL_ASSERT(i32 %18)
  %20 = load i64, i64* @EVCON_WRITING, align 8
  %21 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %22 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  %23 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %24 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %25 = call i32 @evhttp_make_header(%struct.evhttp_connection* %23, %struct.evhttp_request* %24)
  %26 = load %struct.evhttp_connection*, %struct.evhttp_connection** %2, align 8
  %27 = load i32, i32* @evhttp_write_connectioncb, align 4
  %28 = call i32 @evhttp_write_buffer(%struct.evhttp_connection* %26, i32 %27, i32* null)
  br label %29

29:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.evhttp_request* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @evhttp_connection_stop_detectclose(%struct.evhttp_connection*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evhttp_make_header(%struct.evhttp_connection*, %struct.evhttp_request*) #1

declare dso_local i32 @evhttp_write_buffer(%struct.evhttp_connection*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
