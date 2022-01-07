; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_badreq_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_badreq_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"Content-Type\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"text/xml; charset=UTF-8\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"Hello, %s!\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1
@HTTP_OK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, i8*)* @http_badreq_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_badreq_cb(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evbuffer*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %6, %struct.evbuffer** %5, align 8
  %7 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %8 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %7)
  %9 = call i32 @evhttp_add_header(i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %11 = call i32 @evbuffer_add_printf(%struct.evbuffer* %10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %12 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %13 = load i32, i32* @HTTP_OK, align 4
  %14 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %15 = call i32 @evhttp_send_reply(%struct.evhttp_request* %12, i32 %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), %struct.evbuffer* %14)
  %16 = load %struct.evbuffer*, %struct.evbuffer** %5, align 8
  %17 = call i32 @evbuffer_free(%struct.evbuffer* %16)
  ret void
}

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_request_get_output_headers(%struct.evhttp_request*) #1

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i8*, i8*) #1

declare dso_local i32 @evhttp_send_reply(%struct.evhttp_request*, i32, i8*, %struct.evbuffer*) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
