; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_make_header_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_make_header_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i64, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"Proxy-Connection\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"%s %s HTTP/%d.%d\0D\0A\00", align 1
@EVHTTP_REQ_POST = common dso_local global i64 0, align 8
@EVHTTP_REQ_PUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
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
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %17

17:                                               ; preds = %16, %2
  %18 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %19 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bufferevent_get_output(i32 %20)
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %24 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %27 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %30 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @evbuffer_add_printf(i32 %21, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i8* %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %34 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EVHTTP_REQ_POST, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %17
  %39 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %40 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EVHTTP_REQ_PUT, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %38, %17
  %45 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %46 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32* @evhttp_find_header(i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %44
  %51 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %52 = load i32, i32* @EV_SIZE_FMT, align 4
  %53 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %54 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @evbuffer_get_length(i32 %55)
  %57 = call i32 @EV_SIZE_ARG(i32 %56)
  %58 = call i32 @evutil_snprintf(i8* %51, i32 22, i32 %52, i32 %57)
  %59 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %60 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds [22 x i8], [22 x i8]* %6, i64 0, i64 0
  %63 = call i32 @evhttp_add_header(i32 %61, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %62)
  br label %64

64:                                               ; preds = %50, %44, %38
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
