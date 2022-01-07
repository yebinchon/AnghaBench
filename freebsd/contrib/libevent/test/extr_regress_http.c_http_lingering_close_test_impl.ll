; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_lingering_close_test_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_lingering_close_test_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.basic_test_data = type { i32 }
%struct.evhttp_connection = type opaque
%struct.evhttp_request = type { i32 }
%struct.evhttp = type { i32 }

@test_ok = common dso_local global i32 0, align 4
@EVHTTP_SERVER_LINGERING_CLOSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"somehost\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@EVHTTP_REQ_POST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Couldn't make request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @http_lingering_close_test_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_lingering_close_test_impl(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.basic_test_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.evhttp_connection*, align 8
  %8 = alloca %struct.evhttp_request*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca void (%struct.evhttp_request*, i8*)*, align 8
  %12 = alloca %struct.evhttp*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.basic_test_data*
  store %struct.basic_test_data* %14, %struct.basic_test_data** %5, align 8
  store i32 0, i32* %6, align 4
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %7, align 8
  store %struct.evhttp_request* null, %struct.evhttp_request** %8, align 8
  store i8* null, i8** %9, align 8
  store i64 3145728, i64* %10, align 8
  %15 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %16 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call %struct.evhttp* @http_setup(i32* %6, i32 %17, i32 0)
  store %struct.evhttp* %18, %struct.evhttp** %12, align 8
  store i32 0, i32* @test_ok, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %23 = load i32, i32* @EVHTTP_SERVER_LINGERING_CLOSE, align 4
  %24 = call i32 @evhttp_set_flags(%struct.evhttp* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i32 @tt_assert(i32 %27)
  br label %29

29:                                               ; preds = %21, %2
  %30 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %31 = load i64, i64* %10, align 8
  %32 = udiv i64 %31, 2
  %33 = call i32 @evhttp_set_max_body_size(%struct.evhttp* %30, i64 %32)
  %34 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %35 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call %struct.evhttp_request* @evhttp_connection_base_new(i32 %36, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = bitcast %struct.evhttp_request* %38 to %struct.evhttp_connection*
  store %struct.evhttp_connection* %39, %struct.evhttp_connection** %7, align 8
  %40 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %41 = ptrtoint %struct.evhttp_connection* %40 to i32
  %42 = call i32 @tt_assert(i32 %41)
  %43 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %44 = bitcast %struct.evhttp_connection* %43 to %struct.evhttp_request*
  %45 = call i32 @evhttp_connection_set_local_address(%struct.evhttp_request* %44, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %46 = load i64, i64* %10, align 8
  %47 = call i8* @malloc(i64 %46)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @memset(i8* %48, i8 signext 97, i64 %49)
  %51 = load i8*, i8** %9, align 8
  %52 = load i64, i64* %10, align 8
  %53 = sub i64 %52, 1
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  store i8 0, i8* %54, align 1
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %29
  store void (%struct.evhttp_request*, i8*)* @http_large_entity_test_done, void (%struct.evhttp_request*, i8*)** %11, align 8
  br label %59

58:                                               ; preds = %29
  store void (%struct.evhttp_request*, i8*)* @http_failed_request_done, void (%struct.evhttp_request*, i8*)** %11, align 8
  br label %59

59:                                               ; preds = %58, %57
  %60 = load void (%struct.evhttp_request*, i8*)*, void (%struct.evhttp_request*, i8*)** %11, align 8
  %61 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %62 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call %struct.evhttp_request* @evhttp_request_new(void (%struct.evhttp_request*, i8*)* %60, i32 %63)
  store %struct.evhttp_request* %64, %struct.evhttp_request** %8, align 8
  %65 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %66 = ptrtoint %struct.evhttp_request* %65 to i32
  %67 = call i32 @tt_assert(i32 %66)
  %68 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %69 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %68)
  %70 = call i32 @evhttp_add_header(i32 %69, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %71 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %72 = call i32 @evhttp_request_get_output_buffer(%struct.evhttp_request* %71)
  %73 = load i8*, i8** %9, align 8
  %74 = call i32 @evbuffer_add_printf(i32 %72, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %73)
  %75 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %76 = bitcast %struct.evhttp_connection* %75 to %struct.evhttp_request*
  %77 = load %struct.evhttp_request*, %struct.evhttp_request** %8, align 8
  %78 = load i32, i32* @EVHTTP_REQ_POST, align 4
  %79 = call i32 @evhttp_make_request(%struct.evhttp_request* %76, %struct.evhttp_request* %77, i32 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0))
  %80 = icmp eq i32 %79, -1
  br i1 %80, label %81, label %83

81:                                               ; preds = %59
  %82 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %59
  %84 = load %struct.basic_test_data*, %struct.basic_test_data** %5, align 8
  %85 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @event_base_dispatch(i32 %86)
  store i32 1, i32* @test_ok, align 4
  br label %88

88:                                               ; preds = %83
  %89 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %90 = icmp ne %struct.evhttp_connection* %89, null
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %93 = bitcast %struct.evhttp_connection* %92 to %struct.evhttp_request*
  %94 = call i32 @evhttp_connection_free(%struct.evhttp_request* %93)
  br label %95

95:                                               ; preds = %91, %88
  %96 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %97 = icmp ne %struct.evhttp* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.evhttp*, %struct.evhttp** %12, align 8
  %100 = call i32 @evhttp_free(%struct.evhttp* %99)
  br label %101

101:                                              ; preds = %98, %95
  %102 = load i8*, i8** %9, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %107

104:                                              ; preds = %101
  %105 = load i8*, i8** %9, align 8
  %106 = call i32 @free(i8* %105)
  br label %107

107:                                              ; preds = %104, %101
  ret void
}

declare dso_local %struct.evhttp* @http_setup(i32*, i32, i32) #1

declare dso_local i32 @tt_assert(i32) #1

declare dso_local i32 @evhttp_set_flags(%struct.evhttp*, i32) #1

declare dso_local i32 @evhttp_set_max_body_size(%struct.evhttp*, i64) #1

declare dso_local %struct.evhttp_request* @evhttp_connection_base_new(i32, i32*, i8*, i32) #1

declare dso_local i32 @evhttp_connection_set_local_address(%struct.evhttp_request*, i8*) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @memset(i8*, i8 signext, i64) #1

declare dso_local void @http_large_entity_test_done(%struct.evhttp_request*, i8*) #1

declare dso_local void @http_failed_request_done(%struct.evhttp_request*, i8*) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(void (%struct.evhttp_request*, i8*)*, i32) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_request_get_output_headers(%struct.evhttp_request*) #1

declare dso_local i32 @evbuffer_add_printf(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_request_get_output_buffer(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_request*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @tt_abort_msg(i8*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_free(%struct.evhttp*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
