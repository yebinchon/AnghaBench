; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_request_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_request_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"FAILED\0A\00", align 1
@HTTP_OK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@test_ok = common dso_local global i32 0, align 4
@exit_base = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, i8*)* @http_request_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_request_done(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  store i8* %6, i8** %5, align 8
  %7 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %8 = icmp ne %struct.evhttp_request* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* @stderr, align 4
  %11 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @exit(i32 1) #3
  unreachable

13:                                               ; preds = %2
  %14 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %15 = call i64 @evhttp_request_get_response_code(%struct.evhttp_request* %14)
  %16 = load i64, i64* @HTTP_OK, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load i32, i32* @stderr, align 4
  %20 = call i32 @fprintf(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 @exit(i32 1) #3
  unreachable

22:                                               ; preds = %13
  %23 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %24 = call i32 @evhttp_request_get_input_headers(%struct.evhttp_request* %23)
  %25 = call i32* @evhttp_find_header(i32 %24, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @stderr, align 4
  %29 = call i32 @fprintf(i32 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @exit(i32 1) #3
  unreachable

31:                                               ; preds = %22
  %32 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %33 = call i32 @evhttp_request_get_input_buffer(%struct.evhttp_request* %32)
  %34 = call i64 @evbuffer_get_length(i32 %33)
  %35 = load i8*, i8** %5, align 8
  %36 = call i64 @strlen(i8* %35)
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %41 = call i32 @exit(i32 1) #3
  unreachable

42:                                               ; preds = %31
  %43 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %44 = call i32 @evhttp_request_get_input_buffer(%struct.evhttp_request* %43)
  %45 = load i8*, i8** %5, align 8
  %46 = call i64 @evbuffer_datacmp(i32 %44, i8* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %42
  %49 = load i32, i32* @stderr, align 4
  %50 = call i32 @fprintf(i32 %49, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %51 = call i32 @exit(i32 1) #3
  unreachable

52:                                               ; preds = %42
  store i32 1, i32* @test_ok, align 4
  %53 = load i32, i32* @exit_base, align 4
  %54 = call i32 @EVUTIL_ASSERT(i32 %53)
  %55 = load i32, i32* @exit_base, align 4
  %56 = call i32 @event_base_loopexit(i32 %55, i32* null)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @evhttp_request_get_response_code(%struct.evhttp_request*) #1

declare dso_local i32* @evhttp_find_header(i32, i8*) #1

declare dso_local i32 @evhttp_request_get_input_headers(%struct.evhttp_request*) #1

declare dso_local i64 @evbuffer_get_length(i32) #1

declare dso_local i32 @evhttp_request_get_input_buffer(%struct.evhttp_request*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @evbuffer_datacmp(i32, i8*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @event_base_loopexit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
