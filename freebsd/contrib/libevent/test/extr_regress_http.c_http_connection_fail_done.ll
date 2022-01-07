; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_connection_fail_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_connection_fail_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.event_base = type { i32 }

@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, i8*)* @http_connection_fail_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_connection_fail_done(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evhttp_connection*, align 8
  %6 = alloca %struct.event_base*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.evhttp_connection*
  store %struct.evhttp_connection* %8, %struct.evhttp_connection** %5, align 8
  %9 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %10 = call %struct.event_base* @evhttp_connection_get_base(%struct.evhttp_connection* %9)
  store %struct.event_base* %10, %struct.event_base** %6, align 8
  %11 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %12 = icmp ne %struct.evhttp_request* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @tt_assert(i32 %14)
  %16 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %17 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %16)
  store i32 1, i32* @test_ok, align 4
  br label %18

18:                                               ; preds = %2
  %19 = load %struct.event_base*, %struct.event_base** %6, align 8
  %20 = call i32 @event_base_loopexit(%struct.event_base* %19, i32* null)
  ret void
}

declare dso_local %struct.event_base* @evhttp_connection_get_base(%struct.evhttp_connection*) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

declare dso_local i32 @event_base_loopexit(%struct.event_base*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
