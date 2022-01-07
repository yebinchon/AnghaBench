; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_data_length_constraints_test_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_data_length_constraints_test_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evhttp_connection = type opaque
%struct.evhttp_request = type { i32 }
%struct.evhttp = type { i32 }

@test_ok = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@EVHTTP_CON_READ_ON_WRITE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"somehost\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Longheader\00", align 1
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"/?arg=val\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Couldn't make request\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EVHTTP_REQ_POST = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"Expect\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"100-continue\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"101-continue\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @http_data_length_constraints_test_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_data_length_constraints_test_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.basic_test_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.evhttp_connection*, align 8
  %8 = alloca %struct.evhttp_request*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca void (%struct.evhttp_request*, i8*)*, align 8
  %13 = alloca %struct.evhttp*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = bitcast i8* %14 to %struct.basic_test_data*
  store %struct.basic_test_data* %15, %struct.basic_test_data** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %7, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %8, align 8
  store i8* null, i8** %9, align 8
  store i64 1048576, i64* %10, align 8
  store i64 3145728, i64* %11, align 8
  %16 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %17 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.evhttp* @http_setup(i32* %6, i32 %18, i32 0)
  store %struct.evhttp* %19, %struct.evhttp** %13, align 8
  store i32 0, i32* @test_ok, align 4
  store void (%struct.evhttp_request*, i8*)* @http_failed_request_done, void (%struct.evhttp_request*, i8*)** %12, align 8
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store void (%struct.evhttp_request*, i8*)* @http_data_length_constraints_test_done, void (%struct.evhttp_request*, i8*)** %12, align 8
  br label %23

