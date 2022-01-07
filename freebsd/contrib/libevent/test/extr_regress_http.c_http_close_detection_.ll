; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_close_detection_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_close_detection_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.evhttp_connection = type { i32 }
%struct.basic_test_data = type { i32 }
%struct.evhttp_request = type { i32 }
%struct.evhttp = type { i32 }

@__const.http_close_detection_.sec_tenth = private unnamed_addr constant %struct.timeval { i32 0, i32 100000 }, align 4
@test_ok = common dso_local global i64 0, align 8
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
  %9 = alloca %struct.evhttp*, align 8
  store %struct.basic_test_data* %0, %struct.basic_test_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %6, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %7, align 8
  %10 = bitcast %struct.timeval* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.timeval* @__const.http_close_detection_.sec_tenth to i8*), i64 8, i1 false)
  %11 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %12 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.evhttp* @http_setup(i32* %5, i32 %13, i32 0)
  store %struct.evhttp* %14, %struct.evhttp** %9, align 8
  store i64 0, i64* @test_ok, align 8
  %15 = load %struct.evhttp*, %struct.evhttp** %9, align 8
  %16 = call i32 @evhttp_set_timeout_tv(%struct.evhttp* %15, %struct.timeval* %8)
  %17 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %18 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.evhttp_connection* @evhttp_connection_base_new(i32 %19, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %20)
  store %struct.evhttp_connection* %21, %struct.evhttp_connection** %6, align 8
  %22 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  %23 = call i32 @tt_assert(%struct.evhttp_connection* %22)
  %24 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  %25 = call i32 @evhttp_connection_set_timeout_tv(%struct.evhttp_connection* %24, %struct.timeval* %8)
  %26 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  %27 = call i32 @tt_assert(%struct.evhttp_connection* %26)
  %28 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  store %struct.evhttp_connection* %28, %struct.evhttp_connection** @delayed_client, align 8
  %29 = load i32, i32* @close_detect_cb, align 4
  %30 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  %31 = call %struct.evhttp_request* @evhttp_request_new(i32 %29, %struct.evhttp_connection* %30)
  store %struct.evhttp_request* %31, %struct.evhttp_request** %7, align 8
  %32 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %33 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %32)
  %34 = call i32 @evhttp_add_header(i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  %36 = load %struct.evhttp_request*, %struct.evhttp_request** %7, align 8
  %37 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0)
  %42 = call i32 @evhttp_make_request(%struct.evhttp_connection* %35, %struct.evhttp_request* %36, i32 %37, i8* %41)
  %43 = icmp eq i32 %42, -1
  br i1 %43, label %44, label %46

44:                                               ; preds = %2
  %45 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %46

46:                                               ; preds = %44, %2
  %47 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %48 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @event_base_dispatch(i32 %49)
  %51 = load %struct.evhttp*, %struct.evhttp** %9, align 8
  %52 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %51, i32 0, i32 0
  %53 = call i32* @TAILQ_FIRST(i32* %52)
  %54 = icmp eq i32* %53, null
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.evhttp_connection*
  %58 = call i32 @tt_assert(%struct.evhttp_connection* %57)
  br label %59

59:                                               ; preds = %46
  %60 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  %61 = icmp ne %struct.evhttp_connection* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  %64 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %63)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load %struct.evhttp*, %struct.evhttp** %9, align 8
  %67 = icmp ne %struct.evhttp* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load %struct.evhttp*, %struct.evhttp** %9, align 8
  %70 = call i32 @evhttp_free(%struct.evhttp* %69)
  br label %71

71:                                               ; preds = %68, %65
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.evhttp* @http_setup(i32*, i32, i32) #2

declare dso_local i32 @evhttp_set_timeout_tv(%struct.evhttp*, %struct.timeval*) #2

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

declare dso_local i32 @evhttp_free(%struct.evhttp*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
