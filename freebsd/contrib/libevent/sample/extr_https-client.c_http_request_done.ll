; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_https-client.c_http_request_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_https-client.c_http_request_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.bufferevent = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"some request failed - no idea which one though!\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"socket error = %s (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Response line: %d %s\0A\00", align 1
@stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, i8*)* @http_request_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_request_done(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca %struct.bufferevent*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %12 = icmp eq %struct.evhttp_request* %11, null
  br i1 %12, label %13, label %40

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.bufferevent*
  store %struct.bufferevent* %15, %struct.bufferevent** %7, align 8
  store i32 0, i32* %9, align 4
  %16 = call i32 (...) @EVUTIL_SOCKET_ERROR()
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* @stderr, align 4
  %18 = call i32 (i32, i8*, ...) @fprintf(i32 %17, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %23, %13
  %20 = load %struct.bufferevent*, %struct.bufferevent** %7, align 8
  %21 = call i64 @bufferevent_get_openssl_error(%struct.bufferevent* %20)
  store i64 %21, i64* %8, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load i64, i64* %8, align 8
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %26 = call i32 @ERR_error_string_n(i64 %24, i8* %25, i32 256)
  %27 = load i32, i32* @stderr, align 4
  %28 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %29 = call i32 (i32, i8*, ...) @fprintf(i32 %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %28)
  store i32 1, i32* %9, align 4
  br label %19

30:                                               ; preds = %19
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %39, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* @stderr, align 4
  %35 = load i32, i32* %10, align 4
  %36 = call i8* @evutil_socket_error_to_string(i32 %35)
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %34, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i8* %36, i32 %37)
  br label %39

39:                                               ; preds = %33, %30
  br label %58

40:                                               ; preds = %2
  %41 = load i32, i32* @stderr, align 4
  %42 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %43 = call i32 @evhttp_request_get_response_code(%struct.evhttp_request* %42)
  %44 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %45 = call i8* @evhttp_request_get_response_code_line(%struct.evhttp_request* %44)
  %46 = call i32 (i32, i8*, ...) @fprintf(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %43, i8* %45)
  br label %47

47:                                               ; preds = %53, %40
  %48 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %49 = call i32 @evhttp_request_get_input_buffer(%struct.evhttp_request* %48)
  %50 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %51 = call i32 @evbuffer_remove(i32 %49, i8* %50, i32 256)
  store i32 %51, i32* %6, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %47
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @stdout, align 4
  %57 = call i32 @fwrite(i8* %54, i32 %55, i32 1, i32 %56)
  br label %47

58:                                               ; preds = %39, %47
  ret void
}

declare dso_local i32 @EVUTIL_SOCKET_ERROR(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @bufferevent_get_openssl_error(%struct.bufferevent*) #1

declare dso_local i32 @ERR_error_string_n(i64, i8*, i32) #1

declare dso_local i8* @evutil_socket_error_to_string(i32) #1

declare dso_local i32 @evhttp_request_get_response_code(%struct.evhttp_request*) #1

declare dso_local i8* @evhttp_request_get_response_code_line(%struct.evhttp_request*) #1

declare dso_local i32 @evbuffer_remove(i32, i8*, i32) #1

declare dso_local i32 @evhttp_request_get_input_buffer(%struct.evhttp_request*) #1

declare dso_local i32 @fwrite(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
