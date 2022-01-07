; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_event.c_event_addr_failure.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_event.c_event_addr_failure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_event_ = type { %struct.TYPE_2__*, %struct.subscription* }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.subscription = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"WPS UPnP: Failed to send event %p to %s (num_failures=%u)\00", align 1
@MAX_FAILURES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [60 x i8] c"WPS UPnP: Deleting subscription %p address %s due to errors\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"WPS UPnP: Removing subscription %p with no addresses\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_event_*)* @event_addr_failure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_addr_failure(%struct.wps_event_* %0) #0 {
  %2 = alloca %struct.wps_event_*, align 8
  %3 = alloca %struct.subscription*, align 8
  store %struct.wps_event_* %0, %struct.wps_event_** %2, align 8
  %4 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %5 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %4, i32 0, i32 1
  %6 = load %struct.subscription*, %struct.subscription** %5, align 8
  store %struct.subscription* %6, %struct.subscription** %3, align 8
  %7 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %8 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %11, 1
  store i64 %12, i64* %10, align 8
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %15 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %16 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %21 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 (i32, i8*, ...) @wpa_printf(i32 %13, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), %struct.wps_event_* %14, i32 %19, i64 %24)
  %26 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %27 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MAX_FAILURES, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %1
  %34 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %35 = call i32 @event_retry(%struct.wps_event_* %34, i32 1)
  br label %72

36:                                               ; preds = %1
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load %struct.subscription*, %struct.subscription** %3, align 8
  %39 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %40 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), %struct.subscription* %38, i32 %43)
  %45 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %46 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = call i32 @dl_list_del(i32* %48)
  %50 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %51 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = call i32 @subscr_addr_delete(%struct.TYPE_2__* %52)
  %54 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %55 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %54, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %55, align 8
  %56 = load %struct.subscription*, %struct.subscription** %3, align 8
  %57 = getelementptr inbounds %struct.subscription, %struct.subscription* %56, i32 0, i32 1
  %58 = call i64 @dl_list_empty(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %36
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = load %struct.subscription*, %struct.subscription** %3, align 8
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0), %struct.subscription* %62)
  %64 = load %struct.subscription*, %struct.subscription** %3, align 8
  %65 = getelementptr inbounds %struct.subscription, %struct.subscription* %64, i32 0, i32 0
  %66 = call i32 @dl_list_del(i32* %65)
  %67 = load %struct.subscription*, %struct.subscription** %3, align 8
  %68 = call i32 @subscription_destroy(%struct.subscription* %67)
  br label %72

69:                                               ; preds = %36
  %70 = load %struct.wps_event_*, %struct.wps_event_** %2, align 8
  %71 = call i32 @event_retry(%struct.wps_event_* %70, i32 0)
  br label %72

72:                                               ; preds = %69, %60, %33
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @event_retry(%struct.wps_event_*, i32) #1

declare dso_local i32 @dl_list_del(i32*) #1

declare dso_local i32 @subscr_addr_delete(%struct.TYPE_2__*) #1

declare dso_local i64 @dl_list_empty(i32*) #1

declare dso_local i32 @subscription_destroy(%struct.subscription*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
