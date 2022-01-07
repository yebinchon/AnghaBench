; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_handle_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_handle_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32, i32, i32*, i32, i64 }
%struct.evhttp = type { i32, i32, i32 (%struct.evhttp_request*, i32)*, i32 }
%struct.evhttp_cb = type { i32, i32 (%struct.evhttp_request*, i32)* }
%struct.evbuffer = type { i32 }

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
  %13 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %12, i32 0, i32 4
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
  br i1 %22, label %23, label %29

23:                                               ; preds = %18, %2
  %24 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %25 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %26 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @evhttp_send_error(%struct.evhttp_request* %24, i32 %27, i32* null)
  br label %124

29:                                               ; preds = %18
  %30 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %31 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %34 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %32, %35
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %51

38:                                               ; preds = %29
  %39 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %40 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %43 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = zext i32 %44 to i64
  %46 = inttoptr i64 %45 to i8*
  %47 = call i32 @event_debug(i8* %46)
  %48 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %49 = load i32, i32* @HTTP_NOTIMPLEMENTED, align 4
  %50 = call i32 @evhttp_send_error(%struct.evhttp_request* %48, i32 %49, i32* null)
  br label %124

51:                                               ; preds = %29
  %52 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %53 = call i8* @evhttp_request_get_host(%struct.evhttp_request* %52)
  store i8* %53, i8** %7, align 8
  %54 = load i8*, i8** %7, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @evhttp_find_vhost(%struct.evhttp* %57, %struct.evhttp** %5, i8* %58)
  br label %60

60:                                               ; preds = %56, %51
  %61 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %62 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %61, i32 0, i32 3
  %63 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %64 = call %struct.evhttp_cb* @evhttp_dispatch_callback(i32* %62, %struct.evhttp_request* %63)
  store %struct.evhttp_cb* %64, %struct.evhttp_cb** %6, align 8
  %65 = icmp ne %struct.evhttp_cb* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %60
  %67 = load %struct.evhttp_cb*, %struct.evhttp_cb** %6, align 8
  %68 = getelementptr inbounds %struct.evhttp_cb, %struct.evhttp_cb* %67, i32 0, i32 1
  %69 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %68, align 8
  %70 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %71 = load %struct.evhttp_cb*, %struct.evhttp_cb** %6, align 8
  %72 = getelementptr inbounds %struct.evhttp_cb, %struct.evhttp_cb* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 %69(%struct.evhttp_request* %70, i32 %73)
  br label %124

75:                                               ; preds = %60
  %76 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %77 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %76, i32 0, i32 2
  %78 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %77, align 8
  %79 = icmp ne i32 (%struct.evhttp_request*, i32)* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %82 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %81, i32 0, i32 2
  %83 = load i32 (%struct.evhttp_request*, i32)*, i32 (%struct.evhttp_request*, i32)** %82, align 8
  %84 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %85 = load %struct.evhttp*, %struct.evhttp** %5, align 8
  %86 = getelementptr inbounds %struct.evhttp, %struct.evhttp* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 %83(%struct.evhttp_request* %84, i32 %87)
  br label %124

89:                                               ; preds = %75
  %90 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %91 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %90, i32 0, i32 2
  %92 = load i32*, i32** %91, align 8
  %93 = call i8* @evhttp_htmlescape(i32* %92)
  store i8* %93, i8** %8, align 8
  %94 = icmp eq i8* %93, null
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %97 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @evhttp_connection_free(i32 %98)
  br label %124

100:                                              ; preds = %89
  %101 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %101, %struct.evbuffer** %9, align 8
  %102 = icmp eq %struct.evbuffer* %101, null
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i8*, i8** %8, align 8
  %105 = call i32 @mm_free(i8* %104)
  %106 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %107 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @evhttp_connection_free(i32 %108)
  br label %124

110:                                              ; preds = %100
  %111 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %112 = load i32, i32* @HTTP_NOTFOUND, align 4
  %113 = call i32 @evhttp_response_code_(%struct.evhttp_request* %111, i32 %112, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  %114 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %115 = load i8*, i8** %8, align 8
  %116 = call i32 @evbuffer_add_printf(%struct.evbuffer* %114, i32 ptrtoint ([144 x i8]* @.str.2 to i32), i8* %115)
  %117 = load i8*, i8** %8, align 8
  %118 = call i32 @mm_free(i8* %117)
  %119 = load %struct.evhttp_request*, %struct.evhttp_request** %3, align 8
  %120 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %121 = call i32 @evhttp_send_page_(%struct.evhttp_request* %119, %struct.evbuffer* %120)
  %122 = load %struct.evbuffer*, %struct.evbuffer** %9, align 8
  %123 = call i32 @evbuffer_free(%struct.evbuffer* %122)
  br label %124

124:                                              ; preds = %23, %38, %66, %80, %95, %103, %110
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
