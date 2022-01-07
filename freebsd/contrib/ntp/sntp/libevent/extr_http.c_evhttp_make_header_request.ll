; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_make_header_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_make_header_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Proxy-Connection\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"%s %s HTTP/%d.%d\0D\0A\00", align 1
@EVHTTP_REQ_POST = common dso_local global i64 0, align 8
@EVHTTP_REQ_PUT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@EV_SIZE_FMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_connection*, %struct.evhttp_request*)* @evhttp_make_header_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_make_header_request(%struct.evhttp_connection* %0, %struct.evhttp_request* %1) #0 {
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca [22 x i8], align 16
  store %struct.evhttp_connection* %0, %struct.evhttp_connection** %3, align 8
  store %struct.evhttp_request* %1, %struct.evhttp_request** %4, align 8
  %7 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %8 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @evhttp_remove_header(i32 %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %12 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call i8* @evhttp_method(i64 %13)
  store i8* %14, i8** %5, align 8
  %15 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %16 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bufferevent_get_output(i32 %17)
  %19 = load i8*, i8** %5, align 8
  %20 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %21 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %24 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %23, i32 0, i32 4
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %27 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @evbuffer_add_printf(i32 %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* %19, i32 %22, i32 %25, i32 %28)
  %30 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %31 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @EVHTTP_REQ_POST, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %2
  %36 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %37 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EVHTTP_REQ_PUT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %61

41:                                               ; preds = %35, %2
  %42 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %43 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32* @evhttp_find_header(i32 %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %61

47:                                               ; preds = %41
  %48 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %49 = load i32, i32* @EV_SIZE_FMT, align 4
  %50 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %51 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @evbuffer_get_length(i32 %52)
  %54 = call i32 @EV_SIZE_ARG(i32 %53)
  %55 = call i32 @evutil_snprintf(i8* %48, i32 22, i32 %49, i32 %54)
  %56 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %57 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %60 = call i32 @evhttp_add_header(i32 %58, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* %59)
  br label %61

61:                                               ; preds = %47, %41, %35
  ret void
}

declare dso_local i32 @evhttp_remove_header(i32, i8*) #1

declare dso_local i8* @evhttp_method(i64) #1

declare dso_local i32 @evbuffer_add_printf(i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @bufferevent_get_output(i32) #1

declare dso_local i32* @evhttp_find_header(i32, i8*) #1

declare dso_local i32 @evutil_snprintf(i8*, i32, i32, i32) #1

declare dso_local i32 @EV_SIZE_ARG(i32) #1

declare dso_local i32 @evbuffer_get_length(i32) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
