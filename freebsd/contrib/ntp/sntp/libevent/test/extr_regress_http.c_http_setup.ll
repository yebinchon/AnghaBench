; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/test/extr_regress_http.c_http_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { i32 }
%struct.event_base = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@http_basic_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"/chunked\00", align 1
@http_chunked_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"/streamed\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"/postit\00", align 1
@http_post_cb = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"/putit\00", align 1
@http_put_cb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"/deleteit\00", align 1
@http_delete_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"/delay\00", align 1
@http_delay_cb = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [12 x i8] c"/largedelay\00", align 1
@http_large_delay_cb = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"/badrequest\00", align 1
@http_badreq_cb = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"/oncomplete\00", align 1
@http_on_complete_cb = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@http_dispatcher_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.evhttp* (i32*, %struct.event_base*, i32)* @http_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.evhttp* @http_setup(i32* %0, %struct.event_base* %1, i32 %2) #0 {
  %4 = alloca %struct.evhttp*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.event_base*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.evhttp*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.event_base* %1, %struct.event_base** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.event_base*, %struct.event_base** %6, align 8
  %10 = call %struct.evhttp* @evhttp_new(%struct.event_base* %9)
  store %struct.evhttp* %10, %struct.evhttp** %8, align 8
  %11 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @http_bind(%struct.evhttp* %11, i32* %12, i32 %13)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store %struct.evhttp* null, %struct.evhttp** %4, align 8
  br label %63

17:                                               ; preds = %3
  %18 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %19 = load i32, i32* @http_basic_cb, align 4
  %20 = load %struct.event_base*, %struct.event_base** %6, align 8
  %21 = call i32 @evhttp_set_cb(%struct.evhttp* %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %19, %struct.event_base* %20)
  %22 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %23 = load i32, i32* @http_chunked_cb, align 4
  %24 = load %struct.event_base*, %struct.event_base** %6, align 8
  %25 = call i32 @evhttp_set_cb(%struct.evhttp* %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %23, %struct.event_base* %24)
  %26 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %27 = load i32, i32* @http_chunked_cb, align 4
  %28 = load %struct.event_base*, %struct.event_base** %6, align 8
  %29 = call i32 @evhttp_set_cb(%struct.evhttp* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %27, %struct.event_base* %28)
  %30 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %31 = load i32, i32* @http_post_cb, align 4
  %32 = load %struct.event_base*, %struct.event_base** %6, align 8
  %33 = call i32 @evhttp_set_cb(%struct.evhttp* %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %31, %struct.event_base* %32)
  %34 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %35 = load i32, i32* @http_put_cb, align 4
  %36 = load %struct.event_base*, %struct.event_base** %6, align 8
  %37 = call i32 @evhttp_set_cb(%struct.evhttp* %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %35, %struct.event_base* %36)
  %38 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %39 = load i32, i32* @http_delete_cb, align 4
  %40 = load %struct.event_base*, %struct.event_base** %6, align 8
  %41 = call i32 @evhttp_set_cb(%struct.evhttp* %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %39, %struct.event_base* %40)
  %42 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %43 = load i32, i32* @http_delay_cb, align 4
  %44 = load %struct.event_base*, %struct.event_base** %6, align 8
  %45 = call i32 @evhttp_set_cb(%struct.evhttp* %42, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %43, %struct.event_base* %44)
  %46 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %47 = load i32, i32* @http_large_delay_cb, align 4
  %48 = load %struct.event_base*, %struct.event_base** %6, align 8
  %49 = call i32 @evhttp_set_cb(%struct.evhttp* %46, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i32 %47, %struct.event_base* %48)
  %50 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %51 = load i32, i32* @http_badreq_cb, align 4
  %52 = load %struct.event_base*, %struct.event_base** %6, align 8
  %53 = call i32 @evhttp_set_cb(%struct.evhttp* %50, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %51, %struct.event_base* %52)
  %54 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %55 = load i32, i32* @http_on_complete_cb, align 4
  %56 = load %struct.event_base*, %struct.event_base** %6, align 8
  %57 = call i32 @evhttp_set_cb(%struct.evhttp* %54, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %55, %struct.event_base* %56)
  %58 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %59 = load i32, i32* @http_dispatcher_cb, align 4
  %60 = load %struct.event_base*, %struct.event_base** %6, align 8
  %61 = call i32 @evhttp_set_cb(%struct.evhttp* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i32 %59, %struct.event_base* %60)
  %62 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  store %struct.evhttp* %62, %struct.evhttp** %4, align 8
  br label %63

63:                                               ; preds = %17, %16
  %64 = load %struct.evhttp*, %struct.evhttp** %4, align 8
  ret %struct.evhttp* %64
}

declare dso_local %struct.evhttp* @evhttp_new(%struct.event_base*) #1

declare dso_local i64 @http_bind(%struct.evhttp*, i32*, i32) #1

declare dso_local i32 @evhttp_set_cb(%struct.evhttp*, i8*, i32, %struct.event_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