23:                                               ; preds = %22, %2
  %24 = call i32 @tt_assert(i32 1)
  %25 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %26 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.evhttp_request* @evhttp_connection_base_new(i32 %27, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = bitcast %struct.evhttp_request* %29 to %struct.evhttp_connection*
  store %struct.evhttp_connection* %30, %struct.evhttp_connection** %7, align 8
  %31 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %32 = ptrtoint %struct.evhttp_connection* %31 to i32
  %33 = call i32 @tt_assert(i32 %32)
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %23
  %37 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %38 = bitcast %struct.evhttp_connection* %37 to %struct.evhttp_request*
  %39 = load i32, i32* @EVHTTP_CON_READ_ON_WRITE_ERROR, align 4
  %40 = call i32 @evhttp_connection_set_flags(%struct.evhttp_request* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i32 @tt_assert(i32 %43)
  br label %45

45:                                               ; preds = %36, %23
  %46 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %47 = bitcast %struct.evhttp_connection* %46 to %struct.evhttp_request*
  %48 = call i32 @evhttp_connection_set_local_address(%struct.evhttp_request* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %50 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.evhttp_request* @evhttp_request_new(void (%struct.evhttp_request*, i8*)* @http_data_length_constraints_test_done, i32 %51)
  store %struct.evhttp_request* %52, %struct.evhttp_request** %8, align 8
  %53 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %54 = ptrtoint %struct.evhttp_request* %53 to i32
  %55 = call i32 @tt_assert(i32 %54)
  %56 = call i8* @malloc(i64 3145728)
  store i8* %56, i8** %9, align 8
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @memset(i8* %57, i8 signext 97, i64 3145728)
  %59 = load i8*, i8** %9, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3145727
  store i8 0, i8* %60, align 1
  %61 = load %struct.evhttp*, %struct.evhttp** %13, align 8
  %62 = call i32 @evhttp_set_max_headers_size(%struct.evhttp* %61, i64 3145727)
  %63 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %64 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %63)
  %65 = call i32 @evhttp_add_header(i32 %64, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %66 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %67 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %66)
  %68 = load i8*, i8** %9, align 8
  %69 = call i32 @evhttp_add_header(i32 %67, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %68)
  %70 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %71 = bitcast %struct.evhttp_connection* %70 to %struct.evhttp_request*
  %72 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %73 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %74 = call i32 @evhttp_make_request(%struct.evhttp_request* %71, %struct.evhttp_request* %72, i32 %73, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %78

76:                                               ; preds = %45
  %77 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %78

78:                                               ; preds = %76, %45
  %79 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %80 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @event_base_dispatch(i32 %81)
  %83 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %84 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call %struct.evhttp_request* @evhttp_request_new(void (%struct.evhttp_request*, i8*)* @http_data_length_constraints_test_done, i32 %85)
  store %struct.evhttp_request* %86, %struct.evhttp_request** %8, align 8
  %87 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %88 = ptrtoint %struct.evhttp_request* %87 to i32
  %89 = call i32 @tt_assert(i32 %88)
  %90 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %91 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %90)
  %92 = call i32 @evhttp_add_header(i32 %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %93 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %94 = bitcast %struct.evhttp_connection* %93 to %struct.evhttp_request*
  %95 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %96 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %97 = load i8*, i8** %9, align 8
  %98 = call i32 @evhttp_make_request(%struct.evhttp_request* %94, %struct.evhttp_request* %95, i32 %96, i8* %97)
  %99 = icmp eq i32 %98, -1
  br i1 %99, label %100, label %102

100:                                              ; preds = %78
  %101 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %102

102:                                              ; preds = %100, %78
  %103 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %104 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @event_base_dispatch(i32 %105)
  %107 = load i32, i32* %4, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %102
  store void (%struct.evhttp_request*, i8*)* @http_large_entity_test_done, void (%struct.evhttp_request*, i8*)** %12, align 8
  br label %110

110:                                              ; preds = %109, %102
  %111 = load %struct.evhttp*, %struct.evhttp** %13, align 8
  %112 = call i32 @evhttp_set_max_body_size(%struct.evhttp* %111, i64 3145726)
  %113 = load void (%struct.evhttp_request*, i8*)*, void (%struct.evhttp_request*, i8*)** %12, align 8
  %114 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %115 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call %struct.evhttp_request* @evhttp_request_new(void (%struct.evhttp_request*, i8*)* %113, i32 %116)
  store %struct.evhttp_request* %117, %struct.evhttp_request** %8, align 8
  %118 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %119 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %118)
  %120 = call i32 @evhttp_add_header(i32 %119, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %121 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %122 = call i32 @evhttp_request_get_output_buffer(%struct.evhttp_request* %121)
  %123 = load i8*, i8** %9, align 8
  %124 = call i32 @evbuffer_add_printf(i32 %122, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %123)
  %125 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %126 = bitcast %struct.evhttp_connection* %125 to %struct.evhttp_request*
  %127 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %128 = load i32, i32* @EVHTTP_REQ_POST, align 4
  %129 = call i32 @evhttp_make_request(%struct.evhttp_request* %126, %struct.evhttp_request* %127, i32 %128, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %133

131:                                              ; preds = %110
  %132 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %133

133:                                              ; preds = %131, %110
  %134 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %135 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @event_base_dispatch(i32 %136)
  %138 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %139 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call %struct.evhttp_request* @evhttp_request_new(void (%struct.evhttp_request*, i8*)* @http_large_entity_test_done, i32 %140)
  store %struct.evhttp_request* %141, %struct.evhttp_request** %8, align 8
  %142 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %143 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %142)
  %144 = call i32 @evhttp_add_header(i32 %143, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %145 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %146 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %145)
  %147 = call i32 @evhttp_add_header(i32 %146, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %148 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %149 = call i32 @evhttp_request_get_output_buffer(%struct.evhttp_request* %148)
  %150 = load i8*, i8** %9, align 8
  %151 = call i32 @evbuffer_add_printf(i32 %149, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %150)
  %152 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %153 = bitcast %struct.evhttp_connection* %152 to %struct.evhttp_request*
  %154 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %155 = load i32, i32* @EVHTTP_REQ_POST, align 4
  %156 = call i32 @evhttp_make_request(%struct.evhttp_request* %153, %struct.evhttp_request* %154, i32 %155, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %157 = icmp eq i32 %156, -1
  br i1 %157, label %158, label %160

158:                                              ; preds = %133
  %159 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %133
  %161 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %162 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @event_base_dispatch(i32 %163)
  %165 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %166 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call %struct.evhttp_request* @evhttp_request_new(void (%struct.evhttp_request*, i8*)* @http_dispatcher_test_done, i32 %167)
  store %struct.evhttp_request* %168, %struct.evhttp_request** %8, align 8
  %169 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %170 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %169)
  %171 = call i32 @evhttp_add_header(i32 %170, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %172 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %173 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %172)
  %174 = call i32 @evhttp_add_header(i32 %173, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %175 = load i8*, i8** %9, align 8
  %176 = getelementptr inbounds i8, i8* %175, i64 1048576
  store i8 0, i8* %176, align 1
  %177 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %178 = call i32 @evhttp_request_get_output_buffer(%struct.evhttp_request* %177)
  %179 = load i8*, i8** %9, align 8
  %180 = call i32 @evbuffer_add_printf(i32 %178, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %179)
  %181 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %182 = bitcast %struct.evhttp_connection* %181 to %struct.evhttp_request*
  %183 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %184 = load i32, i32* @EVHTTP_REQ_POST, align 4
  %185 = call i32 @evhttp_make_request(%struct.evhttp_request* %182, %struct.evhttp_request* %183, i32 %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %187, label %189

187:                                              ; preds = %160
  %188 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %189

189:                                              ; preds = %187, %160
  %190 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %191 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @event_base_dispatch(i32 %192)
  %194 = load i32, i32* %4, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  store void (%struct.evhttp_request*, i8*)* @http_expectation_failed_done, void (%struct.evhttp_request*, i8*)** %12, align 8
  br label %197

197:                                              ; preds = %196, %189
  %198 = load void (%struct.evhttp_request*, i8*)*, void (%struct.evhttp_request*, i8*)** %12, align 8
  %199 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %200 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call %struct.evhttp_request* @evhttp_request_new(void (%struct.evhttp_request*, i8*)* %198, i32 %201)
  store %struct.evhttp_request* %202, %struct.evhttp_request** %8, align 8
  %203 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %204 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %203)
  %205 = call i32 @evhttp_add_header(i32 %204, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %206 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %207 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %206)
  %208 = call i32 @evhttp_add_header(i32 %207, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i64 0, i64 0))
  %209 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %210 = call i32 @evhttp_request_get_output_buffer(%struct.evhttp_request* %209)
  %211 = load i8*, i8** %9, align 8
  %212 = call i32 @evbuffer_add_printf(i32 %210, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* %211)
  %213 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %214 = bitcast %struct.evhttp_connection* %213 to %struct.evhttp_request*
  %215 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %216 = load i32, i32* @EVHTTP_REQ_POST, align 4
  %217 = call i32 @evhttp_make_request(%struct.evhttp_request* %214, %struct.evhttp_request* %215, i32 %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %218 = icmp eq i32 %217, -1
  br i1 %218, label %219, label %221

219:                                              ; preds = %197
  %220 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %221

221:                                              ; preds = %219, %197
  %222 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %223 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = call i32 @event_base_dispatch(i32 %224)
  store i32 1, i32* @test_ok, align 4
  br label %226

226:                                              ; preds = %221
  %227 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %228 = icmp ne %struct.evhttp_connection* %227, null
  br i1 %228, label %229, label %233

229:                                              ; preds = %226
  %230 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %231 = bitcast %struct.evhttp_connection* %230 to %struct.evhttp_request*
  %232 = call i32 @evhttp_connection_free(%struct.evhttp_request* %231)
  br label %233

233:                                              ; preds = %229, %226
  %234 = load %struct.evhttp*, %struct.evhttp** %13, align 8
  %235 = icmp ne %struct.evhttp* %234, null
  br i1 %235, label %236, label %239

236:                                              ; preds = %233
  %237 = load %struct.evhttp*, %struct.evhttp** %13, align 8
  %238 = call i32 @evhttp_free(%struct.evhttp* %237)
  br label %239

239:                                              ; preds = %236, %233
  %240 = load i8*, i8** %9, align 8
  %241 = icmp ne i8* %240, null
  br i1 %241, label %242, label %245

242:                                              ; preds = %239
  %243 = load i8*, i8** %9, align 8
  %244 = call i32 @free(i8* %243)
  br label %245

245:                                              ; preds = %242, %239
  ret void
}

declare dso_local %struct.evhttp* @http_setup(i32*, i32, i32) #1

declare dso_local void @http_failed_request_done(%struct.evhttp_request*, i8*) #1

declare dso_local void @http_data_length_constraints_test_done(%struct.evhttp_request*, i8*) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local %struct.evhttp_request* @evhttp_connection_base_new(i32, i32*, i8*, i32) #1

declare dso_local i32 @evhttp_connection_set_flags(%struct.evhttp_request*, i32) #1

declare dso_local i32 @evhttp_connection_set_local_address(%struct.evhttp_request*, i8*) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(void (%struct.evhttp_request*, i8*)*, i32) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local i32 @evhttp_set_max_headers_size(%struct.evhttp*, i64) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_request_get_output_headers(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_request*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @tt_abort_msg(i8*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local void @http_large_entity_test_done(%struct.evhttp_request*, i8*) #1

declare dso_local i32 @evhttp_set_max_body_size(%struct.evhttp*, i64) #1

declare dso_local i32 @evbuffer_add_printf(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_request_get_output_buffer(%struct.evhttp_request*) #1

declare dso_local void @http_dispatcher_test_done(%struct.evhttp_request*, i8*) #1

declare dso_local void @http_expectation_failed_done(%struct.evhttp_request*, i8*) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
