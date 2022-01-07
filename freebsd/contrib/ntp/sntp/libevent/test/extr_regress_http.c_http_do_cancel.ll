; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_do_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_do_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.event_base = type { i32 }

@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @http_do_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_do_cancel(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.evhttp_request*, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.event_base*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.evhttp_request*
  store %struct.evhttp_request* %11, %struct.evhttp_request** %7, align 8
  %12 = call i32 @evutil_timerclear(%struct.timeval* %8)
  %13 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  store i64 0, i64* %13, align 8
  %14 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  store i32 500000, i32* %14, align 8
  %15 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %16 = call i32 @evhttp_request_get_connection(%struct.evhttp_request* %15)
  %17 = call %struct.event_base* @evhttp_connection_get_base(i32 %16)
  store %struct.event_base* %17, %struct.event_base** %9, align 8
  %18 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %19 = call i32 @evhttp_cancel_request(%struct.evhttp_request* %18)
  %20 = load %struct.event_base*, %struct.event_base** %9, align 8
  %21 = call i32 @event_base_loopexit(%struct.event_base* %20, %struct.timeval* %8)
  %22 = load i32, i32* @test_ok, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* @test_ok, align 4
  ret void
}

declare dso_local i32 @evutil_timerclear(%struct.timeval*) #1

declare dso_local %struct.event_base* @evhttp_connection_get_base(i32) #1

declare dso_local i32 @evhttp_request_get_connection(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_cancel_request(%struct.evhttp_request*) #1

declare dso_local i32 @event_base_loopexit(%struct.event_base*, %struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
