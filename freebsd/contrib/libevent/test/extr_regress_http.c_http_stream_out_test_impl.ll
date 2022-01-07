; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_stream_out_test_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_stream_out_test_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32 }
%struct.bufferevent = type { i32 }
%struct.evhttp = type { i32 }

@HTTP_BIND_SSL = common dso_local global i32 0, align 4
@test_ok = common dso_local global i64 0, align 8
@exit_base = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@http_request_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"This is funnybut not hilarious.bwv 1052\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"somehost\00", align 1
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"/streamed\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Couldn't make request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @http_stream_out_test_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_stream_out_test_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.basic_test_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.evhttp_connection*, align 8
  %8 = alloca %struct.evhttp_request*, align 8
  %9 = alloca %struct.bufferevent*, align 8
  %10 = alloca %struct.evhttp*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.basic_test_data*
  store %struct.basic_test_data* %12, %struct.basic_test_data** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %7, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %8, align 8
  %13 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %14 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @HTTP_BIND_SSL, align 4
  br label %21

20:                                               ; preds = %2
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  %23 = call %struct.evhttp* @http_setup(i32* %6, i32 %15, i32 %22)
  store %struct.evhttp* %23, %struct.evhttp** %10, align 8
  store i64 0, i64* @test_ok, align 8
  %24 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %25 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* @exit_base, align 4
  %27 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %28 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call %struct.bufferevent* @create_bev(i32 %29, i32 -1, i32 %30)
  store %struct.bufferevent* %31, %struct.bufferevent** %9, align 8
  %32 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %33 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.bufferevent*, %struct.bufferevent** %9, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call %struct.evhttp_connection* @evhttp_connection_base_bufferevent_new(i32 %34, i32* null, %struct.bufferevent* %35, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %36)
  store %struct.evhttp_connection* %37, %struct.evhttp_connection** %7, align 8
  %38 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %39 = call i32 @tt_assert(%struct.evhttp_connection* %38)
  %40 = load i32, i32* @http_request_done, align 4
  %41 = call %struct.evhttp_request* @evhttp_request_new(i32 %40, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store %struct.evhttp_request* %41, %struct.evhttp_request** %8, align 8
  %42 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %43 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %42)
  %44 = call i32 @evhttp_add_header(i32 %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %46 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %47 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %48 = call i32 @evhttp_make_request(%struct.evhttp_connection* %45, %struct.evhttp_request* %46, i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp eq i32 %48, -1
  br i1 %49, label %50, label %52

50:                                               ; preds = %21
  %51 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %52

52:                                               ; preds = %50, %21
  %53 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %54 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @event_base_dispatch(i32 %55)
  br label %57

57:                                               ; preds = %52
  %58 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %59 = icmp ne %struct.evhttp_connection* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %62 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %61)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load %struct.evhttp*, %struct.evhttp** %10, align 8
  %65 = icmp ne %struct.evhttp* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.evhttp*, %struct.evhttp** %10, align 8
  %68 = call i32 @evhttp_free(%struct.evhttp* %67)
  br label %69

69:                                               ; preds = %66, %63
  ret void
}

declare dso_local %struct.evhttp* @http_setup(i32*, i32, i32) #1

declare dso_local %struct.bufferevent* @create_bev(i32, i32, i32) #1

declare dso_local %struct.evhttp_connection* @evhttp_connection_base_bufferevent_new(i32, i32*, %struct.bufferevent*, i8*, i32) #1

declare dso_local i32 @tt_assert(%struct.evhttp_connection*) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, i8*) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_request_get_output_headers(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_connection*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @tt_abort_msg(i8*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
