; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_terminate_chunked_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_terminate_chunked_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.terminate_state = type { i32, %struct.evhttp_request* }
%struct.timeval = type { i32, i64 }

@terminate_chunked_close_cb = common dso_local global i32 0, align 4
@HTTP_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@EV_TIMEOUT = common dso_local global i32 0, align 4
@terminate_chunked_trickle_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, i8*)* @terminate_chunked_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminate_chunked_cb(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.terminate_state*, align 8
  %6 = alloca %struct.timeval, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.terminate_state*
  store %struct.terminate_state* %8, %struct.terminate_state** %5, align 8
  %9 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %10 = call i32 @evhttp_request_get_connection(%struct.evhttp_request* %9)
  %11 = load i32, i32* @terminate_chunked_close_cb, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @evhttp_connection_set_closecb(i32 %10, i32 %11, i8* %12)
  %14 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %15 = load %struct.terminate_state*, %struct.terminate_state** %5, align 8
  %16 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %15, i32 0, i32 1
  store %struct.evhttp_request* %14, %struct.evhttp_request** %16, align 8
  %17 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %18 = load i32, i32* @HTTP_OK, align 4
  %19 = call i32 @evhttp_send_reply_start(%struct.evhttp_request* %17, i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %20 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 3000, i32* %21, align 8
  %22 = load %struct.terminate_state*, %struct.terminate_state** %5, align 8
  %23 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @EV_TIMEOUT, align 4
  %26 = load i32, i32* @terminate_chunked_trickle_cb, align 4
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @event_base_once(i32 %24, i32 -1, i32 %25, i32 %26, i8* %27, %struct.timeval* %6)
  ret void
}

declare dso_local i32 @evhttp_connection_set_closecb(i32, i32, i8*) #1

declare dso_local i32 @evhttp_request_get_connection(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_send_reply_start(%struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @event_base_once(i32, i32, i32, i32, i8*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
