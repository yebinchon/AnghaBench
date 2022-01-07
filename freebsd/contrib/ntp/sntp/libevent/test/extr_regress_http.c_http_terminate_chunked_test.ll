; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_terminate_chunked_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_terminate_chunked_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.bufferevent = type { i32 }
%struct.timeval = type { i32 }
%struct.terminate_state = type { i64, %struct.bufferevent*, i64, i32 }

@test_ok = common dso_local global i64 0, align 8
@http = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@terminate_chunked_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@terminate_readcb = common dso_local global i32 0, align 4
@http_writecb = common dso_local global i32 0, align 4
@http_errorcb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"GET /test HTTP/1.1\0D\0AHost: some\0D\0A\0D\0A\00", align 1
@EV_TIMEOUT = common dso_local global i32 0, align 4
@terminate_chunked_client = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_terminate_chunked_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_terminate_chunked_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca %struct.timeval, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.terminate_state, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.basic_test_data*
  store %struct.basic_test_data* %11, %struct.basic_test_data** %3, align 8
  store %struct.bufferevent* null, %struct.bufferevent** %4, align 8
  store i32 0, i32* %7, align 4
  store i64 -1, i64* %8, align 8
  store i64 0, i64* @test_ok, align 8
  %12 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %13 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @http_setup(i32* %7, i32 %14, i32 0)
  store i64 %15, i64* @http, align 8
  %16 = load i64, i64* @http, align 8
  %17 = call i32 @evhttp_del_cb(i64 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = load i64, i64* @http, align 8
  %19 = load i32, i32* @terminate_chunked_cb, align 4
  %20 = call i64 @evhttp_set_cb(i64 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19, %struct.terminate_state* %9)
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @tt_assert(i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @http_connect(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  store i64 %25, i64* %8, align 8
  %26 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %27 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %8, align 8
  %30 = call %struct.bufferevent* @bufferevent_socket_new(i32 %28, i64 %29, i32 0)
  store %struct.bufferevent* %30, %struct.bufferevent** %4, align 8
  %31 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %32 = load i32, i32* @terminate_readcb, align 4
  %33 = load i32, i32* @http_writecb, align 4
  %34 = load i32, i32* @http_errorcb, align 4
  %35 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %36 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bufferevent_setcb(%struct.bufferevent* %31, i32 %32, i32 %33, i32 %34, i32 %37)
  %39 = call i32 @memset(%struct.terminate_state* %9, i32 0, i32 32)
  %40 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %41 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %9, i32 0, i32 3
  store i32 %42, i32* %43, align 8
  %44 = load i64, i64* %8, align 8
  %45 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %9, i32 0, i32 2
  store i64 %44, i64* %45, align 8
  %46 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %47 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %9, i32 0, i32 1
  store %struct.bufferevent* %46, %struct.bufferevent** %47, align 8
  %48 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %9, i32 0, i32 0
  store i64 0, i64* %48, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8** %6, align 8
  %49 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @strlen(i8* %51)
  %53 = call i32 @bufferevent_write(%struct.bufferevent* %49, i8* %50, i32 %52)
  %54 = call i32 @evutil_timerclear(%struct.timeval* %5)
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i32 10000, i32* %55, align 4
  %56 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %57 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EV_TIMEOUT, align 4
  %60 = load i32, i32* @terminate_chunked_client, align 4
  %61 = call i32 @event_base_once(i32 %58, i32 -1, i32 %59, i32 %60, %struct.terminate_state* %9, %struct.timeval* %5)
  %62 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %63 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @event_base_dispatch(i32 %64)
  %66 = getelementptr inbounds %struct.terminate_state, %struct.terminate_state* %9, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %1
  store i64 0, i64* @test_ok, align 8
  br label %70

70:                                               ; preds = %69, %1
  br label %71

71:                                               ; preds = %70
  %72 = load i64, i64* %8, align 8
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @evutil_closesocket(i64 %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i64, i64* @http, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i64, i64* @http, align 8
  %82 = call i32 @evhttp_free(i64 %81)
  br label %83

83:                                               ; preds = %80, %77
  ret void
}

declare dso_local i64 @http_setup(i32*, i32, i32) #1

declare dso_local i32 @evhttp_del_cb(i64, i8*) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i64 @evhttp_set_cb(i64, i8*, i32, %struct.terminate_state*) #1

declare dso_local i64 @http_connect(i8*, i32) #1

declare dso_local %struct.bufferevent* @bufferevent_socket_new(i32, i64, i32) #1

declare dso_local i32 @bufferevent_setcb(%struct.bufferevent*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.terminate_state*, i32, i32) #1

declare dso_local i32 @bufferevent_write(%struct.bufferevent*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @evutil_timerclear(%struct.timeval*) #1

declare dso_local i32 @event_base_once(i32, i32, i32, i32, %struct.terminate_state*, %struct.timeval*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @evutil_closesocket(i64) #1

declare dso_local i32 @evhttp_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
