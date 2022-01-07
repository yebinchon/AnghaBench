; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_close_detection_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_close_detection_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.basic_test_data = type { i32 }
%struct.evhttp_request = type { i32 }

@__const.http_close_detection_.sec_tenth = private unnamed_addr constant %struct.timeval { i32 0, i32 100000 }, align 4
@test_ok = common dso_local global i64 0, align 8
@http = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@delayed_client = common dso_local global %struct.evhttp_connection* null, align 8
@close_detect_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"somehost\00", align 1
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"/largedelay\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"couldn't make request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.basic_test_data*, i32)* @http_close_detection_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_close_detection_(%struct.basic_test_data* %0, i32 %1) #0 {
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.evhttp_connection*, align 8
  %7 = alloca %struct.evhttp_request*, align 8
  %8 = alloca %struct.timeval, align 4
  store %struct.basic_test_data* %0, %struct.basic_test_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %6, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %7, align 8
  %9 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.timeval* @__const.http_close_detection_.sec_tenth to i8*), i64 8, i1 false)
  store i64 0, i64* @test_ok, align 8
  %10 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %11 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_5__* @http_setup(i32* %5, i32 %12, i32 0)
  store %struct.TYPE_5__* %13, %struct.TYPE_5__** @http, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** @http, align 8
  %15 = call i32 @evhttp_set_timeout_tv(%struct.TYPE_5__* %14, %struct.timeval* %8)
  %16 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %17 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call %struct.evhttp_connection* @evhttp_connection_base_new(i32 %18, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %19)
  store %struct.evhttp_connection* %20, %struct.evhttp_connection** %6, align 8
  %21 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  %22 = call i32 @tt_assert(%struct.evhttp_connection* %21)
  %23 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  %24 = call i32 @evhttp_connection_set_timeout_tv(%struct.evhttp_connection* %23, %struct.timeval* %8)
  %25 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  %26 = call i32 @tt_assert(%struct.evhttp_connection* %25)
  %27 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  store %struct.evhttp_connection* %27, %struct.evhttp_connection** @delayed_client, align 8
  %28 = load i32, i32* @close_detect_cb, align 4
  %29 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  %30 = call %struct.evhttp_request* @evhttp_request_new(i32 %28, %struct.evhttp_connection* %29)
  store %struct.evhttp_request* %30, %struct.evhttp_request** %7, align 8
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %32 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %31)
  %33 = call i32 @evhttp_add_header(i32 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %34 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  %35 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %36 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %41 = call i32 @evhttp_make_request(%struct.evhttp_connection* %34, %struct.evhttp_request* %35, i32 %36, i8* %40)
  %42 = icmp eq i32 %41, -1
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %45

45:                                               ; preds = %43, %2
  %46 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %47 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @event_base_dispatch(i32 %48)
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @http, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = call i32* @TAILQ_FIRST(i32* %51)
  %53 = icmp eq i32* %52, null
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to %struct.evhttp_connection*
  %57 = call i32 @tt_assert(%struct.evhttp_connection* %56)
  br label %58

58:                                               ; preds = %45
  %59 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  %60 = icmp ne %struct.evhttp_connection* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  %63 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %62)
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** @http, align 8
  %66 = icmp ne %struct.TYPE_5__* %65, null
  br i1 %66, label %67, label %70

67:                                               ; preds = %64
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** @http, align 8
  %69 = call i32 @evhttp_free(%struct.TYPE_5__* %68)
  br label %70

70:                                               ; preds = %67, %64
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.TYPE_5__* @http_setup(i32*, i32, i32) #2

declare dso_local i32 @evhttp_set_timeout_tv(%struct.TYPE_5__*, %struct.timeval*) #2

declare dso_local %struct.evhttp_connection* @evhttp_connection_base_new(i32, i32*, i8*, i32) #2

declare dso_local i32 @tt_assert(%struct.evhttp_connection*) #2

declare dso_local i32 @evhttp_connection_set_timeout_tv(%struct.evhttp_connection*, %struct.timeval*) #2

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, %struct.evhttp_connection*) #2

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #2

declare dso_local i32 @evhttp_request_get_output_headers(%struct.evhttp_request*) #2

declare dso_local i32 @evhttp_make_request(%struct.evhttp_connection*, %struct.evhttp_request*, i32, i8*) #2

declare dso_local i32 @tt_abort_msg(i8*) #2

declare dso_local i32 @event_base_dispatch(i32) #2

declare dso_local i32* @TAILQ_FIRST(i32*) #2

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #2

declare dso_local i32 @evhttp_free(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
