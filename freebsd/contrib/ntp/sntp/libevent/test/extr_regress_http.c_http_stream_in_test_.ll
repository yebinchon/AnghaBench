; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_stream_in_test_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_stream_in_test_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.evbuffer = type { i32 }
%struct.evhttp_request = type { i32 }

@exit_base = common dso_local global i32 0, align 4
@http = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@http_stream_in_done = common dso_local global i32 0, align 4
@http_stream_in_chunk = common dso_local global i32 0, align 4
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Couldn't make request\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"reply length %lu; expected %lu; FAILED (%s)\0A\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"Memory mismatch\00", align 1
@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.basic_test_data*, i8*, i64, i8*)* @http_stream_in_test_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_stream_in_test_(%struct.basic_test_data* %0, i8* %1, i64 %2, i8* %3) #0 {
  %5 = alloca %struct.basic_test_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.evhttp_connection*, align 8
  %10 = alloca %struct.evbuffer*, align 8
  %11 = alloca %struct.evhttp_request*, align 8
  %12 = alloca i32, align 4
  store %struct.basic_test_data* %0, %struct.basic_test_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %13 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %13, %struct.evbuffer** %10, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %11, align 8
  store i32 0, i32* %12, align 4
  %14 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %15 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* @exit_base, align 4
  %17 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %18 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @http_setup(i32* %12, i32 %19, i32 0)
  store i64 %20, i64* @http, align 8
  %21 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %22 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %12, align 4
  %25 = call %struct.evhttp_connection* @evhttp_connection_base_new(i32 %23, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %24)
  store %struct.evhttp_connection* %25, %struct.evhttp_connection** %9, align 8
  %26 = load %struct.evhttp_connection*, %struct.evhttp_connection** %9, align 8
  %27 = call i32 @tt_assert(%struct.evhttp_connection* %26)
  %28 = load i32, i32* @http_stream_in_done, align 4
  %29 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %30 = call %struct.evhttp_request* @evhttp_request_new(i32 %28, %struct.evbuffer* %29)
  store %struct.evhttp_request* %30, %struct.evhttp_request** %11, align 8
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %11, align 8
  %32 = load i32, i32* @http_stream_in_chunk, align 4
  %33 = call i32 @evhttp_request_set_chunked_cb(%struct.evhttp_request* %31, i32 %32)
  %34 = load %struct.evhttp_connection*, %struct.evhttp_connection** %9, align 8
  %35 = load %struct.evhttp_request*, %struct.evhttp_request** %11, align 8
  %36 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @evhttp_make_request(%struct.evhttp_connection* %34, %struct.evhttp_request* %35, i32 %36, i8* %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %40, %4
  %43 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %44 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @event_base_dispatch(i32 %45)
  %47 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %48 = call i64 @evbuffer_get_length(%struct.evbuffer* %47)
  %49 = load i64, i64* %7, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %42
  %52 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %53 = call i64 @evbuffer_get_length(%struct.evbuffer* %52)
  %54 = load i64, i64* %7, align 8
  %55 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %56 = call i64 @evbuffer_pullup(%struct.evbuffer* %55, i32 -1)
  %57 = inttoptr i64 %56 to i8*
  %58 = call i32 @TT_DIE(i8* %57)
  br label %59

59:                                               ; preds = %51, %42
  %60 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %61 = call i64 @evbuffer_pullup(%struct.evbuffer* %60, i32 -1)
  %62 = load i8*, i8** %8, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @memcmp(i64 %61, i8* %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %68

68:                                               ; preds = %66, %59
  store i32 1, i32* @test_ok, align 4
  br label %69

69:                                               ; preds = %68
  %70 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %71 = icmp ne %struct.evbuffer* %70, null
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %74 = call i32 @evbuffer_free(%struct.evbuffer* %73)
  br label %75

75:                                               ; preds = %72, %69
  %76 = load %struct.evhttp_connection*, %struct.evhttp_connection** %9, align 8
  %77 = icmp ne %struct.evhttp_connection* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load %struct.evhttp_connection*, %struct.evhttp_connection** %9, align 8
  %80 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %79)
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i64, i64* @http, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i64, i64* @http, align 8
  %86 = call i32 @evhttp_free(i64 %85)
  br label %87

87:                                               ; preds = %84, %81
  ret void
}

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i64 @http_setup(i32*, i32, i32) #1

declare dso_local %struct.evhttp_connection* @evhttp_connection_base_new(i32, i32*, i8*, i32) #1

declare dso_local i32 @tt_assert(%struct.evhttp_connection*) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, %struct.evbuffer*) #1

declare dso_local i32 @evhttp_request_set_chunked_cb(%struct.evhttp_request*, i32) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_connection*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @tt_abort_msg(i8*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @TT_DIE(i8*) #1

declare dso_local i64 @evbuffer_pullup(%struct.evbuffer*, i32) #1

declare dso_local i64 @memcmp(i64, i8*, i64) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
