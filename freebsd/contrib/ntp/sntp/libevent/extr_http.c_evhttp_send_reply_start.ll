; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_send_reply_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_send_reply_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Transfer-Encoding\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"chunked\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_send_reply_start(%struct.evhttp_request* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.evhttp_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load i8*, i8** %6, align 8
  %10 = call i32 @evhttp_response_code_(%struct.evhttp_request* %7, i32 %8, i8* %9)
  %11 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %12 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @evhttp_find_header(i32 %13, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %31

16:                                               ; preds = %3
  %17 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %18 = call i64 @REQ_VERSION_ATLEAST(%struct.evhttp_request* %17, i32 1, i32 1)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %16
  %21 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %22 = call i64 @evhttp_response_needs_body(%struct.evhttp_request* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %26 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @evhttp_add_header(i32 %27, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %29 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %30 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  br label %34

31:                                               ; preds = %20, %16, %3
  %32 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %33 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %32, i32 0, i32 0
  store i32 0, i32* %33, align 4
  br label %34

34:                                               ; preds = %31, %24
  %35 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %36 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %39 = call i32 @evhttp_make_header(i32 %37, %struct.evhttp_request* %38)
  %40 = load %struct.evhttp_request*, %struct.evhttp_request** %4, align 8
  %41 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @evhttp_write_buffer(i32 %42, i32* null, i32* null)
  ret void
}

declare dso_local i32 @evhttp_response_code_(%struct.evhttp_request*, i32, i8*) #1

declare dso_local i32* @evhttp_find_header(i32, i8*) #1

declare dso_local i64 @REQ_VERSION_ATLEAST(%struct.evhttp_request*, i32, i32) #1

declare dso_local i64 @evhttp_response_needs_body(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_make_header(i32, %struct.evhttp_request*) #1

declare dso_local i32 @evhttp_write_buffer(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
