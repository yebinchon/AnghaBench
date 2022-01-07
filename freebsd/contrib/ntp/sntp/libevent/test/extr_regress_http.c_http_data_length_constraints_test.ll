; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_data_length_constraints_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_data_length_constraints_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evhttp_connection = type opaque
%struct.evhttp_request = type { i32 }

@test_ok = common dso_local global i32 0, align 4
@http = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@http_data_length_constraints_test_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"somehost\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Longheader\00", align 1
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"/?arg=val\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Couldn't make request\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EVHTTP_REQ_POST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@http_large_entity_test_done = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"Expect\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"100-continue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_data_length_constraints_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_data_length_constraints_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evhttp_connection*, align 8
  %6 = alloca %struct.evhttp_request*, align 8
  %7 = alloca [8192 x i8], align 16
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.basic_test_data*
  store %struct.basic_test_data* %9, %struct.basic_test_data** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %5, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %6, align 8
  store i32 0, i32* @test_ok, align 4
  %10 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %11 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @http_setup(i32* %4, i32 %12, i32 0)
  store i64 %13, i64* @http, align 8
  %14 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %15 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.evhttp_request* @evhttp_connection_base_new(i32 %16, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = bitcast %struct.evhttp_request* %18 to %struct.evhttp_connection*
  store %struct.evhttp_connection* %19, %struct.evhttp_connection** %5, align 8
  %20 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %21 = bitcast %struct.evhttp_connection* %20 to %struct.evhttp_request*
  %22 = call i32 @tt_assert(%struct.evhttp_request* %21)
  %23 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %24 = bitcast %struct.evhttp_connection* %23 to %struct.evhttp_request*
  %25 = call i32 @evhttp_connection_set_local_address(%struct.evhttp_request* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @http_data_length_constraints_test_done, align 4
  %27 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %28 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.evhttp_request* @evhttp_request_new(i32 %26, i32 %29)
  store %struct.evhttp_request* %30, %struct.evhttp_request** %6, align 8
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %32 = call i32 @tt_assert(%struct.evhttp_request* %31)
  %33 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %34 = call i32 @memset(i8* %33, i8 signext 97, i32 8192)
  %35 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 8191
  store i8 0, i8* %35, align 1
  %36 = load i64, i64* @http, align 8
  %37 = call i32 @evhttp_set_max_headers_size(i64 %36, i32 8191)
  %38 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %39 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %38)
  %40 = call i32 @evhttp_add_header(i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %42 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %41)
  %43 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %44 = call i32 @evhttp_add_header(i32 %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  %45 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %46 = bitcast %struct.evhttp_connection* %45 to %struct.evhttp_request*
  %47 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %48 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %49 = call i32 @evhttp_make_request(%struct.evhttp_request* %46, %struct.evhttp_request* %47, i32 %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %53

51:                                               ; preds = %1
  %52 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %1
  %54 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %55 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @event_base_dispatch(i32 %56)
  %58 = load i32, i32* @http_data_length_constraints_test_done, align 4
  %59 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %60 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.evhttp_request* @evhttp_request_new(i32 %58, i32 %61)
  store %struct.evhttp_request* %62, %struct.evhttp_request** %6, align 8
  %63 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %64 = call i32 @tt_assert(%struct.evhttp_request* %63)
  %65 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %66 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %65)
  %67 = call i32 @evhttp_add_header(i32 %66, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %68 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %69 = bitcast %struct.evhttp_connection* %68 to %struct.evhttp_request*
  %70 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %71 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %72 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %73 = call i32 @evhttp_make_request(%struct.evhttp_request* %69, %struct.evhttp_request* %70, i32 %71, i8* %72)
  %74 = icmp eq i32 %73, -1
  br i1 %74, label %75, label %77

75:                                               ; preds = %53
  %76 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %77

77:                                               ; preds = %75, %53
  %78 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %79 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @event_base_dispatch(i32 %80)
  %82 = load i64, i64* @http, align 8
  %83 = call i32 @evhttp_set_max_body_size(i64 %82, i32 8190)
  %84 = load i32, i32* @http_data_length_constraints_test_done, align 4
  %85 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %86 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call %struct.evhttp_request* @evhttp_request_new(i32 %84, i32 %87)
  store %struct.evhttp_request* %88, %struct.evhttp_request** %6, align 8
  %89 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %90 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %89)
  %91 = call i32 @evhttp_add_header(i32 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %93 = call i32 @evhttp_request_get_output_buffer(%struct.evhttp_request* %92)
  %94 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %95 = call i32 @evbuffer_add_printf(i32 %93, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %94)
  %96 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %97 = bitcast %struct.evhttp_connection* %96 to %struct.evhttp_request*
  %98 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %99 = load i32, i32* @EVHTTP_REQ_POST, align 4
  %100 = call i32 @evhttp_make_request(%struct.evhttp_request* %97, %struct.evhttp_request* %98, i32 %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %101 = icmp eq i32 %100, -1
  br i1 %101, label %102, label %104

102:                                              ; preds = %77
  %103 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %104

104:                                              ; preds = %102, %77
  %105 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %106 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @event_base_dispatch(i32 %107)
  %109 = load i32, i32* @http_large_entity_test_done, align 4
  %110 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %111 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call %struct.evhttp_request* @evhttp_request_new(i32 %109, i32 %112)
  store %struct.evhttp_request* %113, %struct.evhttp_request** %6, align 8
  %114 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %115 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %114)
  %116 = call i32 @evhttp_add_header(i32 %115, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %117 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %118 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %117)
  %119 = call i32 @evhttp_add_header(i32 %118, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %120 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %121 = call i32 @evhttp_request_get_output_buffer(%struct.evhttp_request* %120)
  %122 = getelementptr inbounds [8192 x i8], [8192 x i8]* %7, i64 0, i64 0
  %123 = call i32 @evbuffer_add_printf(i32 %121, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %122)
  %124 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %125 = bitcast %struct.evhttp_connection* %124 to %struct.evhttp_request*
  %126 = load %struct.evhttp_request*, %struct.evhttp_request** %6, align 8
  %127 = load i32, i32* @EVHTTP_REQ_POST, align 4
  %128 = call i32 @evhttp_make_request(%struct.evhttp_request* %125, %struct.evhttp_request* %126, i32 %127, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %129 = icmp eq i32 %128, -1
  br i1 %129, label %130, label %132

130:                                              ; preds = %104
  %131 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %104
  %133 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %134 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @event_base_dispatch(i32 %135)
  store i32 1, i32* @test_ok, align 4
  br label %137

137:                                              ; preds = %132
  %138 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %139 = icmp ne %struct.evhttp_connection* %138, null
  br i1 %139, label %140, label %144

140:                                              ; preds = %137
  %141 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %142 = bitcast %struct.evhttp_connection* %141 to %struct.evhttp_request*
  %143 = call i32 @evhttp_connection_free(%struct.evhttp_request* %142)
  br label %144

144:                                              ; preds = %140, %137
  %145 = load i64, i64* @http, align 8
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i64, i64* @http, align 8
  %149 = call i32 @evhttp_free(i64 %148)
  br label %150

150:                                              ; preds = %147, %144
  ret void
}

declare dso_local i64 @http_setup(i32*, i32, i32) #1

declare dso_local %struct.evhttp_request* @evhttp_connection_base_new(i32, i32*, i8*, i32) #1

declare dso_local i32 @tt_assert(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_connection_set_local_address(%struct.evhttp_request*, i8*) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, i32) #1

declare dso_local i32 @memset(i8*, i8 signext, i32) #1

declare dso_local i32 @evhttp_set_max_headers_size(i64, i32) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_request_get_output_headers(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_request*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @tt_abort_msg(i8*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @evhttp_set_max_body_size(i64, i32) #1

declare dso_local i32 @evbuffer_add_printf(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_request_get_output_buffer(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_free(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
