; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_stream_in_test_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_stream_in_test_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.evbuffer = type { i32 }
%struct.evhttp_request = type { i32 }
%struct.evhttp = type { i32 }

@exit_base = common dso_local global i32 0, align 4
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
  %13 = alloca %struct.evhttp*, align 8
  store %struct.basic_test_data* %0, %struct.basic_test_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %14, %struct.evbuffer** %10, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %16 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.evhttp* @http_setup(i32* %12, i32 %17, i32 0)
  store %struct.evhttp* %18, %struct.evhttp** %13, align 8
  %19 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %20 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* @exit_base, align 4
  %22 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %23 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %12, align 4
  %26 = call %struct.evhttp_connection* @evhttp_connection_base_new(i32 %24, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %25)
  store %struct.evhttp_connection* %26, %struct.evhttp_connection** %9, align 8
  %27 = load %struct.evhttp_connection*, %struct.evhttp_connection** %9, align 8
  %28 = call i32 @tt_assert(%struct.evhttp_connection* %27)
  %29 = load i32, i32* @http_stream_in_done, align 4
  %30 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %31 = call %struct.evhttp_request* @evhttp_request_new(i32 %29, %struct.evbuffer* %30)
  store %struct.evhttp_request* %31, %struct.evhttp_request** %11, align 8
  %32 = load %struct.evhttp_request*, %struct.evhttp_request** %11, align 8
  %33 = load i32, i32* @http_stream_in_chunk, align 4
  %34 = call i32 @evhttp_request_set_chunked_cb(%struct.evhttp_request* %32, i32 %33)
  %35 = load %struct.evhttp_connection*, %struct.evhttp_connection** %9, align 8
  %36 = load %struct.evhttp_request*, %struct.evhttp_request** %11, align 8
  %37 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @evhttp_make_request(%struct.evhttp_connection* %35, %struct.evhttp_request* %36, i32 %37, i8* %38)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %43

41:                                               ; preds = %4
  %42 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %4
  %44 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %45 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @event_base_dispatch(i32 %46)
  %48 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %49 = call i64 @evbuffer_get_length(%struct.evbuffer* %48)
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %43
  %53 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %54 = call i64 @evbuffer_get_length(%struct.evbuffer* %53)
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %57 = call i64 @evbuffer_pullup(%struct.evbuffer* %56, i32 -1)
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 @TT_DIE(i8* %58)
  br label %60

60:                                               ; preds = %52, %43
  %61 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %62 = call i64 @evbuffer_pullup(%struct.evbuffer* %61, i32 -1)
  %63 = load i8*, i8** %8, align 8
  %64 = load i64, i64* %7, align 8
  %65 = call i64 @memcmp(i64 %62, i8* %63, i64 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %60
  store i32 1, i32* @test_ok, align 4
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %72 = icmp ne %struct.evbuffer* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %70
  %74 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %75 = call i32 @evbuffer_free(%struct.evbuffer* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load %struct.evhttp_connection*, %struct.evhttp_connection** %9, align 8
  %78 = icmp ne %struct.evhttp_connection* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.evhttp_connection*, %struct.evhttp_connection** %9, align 8
  %81 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load %struct.evhttp*, %struct.evhttp** %13, align 8
  %84 = icmp ne %struct.evhttp* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load %struct.evhttp*, %struct.evhttp** %13, align 8
  %87 = call i32 @evhttp_free(%struct.evhttp* %86)
  br label %88

88:                                               ; preds = %85, %82
  ret void
}

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local %struct.evhttp* @http_setup(i32*, i32, i32) #1

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

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
