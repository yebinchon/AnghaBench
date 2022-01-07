; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_negative_content_length_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_negative_content_length_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32 }

@test_ok = common dso_local global i64 0, align 8
@http = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@http_request_bad = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"X-Negative\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"makeitso\00", align 1
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Couldn't make request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_negative_content_length_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_negative_content_length_test(i8* %0) #0 {
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
  %17 = call %struct.evhttp_connection* @evhttp_connection_base_new(i32 %15, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %16)
  store %struct.evhttp_connection* %17, %struct.evhttp_connection** %5, align 8
  %18 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %19 = call i32 @tt_assert(%struct.evhttp_connection* %18)
  %20 = load i32, i32* @http_request_bad, align 4
  %21 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %22 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.evhttp_request* @evhttp_request_new(i32 %20, i32 %23)
  store %struct.evhttp_request* %24, %struct.evhttp_request** %6, align 8
  %25 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %26 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %25)
  %27 = call i32 @evhttp_add_header(i32 %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %29 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %30 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %31 = call i32 @evhttp_make_request(%struct.evhttp_connection* %28, %struct.evhttp_request* %29, i32 %30, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %35

35:                                               ; preds = %33, %1
  %36 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %37 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @event_base_dispatch(i32 %38)
  br label %40

40:                                               ; preds = %35
  %41 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %42 = icmp ne %struct.evhttp_connection* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %45 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %44)
  br label %46

46:                                               ; preds = %43, %40
  %47 = load i64, i64* @http, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load i64, i64* @http, align 8
  %51 = call i32 @evhttp_free(i64 %50)
  br label %52

52:                                               ; preds = %49, %46
  ret void
}

declare dso_local i64 @http_setup(i32*, i32, i32) #1

declare dso_local %struct.evhttp_connection* @evhttp_connection_base_new(i32, i32*, i8*, i32) #1

declare dso_local i32 @tt_assert(%struct.evhttp_connection*) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, i32) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_request_get_output_headers(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_connection*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @tt_abort_msg(i8*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
