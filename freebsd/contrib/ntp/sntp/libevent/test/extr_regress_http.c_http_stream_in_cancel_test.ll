; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_stream_in_cancel_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_stream_in_cancel_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32 }

@http = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@http_stream_in_cancel_done = common dso_local global i32 0, align 4
@http_stream_in_cancel_chunk = common dso_local global i32 0, align 4
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"/chunked\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Couldn't make request\00", align 1
@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_stream_in_cancel_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_stream_in_cancel_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca %struct.evhttp_connection*, align 8
  %5 = alloca %struct.evhttp_request*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.basic_test_data*
  store %struct.basic_test_data* %8, %struct.basic_test_data** %3, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %10 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @http_setup(i32* %6, i32 %11, i32 0)
  store i32 %12, i32* @http, align 4
  %13 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %14 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call %struct.evhttp_connection* @evhttp_connection_base_new(i32 %15, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  store %struct.evhttp_connection* %17, %struct.evhttp_connection** %4, align 8
  %18 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %19 = call i32 @tt_assert(%struct.evhttp_connection* %18)
  %20 = load i32, i32* @http_stream_in_cancel_done, align 4
  %21 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %22 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.evhttp_request* @evhttp_request_new(i32 %20, i32 %23)
  store %struct.evhttp_request* %24, %struct.evhttp_request** %5, align 8
  %25 = load %struct.evhttp_request*, %struct.evhttp_request** %5, align 8
  %26 = load i32, i32* @http_stream_in_cancel_chunk, align 4
  %27 = call i32 @evhttp_request_set_chunked_cb(%struct.evhttp_request* %25, i32 %26)
  %28 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %29 = load %struct.evhttp_request*, %struct.evhttp_request** %5, align 8
  %30 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %31 = call i32 @evhttp_make_request(%struct.evhttp_connection* %28, %struct.evhttp_request* %29, i32 %30, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %1
  %36 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %37 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @event_base_dispatch(i32 %38)
  store i32 1, i32* @test_ok, align 4
  br label %40

40:                                               ; preds = %35
  %41 = load %struct.evhttp_connection*, %struct.evhttp_connection** %4, align 8
  %42 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %41)
  %43 = load i32, i32* @http, align 4
  %44 = call i32 @evhttp_free(i32 %43)
  ret void
}

declare dso_local i32 @http_setup(i32*, i32, i32) #1

declare dso_local %struct.evhttp_connection* @evhttp_connection_base_new(i32, i32*, i8*, i32) #1

declare dso_local i32 @tt_assert(%struct.evhttp_connection*) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, i32) #1

declare dso_local i32 @evhttp_request_set_chunked_cb(%struct.evhttp_request*, i32) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_connection*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @tt_abort_msg(i8*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
