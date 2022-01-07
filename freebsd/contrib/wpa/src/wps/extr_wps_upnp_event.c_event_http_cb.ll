; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_event.c_event_http_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_event.c_event_http_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_client = type { i32 }
%struct.wps_event_ = type { %struct.TYPE_2__*, %struct.subscription* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.subscription = type { i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"WPS UPnP: HTTP client callback: e=%p c=%p event=%d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"WPS UPnP: Got event %p reply OK from %s\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"WPS UPnP: Event send failure\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"WPS UPnP: Invalid reply\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"WPS UPnP: Event send timeout\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.http_client*, i32)* @event_http_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_http_cb(i8* %0, %struct.http_client* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.http_client*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wps_event_*, align 8
  %8 = alloca %struct.subscription*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.http_client* %1, %struct.http_client** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.wps_event_*
  store %struct.wps_event_* %10, %struct.wps_event_** %7, align 8
  %11 = load %struct.wps_event_*, %struct.wps_event_** %7, align 8
  %12 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %11, i32 0, i32 1
  %13 = load %struct.subscription*, %struct.subscription** %12, align 8
  store %struct.subscription* %13, %struct.subscription** %8, align 8
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load %struct.wps_event_*, %struct.wps_event_** %7, align 8
  %16 = load %struct.http_client*, %struct.http_client** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.wps_event_* %15, %struct.http_client* %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  switch i32 %19, label %62 [
    i32 129, label %20
    i32 131, label %47
    i32 130, label %52
    i32 128, label %57
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* @MSG_DEBUG, align 4
  %22 = load %struct.wps_event_*, %struct.wps_event_** %7, align 8
  %23 = load %struct.wps_event_*, %struct.wps_event_** %7, align 8
  %24 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), %struct.wps_event_* %22, i32 %27)
  %29 = load %struct.wps_event_*, %struct.wps_event_** %7, align 8
  %30 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 0, i32* %32, align 4
  %33 = load %struct.subscription*, %struct.subscription** %8, align 8
  %34 = getelementptr inbounds %struct.subscription, %struct.subscription* %33, i32 0, i32 2
  store i32 0, i32* %34, align 4
  %35 = load %struct.wps_event_*, %struct.wps_event_** %7, align 8
  %36 = call i32 @event_delete(%struct.wps_event_* %35)
  %37 = load %struct.subscription*, %struct.subscription** %8, align 8
  %38 = getelementptr inbounds %struct.subscription, %struct.subscription* %37, i32 0, i32 1
  %39 = call i32 @dl_list_empty(i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %20
  %42 = load %struct.subscription*, %struct.subscription** %8, align 8
  %43 = getelementptr inbounds %struct.subscription, %struct.subscription* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @event_send_all_later(i32 %44)
  br label %46

46:                                               ; preds = %41, %20
  br label %62

47:                                               ; preds = %3
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.wps_event_*, %struct.wps_event_** %7, align 8
  %51 = call i32 @event_addr_failure(%struct.wps_event_* %50)
  br label %62

52:                                               ; preds = %3
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %55 = load %struct.wps_event_*, %struct.wps_event_** %7, align 8
  %56 = call i32 @event_addr_failure(%struct.wps_event_* %55)
  br label %62

57:                                               ; preds = %3
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %60 = load %struct.wps_event_*, %struct.wps_event_** %7, align 8
  %61 = call i32 @event_addr_failure(%struct.wps_event_* %60)
  br label %62

62:                                               ; preds = %3, %57, %52, %47, %46
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @event_delete(%struct.wps_event_*) #1

declare dso_local i32 @dl_list_empty(i32*) #1

declare dso_local i32 @event_send_all_later(i32) #1

declare dso_local i32 @event_addr_failure(%struct.wps_event_*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
