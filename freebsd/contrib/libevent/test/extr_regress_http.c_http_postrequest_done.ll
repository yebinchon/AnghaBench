; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_postrequest_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_postrequest_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.event_base = type { i32 }

@BASIC_REQUEST_BODY = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"FAILED (timeout)\0A\00", align 1
@HTTP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"FAILED (response code)\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"FAILED (content type)\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"FAILED (length %lu vs %lu)\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"FAILED (data)\0A\00", align 1
@test_ok = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_postrequest_done(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.event_base*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** @BASIC_REQUEST_BODY, align 8
  store i8* %7, i8** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.event_base*
  store %struct.event_base* %9, %struct.event_base** %6, align 8
  %10 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %11 = icmp eq %struct.evhttp_request* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @stderr, align 4
  %14 = call i32 (i32, i8*, ...) @fprintf(i32 %13, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %15 = call i32 @exit(i32 1) #3
  unreachable

16:                                               ; preds = %2
  %17 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %18 = call i64 @evhttp_request_get_response_code(%struct.evhttp_request* %17)
  %19 = load i64, i64* @HTTP_OK, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %16
  %22 = load i32, i32* @stderr, align 4
  %23 = call i32 (i32, i8*, ...) @fprintf(i32 %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %24 = call i32 @exit(i32 1) #3
  unreachable

25:                                               ; preds = %16
  %26 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %27 = call i32 @evhttp_request_get_input_headers(%struct.evhttp_request* %26)
  %28 = call i32* @evhttp_find_header(i32 %27, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load i32, i32* @stderr, align 4
  %32 = call i32 (i32, i8*, ...) @fprintf(i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %33 = call i32 @exit(i32 1) #3
  unreachable

34:                                               ; preds = %25
  %35 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %36 = call i32 @evhttp_request_get_input_buffer(%struct.evhttp_request* %35)
  %37 = call i64 @evbuffer_get_length(i32 %36)
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = icmp ne i64 %37, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %34
  %42 = load i32, i32* @stderr, align 4
  %43 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %44 = call i32 @evhttp_request_get_input_buffer(%struct.evhttp_request* %43)
  %45 = call i64 @evbuffer_get_length(i32 %44)
  %46 = load i8*, i8** %5, align 8
  %47 = call i64 @strlen(i8* %46)
  %48 = call i32 (i32, i8*, ...) @fprintf(i32 %42, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %45, i64 %47)
  %49 = call i32 @exit(i32 1) #3
  unreachable

50:                                               ; preds = %34
  %51 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %52 = call i32 @evhttp_request_get_input_buffer(%struct.evhttp_request* %51)
  %53 = load i8*, i8** %5, align 8
  %54 = call i64 @evbuffer_datacmp(i32 %52, i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @stderr, align 4
  %58 = call i32 (i32, i8*, ...) @fprintf(i32 %57, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %59 = call i32 @exit(i32 1) #3
  unreachable

60:                                               ; preds = %50
  store i32 1, i32* @test_ok, align 4
  %61 = load %struct.event_base*, %struct.event_base** %6, align 8
  %62 = call i32 @event_base_loopexit(%struct.event_base* %61, i32* null)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @evhttp_request_get_response_code(%struct.evhttp_request*) #1

declare dso_local i32* @evhttp_find_header(i32, i8*) #1

declare dso_local i32 @evhttp_request_get_input_headers(%struct.evhttp_request*) #1

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local i32 @evhttp_request_get_input_buffer(%struct.evhttp_request*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @evbuffer_datacmp(i32, i8*) #1

declare dso_local i32 @event_base_loopexit(%struct.event_base*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
