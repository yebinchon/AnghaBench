; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_dispatcher_test_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_dispatcher_test_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.event_base = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"DISPATCHER_TEST\00", align 1
@HTTP_OK = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"FAILED (content type)\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"FAILED (length %lu vs %lu)\0A\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"FAILED (data)\0A\00", align 1
@test_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, i8*)* @http_dispatcher_test_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_dispatcher_test_done(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.event_base*, align 8
  %6 = alloca i8*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.event_base*
  store %struct.event_base* %8, %struct.event_base** %5, align 8
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %9 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %10 = call i64 @evhttp_request_get_response_code(%struct.evhttp_request* %9)
  %11 = load i64, i64* @HTTP_OK, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @stderr, align 4
  %15 = call i32 (i32, i8*, ...) @fprintf(i32 %14, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @exit(i32 1) #3
  unreachable

17:                                               ; preds = %2
  %18 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %19 = call i32 @evhttp_request_get_input_headers(%struct.evhttp_request* %18)
  %20 = call i32* @evhttp_find_header(i32 %19, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* @stderr, align 4
  %24 = call i32 (i32, i8*, ...) @fprintf(i32 %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %25 = call i32 @exit(i32 1) #3
  unreachable

26:                                               ; preds = %17
  %27 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %28 = call i32 @evhttp_request_get_input_buffer(%struct.evhttp_request* %27)
  %29 = call i64 @evbuffer_get_length(i32 %28)
  %30 = load i8*, i8** %6, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %26
  %34 = load i32, i32* @stderr, align 4
  %35 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %36 = call i32 @evhttp_request_get_input_buffer(%struct.evhttp_request* %35)
  %37 = call i64 @evbuffer_get_length(i32 %36)
  %38 = load i8*, i8** %6, align 8
  %39 = call i64 @strlen(i8* %38)
  %40 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i64 %37, i64 %39)
  %41 = call i32 @exit(i32 1) #3
  unreachable

42:                                               ; preds = %26
  %43 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %44 = call i32 @evhttp_request_get_input_buffer(%struct.evhttp_request* %43)
  %45 = load i8*, i8** %6, align 8
  %46 = call i64 @evbuffer_datacmp(i32 %44, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 (i32, i8*, ...) @fprintf(i32 %49, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %42
  store i32 1, i32* @test_ok, align 4
  %53 = load %struct.event_base*, %struct.event_base** %5, align 8
  %54 = call i32 @event_base_loopexit(%struct.event_base* %53, i32* null)
  ret void
}

declare dso_local i64 @evhttp_request_get_response_code(%struct.evhttp_request*) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

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
