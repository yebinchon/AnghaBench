; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_autofree_connection_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_autofree_connection_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.basic_test_data = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32 }

@test_ok = common dso_local global i64 0, align 8
@http = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@http_request_empty_done = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"somehost\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"Empty\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"itis\00", align 1
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"couldn't make request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @http_autofree_connection_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_autofree_connection_test(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.basic_test_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.evhttp_connection*, align 8
  %6 = alloca [2 x %struct.evhttp_request*], align 16
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.basic_test_data*
  store %struct.basic_test_data* %8, %struct.basic_test_data** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %5, align 8
  %9 = bitcast [2 x %struct.evhttp_request*]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %9, i8 0, i64 16, i1 false)
  store i64 0, i64* @test_ok, align 8
  %10 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %11 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_4__* @http_setup(i32* %4, i32 %12, i32 0)
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** @http, align 8
  %14 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %15 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.evhttp_connection* @evhttp_connection_base_new(i32 %16, i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %17)
  store %struct.evhttp_connection* %18, %struct.evhttp_connection** %5, align 8
  %19 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %20 = call i32 @tt_assert(%struct.evhttp_connection* %19)
  %21 = load i32, i32* @http_request_empty_done, align 4
  %22 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %23 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.evhttp_request* @evhttp_request_new(i32 %21, i32 %24)
  %26 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 0
  store %struct.evhttp_request* %25, %struct.evhttp_request** %26, align 16
  %27 = load i32, i32* @http_request_empty_done, align 4
  %28 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %29 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.evhttp_request* @evhttp_request_new(i32 %27, i32 %30)
  %32 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 1
  store %struct.evhttp_request* %31, %struct.evhttp_request** %32, align 8
  %33 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 0
  %34 = load %struct.evhttp_request*, %struct.evhttp_request** %33, align 16
  %35 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %34)
  %36 = call i32 @evhttp_add_header(i32 %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %37 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 0
  %38 = load %struct.evhttp_request*, %struct.evhttp_request** %37, align 16
  %39 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %38)
  %40 = call i32 @evhttp_add_header(i32 %39, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %41 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 0
  %42 = load %struct.evhttp_request*, %struct.evhttp_request** %41, align 16
  %43 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %42)
  %44 = call i32 @evhttp_add_header(i32 %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %45 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 1
  %46 = load %struct.evhttp_request*, %struct.evhttp_request** %45, align 8
  %47 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %46)
  %48 = call i32 @evhttp_add_header(i32 %47, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %49 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 1
  %50 = load %struct.evhttp_request*, %struct.evhttp_request** %49, align 8
  %51 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %50)
  %52 = call i32 @evhttp_add_header(i32 %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  %53 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 1
  %54 = load %struct.evhttp_request*, %struct.evhttp_request** %53, align 8
  %55 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %54)
  %56 = call i32 @evhttp_add_header(i32 %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %57 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %58 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 0
  %59 = load %struct.evhttp_request*, %struct.evhttp_request** %58, align 16
  %60 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %61 = call i32 @evhttp_make_request(%struct.evhttp_connection* %57, %struct.evhttp_request* %59, i32 %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %65

63:                                               ; preds = %1
  %64 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %65

65:                                               ; preds = %63, %1
  %66 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %67 = getelementptr inbounds [2 x %struct.evhttp_request*], [2 x %struct.evhttp_request*]* %6, i64 0, i64 1
  %68 = load %struct.evhttp_request*, %struct.evhttp_request** %67, align 8
  %69 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %70 = call i32 @evhttp_make_request(%struct.evhttp_connection* %66, %struct.evhttp_request* %68, i32 %69, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %71 = icmp eq i32 %70, -1
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = call i32 @tt_abort_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %65
  %75 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %76 = call i32 @evhttp_connection_free_on_completion(%struct.evhttp_connection* %75)
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %5, align 8
  %77 = load %struct.basic_test_data*, %struct.basic_test_data** %3, align 8
  %78 = getelementptr inbounds %struct.basic_test_data, %struct.basic_test_data* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @event_base_dispatch(i32 %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @http, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = call i32* @TAILQ_FIRST(i32* %82)
  %84 = icmp eq i32* %83, null
  %85 = zext i1 %84 to i32
  %86 = sext i32 %85 to i64
  %87 = inttoptr i64 %86 to %struct.evhttp_connection*
  %88 = call i32 @tt_assert(%struct.evhttp_connection* %87)
  br label %89

89:                                               ; preds = %74
  %90 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %91 = icmp ne %struct.evhttp_connection* %90, null
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.evhttp_connection*, %struct.evhttp_connection** %5, align 8
  %94 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %93)
  br label %95

95:                                               ; preds = %92, %89
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** @http, align 8
  %97 = icmp ne %struct.TYPE_4__* %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** @http, align 8
  %100 = call i32 @evhttp_free(%struct.TYPE_4__* %99)
  br label %101

101:                                              ; preds = %98, %95
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_4__* @http_setup(i32*, i32, i32) #2

declare dso_local %struct.evhttp_connection* @evhttp_connection_base_new(i32, i32*, i8*, i32) #2

declare dso_local i32 @tt_assert(%struct.evhttp_connection*) #2

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, i32) #2

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #2

declare dso_local i32 @evhttp_request_get_output_headers(%struct.evhttp_request*) #2

declare dso_local i32 @evhttp_make_request(%struct.evhttp_connection*, %struct.evhttp_request*, i32, i8*) #2

declare dso_local i32 @tt_abort_msg(i8*) #2

declare dso_local i32 @evhttp_connection_free_on_completion(%struct.evhttp_connection*) #2

declare dso_local i32 @event_base_dispatch(i32) #2

declare dso_local i32* @TAILQ_FIRST(i32*) #2

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #2

declare dso_local i32 @evhttp_free(%struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
