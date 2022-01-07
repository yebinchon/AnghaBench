; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_close_detect_launch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_close_detect_launch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_connection = type { i32 }
%struct.event_base = type { i32 }
%struct.evhttp_request = type { i32 }

@close_detect_done = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"somehost\00", align 1
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Couldn't make request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @close_detect_launch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close_detect_launch(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.evhttp_connection*, align 8
  %8 = alloca %struct.event_base*, align 8
  %9 = alloca %struct.evhttp_request*, align 8
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.evhttp_connection*
  store %struct.evhttp_connection* %11, %struct.evhttp_connection** %7, align 8
  %12 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %13 = call %struct.event_base* @evhttp_connection_get_base(%struct.evhttp_connection* %12)
  store %struct.event_base* %13, %struct.event_base** %8, align 8
  %14 = load i32, i32* @close_detect_done, align 4
  %15 = load %struct.event_base*, %struct.event_base** %8, align 8
  %16 = call %struct.evhttp_request* @evhttp_request_new(i32 %14, %struct.event_base* %15)
  store %struct.evhttp_request* %16, %struct.evhttp_request** %9, align 8
  %17 = load %struct.evhttp_request*, %struct.evhttp_request** %9, align 8
  %18 = call i32 @evhttp_request_get_output_headers(%struct.evhttp_request* %17)
  %19 = call i32 @evhttp_add_header(i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.evhttp_connection*, %struct.evhttp_connection** %7, align 8
  %21 = load %struct.evhttp_request*, %struct.evhttp_request** %9, align 8
  %22 = load i32, i32* @EVHTTP_REQ_GET, align 4
  %23 = call i32 @evhttp_make_request(%struct.evhttp_connection* %20, %struct.evhttp_request* %21, i32 %22, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = call i32 @tt_fail_msg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %3
  ret void
}

declare dso_local %struct.event_base* @evhttp_connection_get_base(%struct.evhttp_connection*) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, %struct.event_base*) #1

declare dso_local i32 @evhttp_add_header(i32, i8*, i8*) #1

declare dso_local i32 @evhttp_request_get_output_headers(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_connection*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @tt_fail_msg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
