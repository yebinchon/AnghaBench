; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_send_error.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_send_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32 }
%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [76 x i8] c"<HTML><HEAD>\0A<TITLE>%d %s</TITLE>\0A</HEAD><BODY>\0A<H1>%s</H1>\0A</BODY></HTML>\0A\00", align 1
@ERR_FORMAT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_send_error(%struct.evhttp_request* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.evbuffer*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %8 = call %struct.evbuffer* (...) @evbuffer_new()
  store %struct.evbuffer* %8, %struct.evbuffer** %7, align 8
  %9 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %10 = icmp eq %struct.evbuffer* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %13 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @evhttp_connection_free(i32 %14)
  br label %37

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %5, align 4
  %21 = call i8* @evhttp_response_phrase_internal(i32 %20)
  store i8* %21, i8** %6, align 8
  br label %22

22:                                               ; preds = %19, %16
  %23 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i8*, i8** %6, align 8
  %26 = call i32 @evhttp_response_code_(%struct.evhttp_request* %23, i32 %24, i8* %25)
  %27 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @evbuffer_add_printf(%struct.evbuffer* %27, i32 ptrtoint ([76 x i8]* @.str to i32), i32 %28, i8* %29, i8* %30)
  %32 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %33 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %34 = call i32 @evhttp_send_page_(%struct.evhttp_request* %32, %struct.evbuffer* %33)
  %35 = load %struct.evbuffer*, %struct.evbuffer** %7, align 8
  %36 = call i32 @evbuffer_free(%struct.evbuffer* %35)
  br label %37

37:                                               ; preds = %22, %11
  ret void
}

declare dso_local %struct.evbuffer* @evbuffer_new(...) #1

declare dso_local i32 @evhttp_connection_free(i32) #1

declare dso_local i8* @evhttp_response_phrase_internal(i32) #1

declare dso_local i32 @evhttp_response_code_(%struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i32, i32, i8*, i8*) #1

declare dso_local i32 @evhttp_send_page_(%struct.evhttp_request*, %struct.evbuffer*) #1

declare dso_local i32 @evbuffer_free(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
