; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_send_reply_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_http.c_evhttp_send_reply_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_request = type { i32, i64, %struct.evhttp_connection* }
%struct.evhttp_connection = type { i32*, i32 (%struct.evhttp_connection*, i32*)*, i32 }
%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"0\0D\0A\0D\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @evhttp_send_reply_end(%struct.evhttp_request* %0) #0 {
  %2 = alloca %struct.evhttp_request*, align 8
  %3 = alloca %struct.evhttp_connection*, align 8
  %4 = alloca %struct.evbuffer*, align 8
  store %struct.evhttp_request* %0, %struct.evhttp_request** %2, align 8
  %5 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %6 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %5, i32 0, i32 2
  %7 = load %struct.evhttp_connection*, %struct.evhttp_connection** %6, align 8
  store %struct.evhttp_connection* %7, %struct.evhttp_connection** %3, align 8
  %8 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %9 = icmp eq %struct.evhttp_connection* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %12 = call i32 @evhttp_request_free(%struct.evhttp_request* %11)
  br label %46

13:                                               ; preds = %1
  %14 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %15 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.evbuffer* @bufferevent_get_output(i32 %16)
  store %struct.evbuffer* %17, %struct.evbuffer** %4, align 8
  %18 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %19 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %21 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %13
  %25 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %26 = call i32 @evbuffer_add(%struct.evbuffer* %25, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %27 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %28 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %27, i32 0, i32 2
  %29 = load %struct.evhttp_connection*, %struct.evhttp_connection** %28, align 8
  %30 = call i32 @evhttp_write_buffer(%struct.evhttp_connection* %29, i32 (%struct.evhttp_connection*, i32*)* @evhttp_send_done, i32* null)
  %31 = load %struct.evhttp_request*, %struct.evhttp_request** %2, align 8
  %32 = getelementptr inbounds %struct.evhttp_request, %struct.evhttp_request* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %46

33:                                               ; preds = %13
  %34 = load %struct.evbuffer*, %struct.evbuffer** %4, align 8
  %35 = call i64 @evbuffer_get_length(%struct.evbuffer* %34)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %39 = call i32 @evhttp_send_done(%struct.evhttp_connection* %38, i32* null)
  br label %45

40:                                               ; preds = %33
  %41 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %42 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %41, i32 0, i32 1
  store i32 (%struct.evhttp_connection*, i32*)* @evhttp_send_done, i32 (%struct.evhttp_connection*, i32*)** %42, align 8
  %43 = load %struct.evhttp_connection*, %struct.evhttp_connection** %3, align 8
  %44 = getelementptr inbounds %struct.evhttp_connection, %struct.evhttp_connection* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %40, %37
  br label %46

46:                                               ; preds = %10, %45, %24
  ret void
}

declare dso_local i32 @evhttp_request_free(%struct.evhttp_request*) #1

declare dso_local %struct.evbuffer* @bufferevent_get_output(i32) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i8*, i32) #1

declare dso_local i32 @evhttp_write_buffer(%struct.evhttp_connection*, i32 (%struct.evhttp_connection*, i32*)*, i32*) #1

declare dso_local i32 @evhttp_send_done(%struct.evhttp_connection*, i32*) #1

declare dso_local i64 @evbuffer_get_length(%struct.evbuffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
