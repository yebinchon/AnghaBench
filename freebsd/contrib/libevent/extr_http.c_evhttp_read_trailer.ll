; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_read_trailer.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_read_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32 }
%struct.evbuffer = type { i32 }

@EVREQ_HTTP_DATA_TOO_LONG = common dso_local global i32 0, align 4
@EV_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, %struct.evhttp_request*)* @evhttp_read_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_read_trailer(%struct.evhttp_connection* %0, %struct.evhttp_request* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store %struct.evhttp_request* %1, %struct.evhttp_request** %4, align 8
  %6 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %7 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.evbuffer* @bufferevent_get_input(i32 %8)
  store %struct.evbuffer* %9, %struct.evbuffer** %5, align 8
  %10 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %11 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %12 = call i32 @evhttp_parse_headers_(%struct.evhttp_request* %10, %struct.evbuffer* %11)
  switch i32 %12, label %26 [
    i32 131, label %13
    i32 130, label %13
    i32 132, label %17
    i32 129, label %25
    i32 128, label %25
  ]

13:                                               ; preds = %2, %2
  %14 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %15 = load i32, i32* @EVREQ_HTTP_DATA_TOO_LONG, align 4
  %16 = call i32 @evhttp_connection_fail_(%struct.evhttp_connection* %14, i32 %15)
  br label %27

17:                                               ; preds = %2
  %18 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %19 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @EV_READ, align 4
  %22 = call i32 @bufferevent_disable(i32 %20, i32 %21)
  %23 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %24 = call i32 @evhttp_connection_done(%struct.evhttp_connection* %23)
  br label %27

25:                                               ; preds = %2, %2
  br label %26

26:                                               ; preds = %2, %25
  br label %27

27:                                               ; preds = %26, %17, %13
  ret void
}

declare dso_local %struct.evbuffer* @bufferevent_get_input(i32) #1

declare dso_local i32 @evhttp_parse_headers_(%struct.evhttp_request*, %struct.evbuffer*) #1

declare dso_local i32 @evhttp_connection_fail_(%struct.evhttp_connection*, i32) #1

declare dso_local i32 @bufferevent_disable(i32, i32) #1

declare dso_local i32 @evhttp_connection_done(%struct.evhttp_connection*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
