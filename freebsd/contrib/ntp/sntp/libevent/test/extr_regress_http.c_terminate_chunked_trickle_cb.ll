; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_terminate_chunked_trickle_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_terminate_chunked_trickle_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terminate_state = type { %struct.terminate_state*, i32 }
%struct.evbuffer = type { i32 }
%struct.timeval = type { i32, i64 }

@test_ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%p\00", align 1
@EV_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @terminate_chunked_trickle_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @terminate_chunked_trickle_cb(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.terminate_state*, align 8
  %8 = alloca %struct.evbuffer*, align 8
  %9 = alloca %struct.timeval, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.terminate_state*
  store %struct.terminate_state* %11, %struct.terminate_state** %7, align 8
  %12 = load %struct.terminate_state*, %struct.terminate_state** %7, align 8
  %13 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32* @evhttp_request_get_connection(i32 %14)
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  store i32 1, i32* @test_ok, align 4
  %18 = load %struct.terminate_state*, %struct.terminate_state** %7, align 8
  %19 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @evhttp_request_free(i32 %20)
  %22 = load %struct.terminate_state*, %struct.terminate_state** %7, align 8
  %23 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %22, i32 0, i32 0
  %24 = load %struct.terminate_state*, %struct.terminate_state** %23, align 8
  %25 = call i32 @event_base_loopexit(%struct.terminate_state* %24, i32* null)
  br label %52

26:                                               ; preds = %3
  %27 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %27, %struct.evbuffer** %8, align 8
  %28 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %29 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %30 = call i32 @evbuffer_add_printf(%struct.evbuffer* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), %struct.evbuffer* %29)
  %31 = load %struct.terminate_state*, %struct.terminate_state** %7, align 8
  %32 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %35 = call i32 @evhttp_send_reply_chunk(i32 %33, %struct.evbuffer* %34)
  %36 = load %struct.evbuffer*, %struct.evbuffer** %8, align 8
  %37 = call i32 @evbuffer_free(%struct.evbuffer* %36)
  %38 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 0
  store i32 3000, i32* %39, align 8
  %40 = load %struct.terminate_state*, %struct.terminate_state** %7, align 8
  %41 = call i32 @EVUTIL_ASSERT(%struct.terminate_state* %40)
  %42 = load %struct.terminate_state*, %struct.terminate_state** %7, align 8
  %43 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %42, i32 0, i32 0
  %44 = load %struct.terminate_state*, %struct.terminate_state** %43, align 8
  %45 = call i32 @EVUTIL_ASSERT(%struct.terminate_state* %44)
  %46 = load %struct.terminate_state*, %struct.terminate_state** %7, align 8
  %47 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %46, i32 0, i32 0
  %48 = load %struct.terminate_state*, %struct.terminate_state** %47, align 8
  %49 = load i32, i32* @EV_TIMEOUT, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @event_base_once(%struct.terminate_state* %48, i32 -1, i32 %49, void (i32, i16, i8*)* @terminate_chunked_trickle_cb, i8* %50, %struct.timeval* %9)
  br label %52

52:                                               ; preds = %26, %17
  ret void
}

declare dso_local i32* @evhttp_request_get_connection(i32) #1

declare dso_local i32 @evhttp_request_free(i32) #1

declare dso_local i32 @event_base_loopexit(%struct.terminate_state*, i32*) #1

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i8*, %struct.evbuffer*) #1

declare dso_local i32 @evhttp_send_reply_chunk(i32, %struct.evbuffer*) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

declare dso_local i32 @EVUTIL_ASSERT(%struct.terminate_state*) #1

declare dso_local i32 @event_base_once(%struct.terminate_state*, i32, i32, void (i32, i16, i8*)*, i8*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
