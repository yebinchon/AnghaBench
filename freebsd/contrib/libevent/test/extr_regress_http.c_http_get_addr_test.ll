; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_get_addr_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_get_addr_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32 }
%struct.evhttp = type { i32 }

@test_ok = common dso_local global i64 0, align 8
@exit_base = common dso_local global i32 0, align 4
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
  %7 = alloca %struct.evhttp*, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.basic_test_data*
  store %struct.basic_test_data* %9, %struct.basic_test_data** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %5, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %6, align 8
  %10 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %11 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.evhttp* @http_setup(i32* %4, i32 %12, i32 0)
  store %struct.evhttp* %13, %struct.evhttp** %7, align 8
  store i64 0, i64* @test_ok, align 8
  %14 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %15 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* @exit_base, align 4
  %17 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %18 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call %struct.evhttp_connection* @evhttp_connection_base_new(i32 %19, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %20)
  store %struct.evhttp_connection* %21, %struct.evhttp_connection** %5, align 8
  %22 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %23 = call i32 @tt_assert(%struct.evhttp_connection* %22)
  %24 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @evhttp_connection_set_closecb(%struct.evhttp_connection* %24, i32 (%struct.evhttp_connection*, i32*)* @http_request_get_addr_on_close, i8* %25)
  %27 = load i32, i32* @http_request_done, align 4
  %28 = load i64, i64* @BASIC_REQUEST_BODY, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call %struct.evhttp_request* @evhttp_request_new(i32 %27, i8* %29)
  store %struct.evhttp_request* %30, %struct.evhttp_request** %6, align 8
  %31 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %32 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %33 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %34 = call i32 @evhttp_make_request(%struct.evhttp_connection* %31, %struct.evhttp_request* %32, i32 %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %1
  %39 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %40 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @event_base_dispatch(i32 %41)
  %43 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %44 = call i32 @http_request_get_addr_on_close(%struct.evhttp_connection* %43, i32* null)
  br label %45

45:                                               ; preds = %38
  %46 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %47 = icmp ne %struct.evhttp_connection* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %50 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load %struct.evhttp*, %struct.evhttp** %7, align 8
  %53 = icmp ne %struct.evhttp* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load %struct.evhttp*, %struct.evhttp** %7, align 8
  %56 = call i32 @evhttp_free(%struct.evhttp* %55)
  br label %57

57:                                               ; preds = %54, %51
  ret void
}

declare dso_local %struct.evhttp* @http_setup(i32*, i32, i32) #1

declare dso_local %struct.evhttp_connection* @evhttp_connection_base_new(i32, i32*, i8*, i32) #1

declare dso_local i32 @tt_assert(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_connection_set_closecb(%struct.evhttp_connection*, i32 (%struct.evhttp_connection*, i32*)*, i8*) #1

declare dso_local i32 @http_request_get_addr_on_close(%struct.evhttp_connection*, i32*) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, i8*) #1

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
