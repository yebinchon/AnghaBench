; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_connection_async_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_connection_async_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32 }
%struct.basic_test_data = type { i8* }
%struct.evhttp_request = type { i32 }
%struct.evdns_base = type opaque
%struct.evhttp = type { i32 }

@exit_base = common dso_local global i8* null, align 8
@search_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"127.0.0.1:%d\00", align 1
@test_ok = common dso_local global %struct.evhttp_connection* null, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@http_request_done = common dso_local global i32 0, align 4
@BASIC_REQUEST_BODY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"somehost\00", align 1
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"couldn't make request\00", align 1
@http_request_empty_done = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"Empty\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"itis\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Couldn't make request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_connection_async_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_connection_async_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evhttp_connection*, align 8
  %6 = alloca %struct.evhttp_request*, align 8
  %7 = alloca %struct.evdns_base*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [64 x i8], align 16
  %10 = alloca %struct.evhttp*, align 8
  store i8* %0, i8** %2, align 8
  %11 = load i8*, i8** %2, align 8
  %12 = bitcast i8* %11 to %struct.basic_test_data*
  store %struct.basic_test_data* %12, %struct.basic_test_data** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %5, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %6, align 8
  store %struct.evdns_base* null, %struct.evdns_base** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %14 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = call %struct.evhttp* @http_setup(i32* %4, i8* %15, i32 0)
  store %struct.evhttp* %16, %struct.evhttp** %10, align 8
  %17 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %18 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** @exit_base, align 8
  %20 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %21 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = load i32, i32* @search_table, align 4
  %24 = call %struct.evhttp_connection* @regress_dnsserver(i8* %22, i32* %8, i32 %23)
  %25 = call i32 @tt_assert(%struct.evhttp_connection* %24)
  %26 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %27 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call %struct.evhttp_connection* @evdns_base_new(i8* %28, i32 0)
  %30 = bitcast %struct.evhttp_connection* %29 to %struct.evdns_base*
  store %struct.evdns_base* %30, %struct.evdns_base** %7, align 8
  %31 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %32 = bitcast %struct.evdns_base* %31 to %struct.evhttp_connection*
  %33 = call i32 @tt_assert(%struct.evhttp_connection* %32)
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @evutil_snprintf(i8* %34, i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %38 = bitcast %struct.evdns_base* %37 to %struct.evhttp_connection*
  %39 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %40 = call i32 @evdns_base_nameserver_ip_add(%struct.evhttp_connection* %38, i8* %39)
  store %struct.evhttp_connection* null, %struct.evhttp_connection** @test_ok, align 8
  %41 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %42 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %45 = bitcast %struct.evdns_base* %44 to %struct.evhttp_connection*
  %46 = load i32, i32* %4, align 4
  %47 = call %struct.evhttp_connection* @evhttp_connection_base_new(i8* %43, %struct.evhttp_connection* %45, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  store %struct.evhttp_connection* %47, %struct.evhttp_connection** %5, align 8
  %48 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %49 = call i32 @tt_assert(%struct.evhttp_connection* %48)
  %50 = load i32, i32* @http_request_done, align 4
  %51 = load i64, i64* @BASIC_REQUEST_BODY, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = call %struct.evhttp_request* @evhttp_request_new(i32 %50, i8* %52)
  store %struct.evhttp_request* %53, %struct.evhttp_request** %6, align 8
  %54 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %55 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %54)
  %56 = call i32 @evhttp_add_header(i32 %55, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %57 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %58 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %59 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %60 = call i32 @evhttp_make_request(%struct.evhttp_connection* %57, %struct.evhttp_request* %58, i32 %59, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %61 = icmp eq i32 %60, -1
  br i1 %61, label %62, label %66

62:                                               ; preds = %1
  %63 = load i32, i32* @stdout, align 4
  %64 = call i32 @fprintf(i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %65 = call i32 @exit(i32 1) #3
  unreachable

66:                                               ; preds = %1
  %67 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %68 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = call i32 @event_base_dispatch(i8* %69)
  %71 = load %struct.evhttp_connection*, %struct.evhttp_connection** @test_ok, align 8
  %72 = call i32 @tt_assert(%struct.evhttp_connection* %71)
  store %struct.evhttp_connection* null, %struct.evhttp_connection** @test_ok, align 8
  %73 = load i32, i32* @http_request_done, align 4
  %74 = load i64, i64* @BASIC_REQUEST_BODY, align 8
  %75 = inttoptr i64 %74 to i8*
  %76 = call %struct.evhttp_request* @evhttp_request_new(i32 %73, i8* %75)
  store %struct.evhttp_request* %76, %struct.evhttp_request** %6, align 8
  %77 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %78 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %77)
  %79 = call i32 @evhttp_add_header(i32 %78, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %81 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %80)
  %82 = call i32 @evhttp_add_header(i32 %81, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %83 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %84 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %85 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %86 = call i32 @evhttp_make_request(%struct.evhttp_connection* %83, %struct.evhttp_request* %84, i32 %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %90

88:                                               ; preds = %66
  %89 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %66
  %91 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %92 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @event_base_dispatch(i8* %93)
  store %struct.evhttp_connection* null, %struct.evhttp_connection** @test_ok, align 8
  %95 = load i32, i32* @http_request_empty_done, align 4
  %96 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %97 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = call %struct.evhttp_request* @evhttp_request_new(i32 %95, i8* %98)
  store %struct.evhttp_request* %99, %struct.evhttp_request** %6, align 8
  %100 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %101 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %100)
  %102 = call i32 @evhttp_add_header(i32 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %103 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %104 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %105 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %106 = call i32 @evhttp_make_request(%struct.evhttp_connection* %103, %struct.evhttp_request* %104, i32 %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %107 = icmp eq i32 %106, -1
  br i1 %107, label %108, label %110

108:                                              ; preds = %90
  %109 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %90
  %111 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %112 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %111, i32 0, i32 0
  %113 = load i8*, i8** %112, align 8
  %114 = call i32 @event_base_dispatch(i8* %113)
  br label %115

115:                                              ; preds = %110
  %116 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %117 = icmp ne %struct.evhttp_connection* %116, null
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %120 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %119)
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.evhttp*, %struct.evhttp** %10, align 8
  %123 = icmp ne %struct.evhttp* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %121
  %125 = load %struct.evhttp*, %struct.evhttp** %10, align 8
  %126 = call i32 @evhttp_free(%struct.evhttp* %125)
  br label %127

127:                                              ; preds = %124, %121
  %128 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %129 = icmp ne %struct.evdns_base* %128, null
  br i1 %129, label %130, label %134

130:                                              ; preds = %127
  %131 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %132 = bitcast %struct.evdns_base* %131 to %struct.evhttp_connection*
  %133 = call i32 @evdns_base_free(%struct.evhttp_connection* %132, i32 0)
  br label %134

134:                                              ; preds = %130, %127
  %135 = call i32 (...) @regress_clean_dnsserver()
  ret void
}

declare dso_local %struct.evhttp* @http_setup(i32*, i8*, i32) #1

declare dso_local i32 @tt_assert(%struct.evhttp_connection*) #1

declare dso_local %struct.evhttp_connection* @regress_dnsserver(i8*, i32*, i32) #1

declare dso_local %struct.evhttp_connection* @evdns_base_new(i8*, i32) #1

declare dso_local i32 @evutil_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @evdns_base_nameserver_ip_add(%struct.evhttp_connection*, i8*) #1

declare dso_local %struct.evhttp_connection* @evhttp_connection_base_new(i8*, %struct.evhttp_connection*, i8*, i32) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, i8*) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_request_get_output_headers(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_connection*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @event_base_dispatch(i8*) #1

declare dso_local i32 @tt_abort_msg(i8*) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

declare dso_local i32 @evdns_base_free(%struct.evhttp_connection*, i32) #1

declare dso_local i32 @regress_clean_dnsserver(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
