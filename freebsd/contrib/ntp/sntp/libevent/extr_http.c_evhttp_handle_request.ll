; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_handle_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32, i32, i32*, i64 }
%struct.evhttp = type { i32, i32, i32 (%struct.evhttp_request*, i32)*, i32 }
%struct.evhttp_cb = type { i32, i32 (%struct.evhttp_request*, i32)* }
%struct.evbuffer = type { i32 }

@HTTP_BADREQUEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Rejecting disallowed method %x (allowed: %x)\0A\00", align 1
@HTTP_NOTIMPLEMENTED = common dso_local global i32 0, align 4
@HTTP_NOTFOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"Not Found\00", align 1
@.str.2 = private unnamed_addr constant [144 x i8] c"<html><head><title>404 Not Found</title></head><body><h1>Not Found</h1><p>The requested URL %s was not found on this server.</p></body></html>\0A\00", align 1
@ERR_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evhttp_request*, i8*)* @evhttp_handle_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evhttp_handle_request(%struct.evhttp_request* %0, i8* %1) #0 {
  %3 = alloca %struct.evhttp_request*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.evhttp*, align 8
  %6 = alloca %struct.evhttp_cb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.evbuffer*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.evhttp*
  store %struct.evhttp* %11, %struct.evhttp** %5, align 8
  store %struct.evhttp_cb* null, %struct.evhttp_cb** %6, align 8
  %12 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %13 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %12, i32 0, i32 3
  store i64 0, i64* %13, align 8
  %14 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %15 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %2
  %19 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %20 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %18, %2
  %24 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %25 = load i32, i32* @HTTP_BADREQUEST, align 4
  %26 = call i32 @evhttp_send_error(%struct.evhttp_request* %24, i32 %25, i32* null)
  br label %122

27:                                               ; preds = %18
  %28 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %29 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %32 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = and i32 %30, %33
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %27
  %37 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %38 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %41 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = zext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @event_debug(i8* %44)
  %46 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %47 = load i32, i32* @HTTP_NOTIMPLEMENTED, align 4
  %48 = call i32 @evhttp_send_error(%struct.evhttp_request* %46, i32 %47, i32* null)
  br label %122

49:                                               ; preds = %27
  %50 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %51 = call i8* @evhttp_request_get_host(%struct.evhttp_request* %50)
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @evhttp_find_vhost(%struct.evhttp* %55, %struct.evhttp** %5, i8* %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %60 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %59, i32 0, i32 3
  %61 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %62 = call %struct.evhttp_cb* @evhttp_dispatch_callback(i32* %60, %struct.evhttp_request* %61)
  store %struct.evhttp_cb* %62, %struct.evhttp_cb** %6, align 8
  %63 = icmp ne %struct.evhttp_cb* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.evhttp_cb*, %struct.evhttp_cb** %6, align 8
  %66 = getelementptr inbounds %struct.evhttp_cb, %struct.evhttp_cb* %65, i32 0, i32 1
  %67 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %66, align 8
  %68 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %69 = load %struct.evhttp_cb*, %struct.evhttp_cb** %6, align 8
  %70 = getelementptr inbounds %struct.evhttp_cb, %struct.evhttp_cb* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 %67(%struct.evhttp_request* %68, i32 %71)
  br label %122

73:                                               ; preds = %58
  %74 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %75 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %74, i32 0, i32 2
  %76 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %75, align 8
  %77 = icmp ne i32 (%struct.evhttp_request*, i32)* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %73
  %79 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %80 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %79, i32 0, i32 2
  %81 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %80, align 8
  %82 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %83 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %84 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 %81(%struct.evhttp_request* %82, i32 %85)
  br label %122

87:                                               ; preds = %73
  %88 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %89 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = call i8* @evhttp_htmlescape(i32* %90)
  store i8* %91, i8** %8, align 8
  %92 = icmp eq i8* %91, null
  br i1 %92, label %93, label %98

93:                                               ; preds = %87
  %94 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %95 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @evhttp_connection_free(i32 %96)
  br label %122

98:                                               ; preds = %87
  %99 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %99, %struct.evbuffer** %9, align 8
  %100 = icmp eq %struct.evbuffer* %99, null
  br i1 %100, label %101, label %108

101:                                              ; preds = %98
  %102 = load i8*, i8** %8, align 8
  %103 = call i32 @mm_free(i8* %102)
  %104 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %105 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @evhttp_connection_free(i32 %106)
  br label %122

108:                                              ; preds = %98
  %109 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %110 = load i32, i32* @HTTP_NOTFOUND, align 4
  %111 = call i32 @evhttp_response_code_(%struct.evhttp_request* %109, i32 %110, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %112 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %113 = load i8*, i8** %8, align 8
  %114 = call i32 @evbuffer_add_printf(%struct.evbuffer* %112, i32 ptrtoint ([144 x i8]* @.str.2 to i32), i8* %113)
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 @mm_free(i8* %115)
  %117 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %118 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %119 = call i32 @evhttp_send_page_(%struct.evhttp_request* %117, %struct.evbuffer* %118)
  %120 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %121 = call i32 @evbuffer_free(%struct.evbuffer* %120)
  br label %122

122:                                              ; preds = %23, %36, %64, %78, %93, %101, %108
  ret void
}

declare dso_local i32 @evhttp_send_error(%struct.evhttp_request*, i32, i32*) #1

declare dso_local i32 @event_debug(i8*) #1

declare dso_local i8* @evhttp_request_get_host(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_find_vhost(%struct.evhttp*, %struct.evhttp**, i8*) #1

declare dso_local %struct.evhttp_cb* @evhttp_dispatch_callback(i32*, %struct.evhttp_request*) #1

declare dso_local i8* @evhttp_htmlescape(i32*) #1

declare dso_local i32 @evhttp_connection_free(i32) #1

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @mm_free(i8*) #1

declare dso_local i32 @evhttp_response_code_(%struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i32, i8*) #1

declare dso_local i32 @evhttp_send_page_(%struct.evhttp_request*, %struct.evbuffer*) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
