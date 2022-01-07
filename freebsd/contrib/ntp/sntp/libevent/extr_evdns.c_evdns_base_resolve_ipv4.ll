; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_base_resolve_ipv4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_base_resolve_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evdns_request = type { i32* }
%struct.evdns_base = type { i32 }
%struct.request = type { i32 }

@EVDNS_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Resolve requested for %s\00", align 1
@DNS_QUERY_NO_SEARCH = common dso_local global i32 0, align 4
@TYPE_A = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.evdns_request* @evdns_base_resolve_ipv4(%struct.evdns_base* %0, i8* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.evdns_request*, align 8
  %7 = alloca %struct.evdns_base*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.evdns_request*, align 8
  %13 = alloca %struct.request*, align 8
  store %struct.evdns_base* %0, %struct.evdns_base** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %14 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @log(i32 %14, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %15)
  %17 = call %struct.evdns_request* @mm_calloc(i32 1, i32 8)
  store %struct.evdns_request* %17, %struct.evdns_request** %12, align 8
  %18 = load %struct.evdns_request*, %struct.evdns_request** %12, align 8
  %19 = icmp eq %struct.evdns_request* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %5
  store %struct.evdns_request* null, %struct.evdns_request** %6, align 8
  br label %64

21:                                               ; preds = %5
  %22 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %23 = call i32 @EVDNS_LOCK(%struct.evdns_base* %22)
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* @DNS_QUERY_NO_SEARCH, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %43

28:                                               ; preds = %21
  %29 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %30 = load %struct.evdns_request*, %struct.evdns_request** %12, align 8
  %31 = load i32, i32* @TYPE_A, align 4
  %32 = load i8*, i8** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = load i8*, i8** %11, align 8
  %36 = call %struct.request* @request_new(%struct.evdns_base* %29, %struct.evdns_request* %30, i32 %31, i8* %32, i32 %33, i32 %34, i8* %35)
  store %struct.request* %36, %struct.request** %13, align 8
  %37 = load %struct.request*, %struct.request** %13, align 8
  %38 = icmp ne %struct.request* %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.request*, %struct.request** %13, align 8
  %41 = call i32 @request_submit(%struct.request* %40)
  br label %42

42:                                               ; preds = %39, %28
  br label %52

43:                                               ; preds = %21
  %44 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %45 = load %struct.evdns_request*, %struct.evdns_request** %12, align 8
  %46 = load i32, i32* @TYPE_A, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %10, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @search_request_new(%struct.evdns_base* %44, %struct.evdns_request* %45, i32 %46, i8* %47, i32 %48, i32 %49, i8* %50)
  br label %52

52:                                               ; preds = %43, %42
  %53 = load %struct.evdns_request*, %struct.evdns_request** %12, align 8
  %54 = getelementptr inbounds %struct.evdns_request, %struct.evdns_request* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = icmp eq i32* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.evdns_request*, %struct.evdns_request** %12, align 8
  %59 = call i32 @mm_free(%struct.evdns_request* %58)
  store %struct.evdns_request* null, %struct.evdns_request** %12, align 8
  br label %60

60:                                               ; preds = %57, %52
  %61 = load %struct.evdns_base*, %struct.evdns_base** %7, align 8
  %62 = call i32 @EVDNS_UNLOCK(%struct.evdns_base* %61)
  %63 = load %struct.evdns_request*, %struct.evdns_request** %12, align 8
  store %struct.evdns_request* %63, %struct.evdns_request** %6, align 8
  br label %64

64:                                               ; preds = %60, %20
  %65 = load %struct.evdns_request*, %struct.evdns_request** %6, align 8
  ret %struct.evdns_request* %65
}

declare dso_local i32 @log(i32, i8*, i8*) #1

declare dso_local %struct.evdns_request* @mm_calloc(i32, i32) #1

declare dso_local i32 @EVDNS_LOCK(%struct.evdns_base*) #1

declare dso_local %struct.request* @request_new(%struct.evdns_base*, %struct.evdns_request*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @request_submit(%struct.request*) #1

declare dso_local i32 @search_request_new(%struct.evdns_base*, %struct.evdns_request*, i32, i8*, i32, i32, i8*) #1

declare dso_local i32 @mm_free(%struct.evdns_request*) #1

declare dso_local i32 @EVDNS_UNLOCK(%struct.evdns_base*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
