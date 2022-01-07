; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/test/extr_regress_http.c_http_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp = type { i32 }
%struct.event_base = type opaque

@.str = private unnamed_addr constant [6 x i8] c"/test\00", align 1
@http_basic_cb = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"/large\00", align 1
@http_large_cb = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"/chunked\00", align 1
@http_chunked_cb = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"/streamed\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"/postit\00", align 1
@http_post_cb = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"/putit\00", align 1
@http_put_cb = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"/deleteit\00", align 1
@http_delete_cb = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"/delay\00", align 1
@http_delay_cb = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"/largedelay\00", align 1
@http_large_delay_cb = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [12 x i8] c"/badrequest\00", align 1
@http_badreq_cb = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [12 x i8] c"/oncomplete\00", align 1
@http_on_complete_cb = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@http_dispatcher_cb = common dso_local global i32 0, align 4
@HTTP_BIND_SSL = common dso_local global i32 0, align 4
@https_bev = common dso_local global i32 0, align 4
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
  %10 = bitcast %struct.event_base* %9 to %struct.evhttp*
  %11 = call %struct.evhttp* @evhttp_new(%struct.evhttp* %10)
  store %struct.evhttp* %11, %struct.evhttp** %8, align 8
  %12 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call i64 @http_bind(%struct.evhttp* %12, i32* %13, i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store %struct.evhttp* null, %struct.evhttp** %4, align 8
  br label %79

18:                                               ; preds = %3
  %19 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %20 = load i32, i32* @http_basic_cb, align 4
  %21 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %22 = call i32 @evhttp_set_cb(%struct.evhttp* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20, %struct.evhttp* %21)
  %23 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %24 = load i32, i32* @http_large_cb, align 4
  %25 = load %struct.event_base*, %struct.event_base** %6, align 8
  %26 = bitcast %struct.event_base* %25 to %struct.evhttp*
  %27 = call i32 @evhttp_set_cb(%struct.evhttp* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %24, %struct.evhttp* %26)
  %28 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %29 = load i32, i32* @http_chunked_cb, align 4
  %30 = load %struct.event_base*, %struct.event_base** %6, align 8
  %31 = bitcast %struct.event_base* %30 to %struct.evhttp*
  %32 = call i32 @evhttp_set_cb(%struct.evhttp* %28, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %29, %struct.evhttp* %31)
  %33 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %34 = load i32, i32* @http_chunked_cb, align 4
  %35 = load %struct.event_base*, %struct.event_base** %6, align 8
  %36 = bitcast %struct.event_base* %35 to %struct.evhttp*
  %37 = call i32 @evhttp_set_cb(%struct.evhttp* %33, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %34, %struct.evhttp* %36)
  %38 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %39 = load i32, i32* @http_post_cb, align 4
  %40 = load %struct.event_base*, %struct.event_base** %6, align 8
  %41 = bitcast %struct.event_base* %40 to %struct.evhttp*
  %42 = call i32 @evhttp_set_cb(%struct.evhttp* %38, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %39, %struct.evhttp* %41)
  %43 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %44 = load i32, i32* @http_put_cb, align 4
  %45 = load %struct.event_base*, %struct.event_base** %6, align 8
  %46 = bitcast %struct.event_base* %45 to %struct.evhttp*
  %47 = call i32 @evhttp_set_cb(%struct.evhttp* %43, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %44, %struct.evhttp* %46)
  %48 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %49 = load i32, i32* @http_delete_cb, align 4
  %50 = load %struct.event_base*, %struct.event_base** %6, align 8
  %51 = bitcast %struct.event_base* %50 to %struct.evhttp*
  %52 = call i32 @evhttp_set_cb(%struct.evhttp* %48, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %49, %struct.evhttp* %51)
  %53 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %54 = load i32, i32* @http_delay_cb, align 4
  %55 = load %struct.event_base*, %struct.event_base** %6, align 8
  %56 = bitcast %struct.event_base* %55 to %struct.evhttp*
  %57 = call i32 @evhttp_set_cb(%struct.evhttp* %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %54, %struct.evhttp* %56)
  %58 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %59 = load i32, i32* @http_large_delay_cb, align 4
  %60 = load %struct.event_base*, %struct.event_base** %6, align 8
  %61 = bitcast %struct.event_base* %60 to %struct.evhttp*
  %62 = call i32 @evhttp_set_cb(%struct.evhttp* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 %59, %struct.evhttp* %61)
  %63 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %64 = load i32, i32* @http_badreq_cb, align 4
  %65 = load %struct.event_base*, %struct.event_base** %6, align 8
  %66 = bitcast %struct.event_base* %65 to %struct.evhttp*
  %67 = call i32 @evhttp_set_cb(%struct.evhttp* %63, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), i32 %64, %struct.evhttp* %66)
  %68 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %69 = load i32, i32* @http_on_complete_cb, align 4
  %70 = load %struct.event_base*, %struct.event_base** %6, align 8
  %71 = bitcast %struct.event_base* %70 to %struct.evhttp*
  %72 = call i32 @evhttp_set_cb(%struct.evhttp* %68, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %69, %struct.evhttp* %71)
  %73 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  %74 = load i32, i32* @http_dispatcher_cb, align 4
  %75 = load %struct.event_base*, %struct.event_base** %6, align 8
  %76 = bitcast %struct.event_base* %75 to %struct.evhttp*
  %77 = call i32 @evhttp_set_cb(%struct.evhttp* %73, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i32 %74, %struct.evhttp* %76)
  %78 = load %struct.evhttp*, %struct.evhttp** %8, align 8
  store %struct.evhttp* %78, %struct.evhttp** %4, align 8
  br label %79

79:                                               ; preds = %18, %17
  %80 = load %struct.evhttp*, %struct.evhttp** %4, align 8
  ret %struct.evhttp* %80
}

declare dso_local %struct.evhttp* @evhttp_new(%struct.evhttp*) #1

declare dso_local i64 @http_bind(%struct.evhttp*, i32*, i32) #1

declare dso_local i32 @evhttp_set_cb(%struct.evhttp*, i8*, i32, %struct.evhttp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
