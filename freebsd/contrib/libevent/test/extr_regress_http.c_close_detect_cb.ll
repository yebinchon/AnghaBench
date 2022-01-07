; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_close_detect_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_close_detect_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.event_base = type { i32 }
%struct.timeval = type { i32, i64 }

@HTTP_OK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"Failed\00", align 1
@EV_TIMEOUT = common dso_local global i32 0, align 4
@close_detect_launch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, i8*)* @close_detect_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_detect_cb(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evhttp_connection*, align 8
  %6 = alloca %struct.event_base*, align 8
  %7 = alloca %struct.timeval, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.evhttp_connection*
  store %struct.evhttp_connection* %9, %struct.evhttp_connection** %5, align 8
  %10 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %11 = call %struct.event_base* @evhttp_connection_get_base(%struct.evhttp_connection* %10)
  store %struct.event_base* %11, %struct.event_base** %6, align 8
  %12 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %13 = icmp ne %struct.evhttp_request* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %2
  %15 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %16 = call i64 @evhttp_request_get_response_code(%struct.evhttp_request* %15)
  %17 = load i64, i64* @HTTP_OK, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %14, %2
  %22 = call i32 @evutil_timerclear(%struct.timeval* %7)
  %23 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  store i32 600000, i32* %24, align 8
  %25 = load %struct.event_base*, %struct.event_base** %6, align 8
  %26 = load i32, i32* @EV_TIMEOUT, align 4
  %27 = load i32, i32* @close_detect_launch, align 4
  %28 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %29 = call i32 @event_base_once(%struct.event_base* %25, i32 -1, i32 %26, i32 %27, %struct.evhttp_connection* %28, %struct.timeval* %7)
  br label %30

30:                                               ; preds = %21
  ret void
}

declare dso_local %struct.event_base* @evhttp_connection_get_base(%struct.evhttp_connection*) #1

declare dso_local i64 @evhttp_request_get_response_code(%struct.evhttp_request*) #1

declare dso_local i32 @tt_abort_msg(i8*) #1

declare dso_local i32 @evutil_timerclear(%struct.timeval*) #1

declare dso_local i32 @event_base_once(%struct.event_base*, i32, i32, i32, %struct.evhttp_connection*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
