; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_get_addr_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_get_addr_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32 }

@test_ok = common dso_local global i64 0, align 8
@exit_base = common dso_local global i32 0, align 4
@http = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@http_request_done = common dso_local global i32 0, align 4
@BASIC_REQUEST_BODY = common dso_local global i64 0, align 8
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Couldn't make request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_get_addr_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_get_addr_test(i8* %0) #0 {
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
  store i32 %11, i32* @exit_base, align 4
  %12 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %13 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @http_setup(i32* %4, i32 %14, i32 0)
  store i64 %15, i64* @http, align 8
  %16 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %17 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call %struct.evhttp_connection* @evhttp_connection_base_new(i32 %18, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.evhttp_connection* %20, %struct.evhttp_connection** %5, align 8
  %21 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %22 = call i32 @tt_assert(%struct.evhttp_connection* %21)
  %23 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %24 = load i8*, i8** %2, align 8
  %25 = call i32 @evhttp_connection_set_closecb(%struct.evhttp_connection* %23, i32 (%struct.evhttp_connection*, i32*)* @http_request_get_addr_on_close, i8* %24)
  %26 = load i32, i32* @http_request_done, align 4
  %27 = load i64, i64* @BASIC_REQUEST_BODY, align 8
  %28 = inttoptr i64 %27 to i8*
  %29 = call %struct.evhttp_request* @evhttp_request_new(i32 %26, i8* %28)
  store %struct.evhttp_request* %29, %struct.evhttp_request** %6, align 8
  %30 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %32 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %33 = call i32 @evhttp_make_request(%struct.evhttp_connection* %30, %struct.evhttp_request* %31, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %34 = icmp eq i32 %33, -1
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %37

37:                                               ; preds = %35, %1
  %38 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %39 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @event_base_dispatch(i32 %40)
  %42 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %43 = call i32 @http_request_get_addr_on_close(%struct.evhttp_connection* %42, i32* null)
  br label %44

44:                                               ; preds = %37
  %45 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %46 = icmp ne %struct.evhttp_connection* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %49 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i64, i64* @http, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i64, i64* @http, align 8
  %55 = call i32 @evhttp_free(i64 %54)
  br label %56

56:                                               ; preds = %53, %50
  ret void
}

declare dso_local i64 @http_setup(i32*, i32, i32) #1

declare dso_local %struct.evhttp_connection* @evhttp_connection_base_new(i32, i32*, i8*, i32) #1

declare dso_local i32 @tt_assert(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_connection_set_closecb(%struct.evhttp_connection*, i32 (%struct.evhttp_connection*, i32*)*, i8*) #1

declare dso_local i32 @http_request_get_addr_on_close(%struct.evhttp_connection*, i32*) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, i8*) #1

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
