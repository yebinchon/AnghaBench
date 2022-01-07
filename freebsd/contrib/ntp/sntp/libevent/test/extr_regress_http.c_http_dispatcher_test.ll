; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_dispatcher_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_dispatcher_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evhttp_connection = type opaque
%struct.evhttp_request = type { i32 }

@test_ok = common dso_local global i64 0, align 8
@http = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@http_dispatcher_test_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"somehost\00", align 1
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"/?arg=val\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Couldn't make request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_dispatcher_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_dispatcher_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evhttp_connection*, align 8
  %6 = alloca %struct.evhttp_request*, align 8
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.basic_test_data*
  store %struct.basic_test_data* %8, %struct.basic_test_data** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %5, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %6, align 8
  store i64 0, i64* @test_ok, align 8
  %9 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %10 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @http_setup(i32* %4, i32 %11, i32 0)
  store i64 %12, i64* @http, align 8
  %13 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %14 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call %struct.evhttp_request* @evhttp_connection_base_new(i32 %15, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = bitcast %struct.evhttp_request* %17 to %struct.evhttp_connection*
  store %struct.evhttp_connection* %18, %struct.evhttp_connection** %5, align 8
  %19 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %20 = bitcast %struct.evhttp_connection* %19 to %struct.evhttp_request*
  %21 = call i32 @tt_assert(%struct.evhttp_request* %20)
  %22 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %23 = bitcast %struct.evhttp_connection* %22 to %struct.evhttp_request*
  %24 = call i32 @evhttp_connection_set_local_address(%struct.evhttp_request* %23, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @http_dispatcher_test_done, align 4
  %26 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %27 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.evhttp_request* @evhttp_request_new(i32 %25, i32 %28)
  store %struct.evhttp_request* %29, %struct.evhttp_request** %6, align 8
  %30 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %31 = call i32 @tt_assert(%struct.evhttp_request* %30)
  %32 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %33 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %32)
  %34 = call i32 @evhttp_add_header(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %36 = bitcast %struct.evhttp_connection* %35 to %struct.evhttp_request*
  %37 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %38 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %39 = call i32 @evhttp_make_request(%struct.evhttp_request* %36, %struct.evhttp_request* %37, i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %1
  %42 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %1
  %44 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %45 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @event_base_dispatch(i32 %46)
  br label %48

48:                                               ; preds = %43
  %49 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %50 = icmp ne %struct.evhttp_connection* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %48
  %52 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %53 = bitcast %struct.evhttp_connection* %52 to %struct.evhttp_request*
  %54 = call i32 @evhttp_connection_free(%struct.evhttp_request* %53)
  br label %55

55:                                               ; preds = %51, %48
  %56 = load i64, i64* @http, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %55
  %59 = load i64, i64* @http, align 8
  %60 = call i32 @evhttp_free(i64 %59)
  br label %61

61:                                               ; preds = %58, %55
  ret void
}

declare dso_local i64 @http_setup(i32*, i32, i32) #1

declare dso_local %struct.evhttp_request* @evhttp_connection_base_new(i32, i32*, i8*, i32) #1

declare dso_local i32 @tt_assert(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_connection_set_local_address(%struct.evhttp_request*, i8*) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, i32) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_request_get_output_headers(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_request*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @tt_abort_msg(i8*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
