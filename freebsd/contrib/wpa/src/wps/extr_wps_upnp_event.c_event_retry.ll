; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_event.c_event_retry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_event.c_event_retry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_event_ = type { i32, %struct.TYPE_2__*, i32, %struct.subscription* }
%struct.TYPE_2__ = type { i32 }
%struct.subscription = type { i32, i32, %struct.upnp_wps_device_sm*, i32 }
%struct.upnp_wps_device_sm = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"WPS UPnP: Retry event %p for subscription %p\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"WPS UPnP: Try address %d\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"WPS UPnP: Giving up on sending event for %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_event_*, i32)* @event_retry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @event_retry(%struct.wps_event_* %0, i32 %1) #0 {
  %3 = alloca %struct.wps_event_*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.subscription*, align 8
  %6 = alloca %struct.upnp_wps_device_sm*, align 8
  store %struct.wps_event_* %0, %struct.wps_event_** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %8 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %7, i32 0, i32 3
  %9 = load %struct.subscription*, %struct.subscription** %8, align 8
  store %struct.subscription* %9, %struct.subscription** %5, align 8
  %10 = load %struct.subscription*, %struct.subscription** %5, align 8
  %11 = getelementptr inbounds %struct.subscription, %struct.subscription* %10, i32 0, i32 2
  %12 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %11, align 8
  store %struct.upnp_wps_device_sm* %12, %struct.upnp_wps_device_sm** %6, align 8
  %13 = load i32, i32* @MSG_DEBUG, align 4
  %14 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %15 = load %struct.subscription*, %struct.subscription** %5, align 8
  %16 = call i32 (i32, i8*, %struct.wps_event_*, ...) @wpa_printf(i32 %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.wps_event_* %14, %struct.subscription* %15)
  %17 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %18 = call i32 @event_clean(%struct.wps_event_* %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %33

21:                                               ; preds = %2
  %22 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %23 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 8
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %28 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = inttoptr i64 %30 to %struct.wps_event_*
  %32 = call i32 (i32, i8*, %struct.wps_event_*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), %struct.wps_event_* %31)
  br label %33

33:                                               ; preds = %21, %2
  %34 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %35 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.subscription*, %struct.subscription** %5, align 8
  %38 = getelementptr inbounds %struct.subscription, %struct.subscription* %37, i32 0, i32 3
  %39 = call i32 @dl_list_len(i32* %38)
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %33
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %44 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to %struct.wps_event_*
  %50 = call i32 (i32, i8*, %struct.wps_event_*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), %struct.wps_event_* %49)
  %51 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %52 = call i32 @event_delete(%struct.wps_event_* %51)
  %53 = load %struct.subscription*, %struct.subscription** %5, align 8
  %54 = getelementptr inbounds %struct.subscription, %struct.subscription* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load %struct.subscription*, %struct.subscription** %5, align 8
  %56 = getelementptr inbounds %struct.subscription, %struct.subscription* %55, i32 0, i32 1
  %57 = call i32 @dl_list_empty(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %41
  %60 = load %struct.subscription*, %struct.subscription** %5, align 8
  %61 = getelementptr inbounds %struct.subscription, %struct.subscription* %60, i32 0, i32 2
  %62 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %61, align 8
  %63 = call i32 @event_send_all_later(%struct.upnp_wps_device_sm* %62)
  br label %64

64:                                               ; preds = %59, %41
  br label %73

65:                                               ; preds = %33
  %66 = load %struct.subscription*, %struct.subscription** %5, align 8
  %67 = getelementptr inbounds %struct.subscription, %struct.subscription* %66, i32 0, i32 1
  %68 = load %struct.wps_event_*, %struct.wps_event_** %3, align 8
  %69 = getelementptr inbounds %struct.wps_event_, %struct.wps_event_* %68, i32 0, i32 0
  %70 = call i32 @dl_list_add(i32* %67, i32* %69)
  %71 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %6, align 8
  %72 = call i32 @event_send_all_later(%struct.upnp_wps_device_sm* %71)
  br label %73

73:                                               ; preds = %65, %64
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, %struct.wps_event_*, ...) #1

declare dso_local i32 @event_clean(%struct.wps_event_*) #1

declare dso_local i32 @dl_list_len(i32*) #1

declare dso_local i32 @event_delete(%struct.wps_event_*) #1

declare dso_local i32 @dl_list_empty(i32*) #1

declare dso_local i32 @event_send_all_later(%struct.upnp_wps_device_sm*) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
