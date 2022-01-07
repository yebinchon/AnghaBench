; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_connection_test_.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_connection_test_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i8* }
%struct.evdns_base = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32 }
%struct.evhttp = type { i32 }

@HTTP_BIND_IPV6 = common dso_local global i32 0, align 4
@HTTP_BIND_SSL = common dso_local global i32 0, align 4
@test_ok = common dso_local global i32 0, align 4
@exit_base = common dso_local global i8* null, align 8
@http_request_done = common dso_local global i32 0, align 4
@BASIC_REQUEST_BODY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"somehost\00", align 1
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"couldn't make request\00", align 1
@http_request_empty_done = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"Empty\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"itis\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Couldn't make request\00", align 1
@BEV_OPT_DEFER_CALLBACKS = common dso_local global i32 0, align 4
@BUFFEREVENT_SSL_CONNECTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.basic_test_data*, i32, i8*, %struct.evdns_base*, i32, i32, i32)* @http_connection_test_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_connection_test_(%struct.basic_test_data* %0, i32 %1, i8* %2, %struct.evdns_base* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.basic_test_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.evdns_base*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.evhttp_connection*, align 8
  %17 = alloca %struct.evhttp_request*, align 8
  %18 = alloca %struct.evhttp*, align 8
  %19 = alloca i32, align 4
  store %struct.basic_test_data* %0, %struct.basic_test_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store %struct.evdns_base* %3, %struct.evdns_base** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %16, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %17, align 8
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %7
  %23 = load i32, i32* @HTTP_BIND_IPV6, align 4
  %24 = load i32, i32* %19, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %19, align 4
  br label %26

26:                                               ; preds = %22, %7
  %27 = load i32, i32* %14, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* @HTTP_BIND_SSL, align 4
  %31 = load i32, i32* %19, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %19, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %35 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* %19, align 4
  %38 = call %struct.evhttp* @http_setup(i32* %15, i8* %36, i32 %37)
  store %struct.evhttp* %38, %struct.evhttp** %18, align 8
  store i32 0, i32* @test_ok, align 4
  %39 = load %struct.evhttp*, %struct.evhttp** %18, align 8
  %40 = icmp ne %struct.evhttp* %39, null
  br i1 %40, label %46, label %41

41:                                               ; preds = %33
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = call i32 (...) @tt_skip()
  br label %46

46:                                               ; preds = %44, %41, %33
  %47 = load %struct.evhttp*, %struct.evhttp** %18, align 8
  %48 = ptrtoint %struct.evhttp* %47 to i32
  %49 = call i32 @tt_assert(i32 %48)
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = call i32 (...) @tt_skip()
  br label %62

54:                                               ; preds = %46
  %55 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %56 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.evdns_base*, %struct.evdns_base** %11, align 8
  %59 = load i8*, i8** %10, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call %struct.evhttp_connection* @evhttp_connection_base_new(i8* %57, %struct.evdns_base* %58, i8* %59, i32 %60)
  store %struct.evhttp_connection* %61, %struct.evhttp_connection** %16, align 8
  br label %62

62:                                               ; preds = %54, %52
  %63 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %64 = ptrtoint %struct.evhttp_connection* %63 to i32
  %65 = call i32 @tt_assert(i32 %64)
  %66 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @evhttp_connection_set_family(%struct.evhttp_connection* %66, i32 %67)
  %69 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %70 = call i8* @evhttp_connection_get_base(%struct.evhttp_connection* %69)
  %71 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %72 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = icmp eq i8* %70, %73
  %75 = zext i1 %74 to i32
  %76 = call i32 @tt_assert(i32 %75)
  %77 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %78 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %77, i32 0, i32 0
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** @exit_base, align 8
  %80 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %81 = call i32* @evhttp_connection_get_server(%struct.evhttp_connection* %80)
  %82 = icmp eq i32* %81, null
  %83 = zext i1 %82 to i32
  %84 = call i32 @tt_assert(i32 %83)
  %85 = load i32, i32* @http_request_done, align 4
  %86 = load i64, i64* @BASIC_REQUEST_BODY, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = call %struct.evhttp_request* @evhttp_request_new(i32 %85, i8* %87)
  store %struct.evhttp_request* %88, %struct.evhttp_request** %17, align 8
  %89 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %90 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %89)
  %91 = call i32 @evhttp_add_header(i32 %90, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %92 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %93 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %94 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %95 = call i32 @evhttp_make_request(%struct.evhttp_connection* %92, %struct.evhttp_request* %93, i32 %94, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %101

97:                                               ; preds = %62
  %98 = load i32, i32* @stdout, align 4
  %99 = call i32 @fprintf(i32 %98, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %100 = call i32 @exit(i32 1) #3
  unreachable

101:                                              ; preds = %62
  %102 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %103 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @event_base_dispatch(i8* %104)
  %106 = load i32, i32* @test_ok, align 4
  %107 = call i32 @tt_assert(i32 %106)
  store i32 0, i32* @test_ok, align 4
  %108 = load i32, i32* @http_request_done, align 4
  %109 = load i64, i64* @BASIC_REQUEST_BODY, align 8
  %110 = inttoptr i64 %109 to i8*
  %111 = call %struct.evhttp_request* @evhttp_request_new(i32 %108, i8* %110)
  store %struct.evhttp_request* %111, %struct.evhttp_request** %17, align 8
  %112 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %113 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %112)
  %114 = call i32 @evhttp_add_header(i32 %113, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %115 = load i32, i32* %9, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %101
  %118 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %119 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %118)
  %120 = call i32 @evhttp_add_header(i32 %119, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  br label %121

121:                                              ; preds = %117, %101
  %122 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %123 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %124 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %125 = call i32 @evhttp_make_request(%struct.evhttp_connection* %122, %struct.evhttp_request* %123, i32 %124, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %127, label %129

127:                                              ; preds = %121
  %128 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %129

129:                                              ; preds = %127, %121
  %130 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %131 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %130, i32 0, i32 0
  %132 = load i8*, i8** %131, align 8
  %133 = call i32 @event_base_dispatch(i8* %132)
  store i32 0, i32* @test_ok, align 4
  %134 = load i32, i32* @http_request_empty_done, align 4
  %135 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %136 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %135, i32 0, i32 0
  %137 = load i8*, i8** %136, align 8
  %138 = call %struct.evhttp_request* @evhttp_request_new(i32 %134, i8* %137)
  store %struct.evhttp_request* %138, %struct.evhttp_request** %17, align 8
  %139 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %140 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %139)
  %141 = call i32 @evhttp_add_header(i32 %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %142 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %143 = load %struct.evhttp_request*, %struct.evhttp_request** %17, align 8
  %144 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %145 = call i32 @evhttp_make_request(%struct.evhttp_connection* %142, %struct.evhttp_request* %143, i32 %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %146 = icmp eq i32 %145, -1
  br i1 %146, label %147, label %149

147:                                              ; preds = %129
  %148 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  br label %149

149:                                              ; preds = %147, %129
  %150 = load %struct.basic_test_data*, %struct.basic_test_data** %8, align 8
  %151 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = call i32 @event_base_dispatch(i8* %152)
  br label %154

154:                                              ; preds = %149
  %155 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %156 = icmp ne %struct.evhttp_connection* %155, null
  br i1 %156, label %157, label %160

157:                                              ; preds = %154
  %158 = load %struct.evhttp_connection*, %struct.evhttp_connection** %16, align 8
  %159 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %158)
  br label %160

160:                                              ; preds = %157, %154
  %161 = load %struct.evhttp*, %struct.evhttp** %18, align 8
  %162 = icmp ne %struct.evhttp* %161, null
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load %struct.evhttp*, %struct.evhttp** %18, align 8
  %165 = call i32 @evhttp_free(%struct.evhttp* %164)
  br label %166

166:                                              ; preds = %163, %160
  ret void
}

declare dso_local %struct.evhttp* @http_setup(i32*, i8*, i32) #1

declare dso_local i32 @tt_skip(...) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local %struct.evhttp_connection* @evhttp_connection_base_new(i8*, %struct.evdns_base*, i8*, i32) #1

declare dso_local i32 @evhttp_connection_set_family(%struct.evhttp_connection*, i32) #1

declare dso_local i8* @evhttp_connection_get_base(%struct.evhttp_connection*) #1

declare dso_local i32* @evhttp_connection_get_server(%struct.evhttp_connection*) #1

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

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
