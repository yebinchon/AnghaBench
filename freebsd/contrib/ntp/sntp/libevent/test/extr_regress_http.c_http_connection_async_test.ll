; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_connection_async_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_connection_async_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32 }
%struct.basic_test_data = type { i8* }
%struct.evhttp_request = type { i32 }
%struct.evdns_base = type opaque

@exit_base = common dso_local global i8* null, align 8
@search_table = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"127.0.0.1:%d\00", align 1
@test_ok = common dso_local global %struct.evhttp_connection* null, align 8
@http = common dso_local global i64 0, align 8
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
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.basic_test_data*
  store %struct.basic_test_data* %11, %struct.basic_test_data** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %5, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %6, align 8
  store %struct.evdns_base* null, %struct.evdns_base** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %13 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** @exit_base, align 8
  %15 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %16 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = load i32, i32* @search_table, align 4
  %19 = call %struct.evhttp_connection* @regress_dnsserver(i8* %17, i32* %8, i32 %18)
  %20 = call i32 @tt_assert(%struct.evhttp_connection* %19)
  %21 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %22 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call %struct.evhttp_connection* @evdns_base_new(i8* %23, i32 0)
  %25 = bitcast %struct.evhttp_connection* %24 to %struct.evdns_base*
  store %struct.evdns_base* %25, %struct.evdns_base** %7, align 8
  %26 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %27 = bitcast %struct.evdns_base* %26 to %struct.evhttp_connection*
  %28 = call i32 @tt_assert(%struct.evhttp_connection* %27)
  %29 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @evutil_snprintf(i8* %29, i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %33 = bitcast %struct.evdns_base* %32 to %struct.evhttp_connection*
  %34 = getelementptr inbounds [64 x i8], [64 x i8]* %9, i64 0, i64 0
  %35 = call i32 @evdns_base_nameserver_ip_add(%struct.evhttp_connection* %33, i8* %34)
  store %struct.evhttp_connection* null, %struct.evhttp_connection** @test_ok, align 8
  %36 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %37 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = call i64 @http_setup(i32* %4, i8* %38, i32 0)
  store i64 %39, i64* @http, align 8
  %40 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %41 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %44 = bitcast %struct.evdns_base* %43 to %struct.evhttp_connection*
  %45 = load i32, i32* %4, align 4
  %46 = call %struct.evhttp_connection* @evhttp_connection_base_new(i8* %42, %struct.evhttp_connection* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store %struct.evhttp_connection* %46, %struct.evhttp_connection** %5, align 8
  %47 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %48 = call i32 @tt_assert(%struct.evhttp_connection* %47)
  %49 = load i32, i32* @http_request_done, align 4
  %50 = load i64, i64* @BASIC_REQUEST_BODY, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call %struct.evhttp_request* @evhttp_request_new(i32 %49, i8* %51)
  store %struct.evhttp_request* %52, %struct.evhttp_request** %6, align 8
  %53 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %54 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %53)
  %55 = call i32 @evhttp_add_header(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %56 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %57 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %58 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %59 = call i32 @evhttp_make_request(%struct.evhttp_connection* %56, %struct.evhttp_request* %57, i32 %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp eq i32 %59, -1
  br i1 %60, label %61, label %65

61:                                               ; preds = %1
  %62 = load i32, i32* @stdout, align 4
  %63 = call i32 @fprintf(i32 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %64 = call i32 @exit(i32 1) #3
  unreachable

65:                                               ; preds = %1
  %66 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %67 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @event_base_dispatch(i8* %68)
  %70 = load %struct.evhttp_connection*, %struct.evhttp_connection** @test_ok, align 8
  %71 = call i32 @tt_assert(%struct.evhttp_connection* %70)
  store %struct.evhttp_connection* null, %struct.evhttp_connection** @test_ok, align 8
  %72 = load i32, i32* @http_request_done, align 4
  %73 = load i64, i64* @BASIC_REQUEST_BODY, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = call %struct.evhttp_request* @evhttp_request_new(i32 %72, i8* %74)
  store %struct.evhttp_request* %75, %struct.evhttp_request** %6, align 8
  %76 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %77 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %76)
  %78 = call i32 @evhttp_add_header(i32 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %79 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %80 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %79)
  %81 = call i32 @evhttp_add_header(i32 %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %82 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %83 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %84 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %85 = call i32 @evhttp_make_request(%struct.evhttp_connection* %82, %struct.evhttp_request* %83, i32 %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %86 = icmp eq i32 %85, -1
  br i1 %86, label %87, label %89

87:                                               ; preds = %65
  %88 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %89

89:                                               ; preds = %87, %65
  %90 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %91 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %90, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = call i32 @event_base_dispatch(i8* %92)
  store %struct.evhttp_connection* null, %struct.evhttp_connection** @test_ok, align 8
  %94 = load i32, i32* @http_request_empty_done, align 4
  %95 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %96 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call %struct.evhttp_request* @evhttp_request_new(i32 %94, i8* %97)
  store %struct.evhttp_request* %98, %struct.evhttp_request** %6, align 8
  %99 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %100 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %99)
  %101 = call i32 @evhttp_add_header(i32 %100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %102 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %103 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %104 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %105 = call i32 @evhttp_make_request(%struct.evhttp_connection* %102, %struct.evhttp_request* %103, i32 %104, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %106 = icmp eq i32 %105, -1
  br i1 %106, label %107, label %109

107:                                              ; preds = %89
  %108 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0))
  br label %109

109:                                              ; preds = %107, %89
  %110 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %111 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = call i32 @event_base_dispatch(i8* %112)
  br label %114

114:                                              ; preds = %109
  %115 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %116 = icmp ne %struct.evhttp_connection* %115, null
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %119 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %118)
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i64, i64* @http, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %120
  %124 = load i64, i64* @http, align 8
  %125 = call i32 @evhttp_free(i64 %124)
  br label %126

126:                                              ; preds = %123, %120
  %127 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %128 = icmp ne %struct.evdns_base* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %126
  %130 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %131 = bitcast %struct.evdns_base* %130 to %struct.evhttp_connection*
  %132 = call i32 @evdns_base_free(%struct.evhttp_connection* %131, i32 0)
  br label %133

133:                                              ; preds = %129, %126
  %134 = call i32 (...) @regress_clean_dnsserver()
  ret void
}

declare dso_local i32 @tt_assert(%struct.evhttp_connection*) #1

declare dso_local %struct.evhttp_connection* @regress_dnsserver(i8*, i32*, i32) #1

declare dso_local %struct.evhttp_connection* @evdns_base_new(i8*, i32) #1

declare dso_local i32 @evutil_snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @evdns_base_nameserver_ip_add(%struct.evhttp_connection*, i8*) #1

declare dso_local i64 @http_setup(i32*, i8*, i32) #1

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

declare dso_local i32 @evhttp_free(i64) #1

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
