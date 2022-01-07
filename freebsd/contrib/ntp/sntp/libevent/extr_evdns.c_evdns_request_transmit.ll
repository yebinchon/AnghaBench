; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_request_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/sntp/libevent/extr_evdns.c_evdns_request_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { i32, i32, i32, %struct.TYPE_5__*, i32, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EVDNS_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Setting timeout for request %p, sent to nameserver %p\00", align 1
@EVDNS_LOG_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"Error from libevent when adding timer for request %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request*)* @evdns_request_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @evdns_request_transmit(%struct.request* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.request*, %struct.request** %3, align 8
  %7 = getelementptr inbounds %struct.request, %struct.request* %6, i32 0, i32 3
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = call i32 @ASSERT_LOCKED(%struct.TYPE_5__* %8)
  %10 = load %struct.request*, %struct.request** %3, align 8
  %11 = call i32 @ASSERT_VALID_REQUEST(%struct.request* %10)
  %12 = load %struct.request*, %struct.request** %3, align 8
  %13 = getelementptr inbounds %struct.request, %struct.request* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.request*, %struct.request** %3, align 8
  %15 = getelementptr inbounds %struct.request, %struct.request* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 65535
  %18 = zext i1 %17 to i32
  %19 = call i32 @EVUTIL_ASSERT(i32 %18)
  %20 = load %struct.request*, %struct.request** %3, align 8
  %21 = getelementptr inbounds %struct.request, %struct.request* %20, i32 0, i32 5
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %77

25:                                               ; preds = %1
  %26 = load %struct.request*, %struct.request** %3, align 8
  %27 = getelementptr inbounds %struct.request, %struct.request* %26, i32 0, i32 5
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 1, i32* %2, align 4
  br label %77

33:                                               ; preds = %25
  %34 = load %struct.request*, %struct.request** %3, align 8
  %35 = load %struct.request*, %struct.request** %3, align 8
  %36 = getelementptr inbounds %struct.request, %struct.request* %35, i32 0, i32 5
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @evdns_request_transmit_to(%struct.request* %34, %struct.TYPE_4__* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  switch i32 %39, label %50 [
    i32 1, label %40
    i32 2, label %49
  ]

40:                                               ; preds = %33
  %41 = load %struct.request*, %struct.request** %3, align 8
  %42 = getelementptr inbounds %struct.request, %struct.request* %41, i32 0, i32 5
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.request*, %struct.request** %3, align 8
  %46 = getelementptr inbounds %struct.request, %struct.request* %45, i32 0, i32 5
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @nameserver_write_waiting(%struct.TYPE_4__* %47, i32 1)
  store i32 1, i32* %2, align 4
  br label %77

49:                                               ; preds = %33
  store i32 1, i32* %4, align 4
  br label %50

50:                                               ; preds = %33, %49
  %51 = load i32, i32* @EVDNS_LOG_DEBUG, align 4
  %52 = load %struct.request*, %struct.request** %3, align 8
  %53 = load %struct.request*, %struct.request** %3, align 8
  %54 = getelementptr inbounds %struct.request, %struct.request* %53, i32 0, i32 5
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = call i32 (i32, i8*, %struct.request*, ...) @log(i32 %51, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), %struct.request* %52, %struct.TYPE_4__* %55)
  %57 = load %struct.request*, %struct.request** %3, align 8
  %58 = getelementptr inbounds %struct.request, %struct.request* %57, i32 0, i32 4
  %59 = load %struct.request*, %struct.request** %3, align 8
  %60 = getelementptr inbounds %struct.request, %struct.request* %59, i32 0, i32 3
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = call i32 @evtimer_add(i32* %58, i32* %62)
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %50
  %66 = load i32, i32* @EVDNS_LOG_WARN, align 4
  %67 = load %struct.request*, %struct.request** %3, align 8
  %68 = call i32 (i32, i8*, %struct.request*, ...) @log(i32 %66, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), %struct.request* %67)
  br label %69

69:                                               ; preds = %65, %50
  %70 = load %struct.request*, %struct.request** %3, align 8
  %71 = getelementptr inbounds %struct.request, %struct.request* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 8
  %74 = load %struct.request*, %struct.request** %3, align 8
  %75 = getelementptr inbounds %struct.request, %struct.request* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %69, %40, %32, %24
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @ASSERT_LOCKED(%struct.TYPE_5__*) #1

declare dso_local i32 @ASSERT_VALID_REQUEST(%struct.request*) #1

declare dso_local i32 @EVUTIL_ASSERT(i32) #1

declare dso_local i32 @evdns_request_transmit_to(%struct.request*, %struct.TYPE_4__*) #1

declare dso_local i32 @nameserver_write_waiting(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @log(i32, i8*, %struct.request*, ...) #1

declare dso_local i32 @evtimer_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
