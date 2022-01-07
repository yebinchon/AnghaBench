; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_send_reply_chunk_with_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_http.c_evhttp_send_reply_chunk_with_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i64, %struct.evhttp_connection* }
%struct.evhttp_connection = type { i32 }
%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"%x\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_send_reply_chunk_with_cb(%struct.evhttp_request* %0, %struct.evbuffer* %1, void (%struct.evhttp_connection*, i8*)* %2, i8* %3) #0 {
  %5 = alloca %struct.evhttp_request*, align 8
  %6 = alloca %struct.evbuffer*, align 8
  %7 = alloca void (%struct.evhttp_connection*, i8*)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.evhttp_connection*, align 8
  %10 = alloca %struct.evbuffer*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %5, align 8
  store %struct.evbuffer* %1, %struct.evbuffer** %6, align 8
  store void (%struct.evhttp_connection*, i8*)* %2, void (%struct.evhttp_connection*, i8*)** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.evhttp_request*, %struct.evhttp_request** %5, align 8
  %12 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %11, i32 0, i32 1
  %13 = load %struct.evhttp_connection*, %struct.evhttp_connection** %12, align 8
  store %struct.evhttp_connection* %13, %struct.evhttp_connection** %9, align 8
  %14 = load %struct.evhttp_connection*, %struct.evhttp_connection** %9, align 8
  %15 = icmp eq %struct.evhttp_connection* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %4
  br label %58

17:                                               ; preds = %4
  %18 = load %struct.evhttp_connection*, %struct.evhttp_connection** %9, align 8
  %19 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.evbuffer* @bufferevent_get_output(i32 %20)
  store %struct.evbuffer* %21, %struct.evbuffer** %10, align 8
  %22 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %23 = call i64 @evbuffer_get_length(%struct.evbuffer* %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %58

26:                                               ; preds = %17
  %27 = load %struct.evhttp_request*, %struct.evhttp_request** %5, align 8
  %28 = call i32 @evhttp_response_needs_body(%struct.evhttp_request* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %58

31:                                               ; preds = %26
  %32 = load %struct.evhttp_request*, %struct.evhttp_request** %5, align 8
  %33 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %38 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %39 = call i64 @evbuffer_get_length(%struct.evbuffer* %38)
  %40 = trunc i64 %39 to i32
  %41 = call i32 @evbuffer_add_printf(%struct.evbuffer* %37, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %44 = load %struct.evbuffer*, %struct.evbuffer** %6, align 8
  %45 = call i32 @evbuffer_add_buffer(%struct.evbuffer* %43, %struct.evbuffer* %44)
  %46 = load %struct.evhttp_request*, %struct.evhttp_request** %5, align 8
  %47 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.evbuffer*, %struct.evbuffer** %10, align 8
  %52 = call i32 @evbuffer_add(%struct.evbuffer* %51, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 2)
  br label %53

53:                                               ; preds = %50, %42
  %54 = load %struct.evhttp_connection*, %struct.evhttp_connection** %9, align 8
  %55 = load void (%struct.evhttp_connection*, i8*)*, void (%struct.evhttp_connection*, i8*)** %7, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @evhttp_write_buffer(%struct.evhttp_connection* %54, void (%struct.evhttp_connection*, i8*)* %55, i8* %56)
  br label %58

58:                                               ; preds = %53, %30, %25, %16
  ret void
}

declare dso_local %struct.evbuffer* @bufferevent_get_output(i32) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

declare dso_local i32 @evhttp_response_needs_body(%struct.evhttp_request*) #1

declare dso_local i32 @evbuffer_add_printf(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @evbuffer_add_buffer(%struct.evbuffer*, %struct.evbuffer*) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @evhttp_write_buffer(%struct.evhttp_connection*, void (%struct.evhttp_connection*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
