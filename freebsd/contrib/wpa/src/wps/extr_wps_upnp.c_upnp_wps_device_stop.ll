; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp.c_upnp_wps_device_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp.c_upnp_wps_device_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upnp_wps_device_sm = type { i32, i64, i32*, i32*, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"WPS UPnP: Stop device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.upnp_wps_device_sm*)* @upnp_wps_device_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @upnp_wps_device_stop(%struct.upnp_wps_device_sm* %0) #0 {
  %2 = alloca %struct.upnp_wps_device_sm*, align 8
  store %struct.upnp_wps_device_sm* %0, %struct.upnp_wps_device_sm** %2, align 8
  %3 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %4 = icmp ne %struct.upnp_wps_device_sm* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %7 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %5, %1
  br label %54

11:                                               ; preds = %5
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %15 = call i32 @web_listener_stop(%struct.upnp_wps_device_sm* %14)
  %16 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %17 = call i32 @ssdp_listener_stop(%struct.upnp_wps_device_sm* %16)
  %18 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %19 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %18, i32 0, i32 5
  %20 = call i32 @upnp_wps_free_msearchreply(i32* %19)
  %21 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %22 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %21, i32 0, i32 4
  %23 = call i32 @upnp_wps_free_subscriptions(i32* %22, i32* null)
  %24 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %25 = call i32 @advertisement_state_machine_stop(%struct.upnp_wps_device_sm* %24, i32 1)
  %26 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %27 = call i32 @event_send_stop_all(%struct.upnp_wps_device_sm* %26)
  %28 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %29 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %28, i32 0, i32 3
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @os_free(i32* %30)
  %32 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %33 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %32, i32 0, i32 3
  store i32* null, i32** %33, align 8
  %34 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %35 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @os_free(i32* %36)
  %38 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %39 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %41 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %11
  %45 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %46 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @close(i32 %47)
  br label %49

49:                                               ; preds = %44, %11
  %50 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %51 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 8
  %52 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %53 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %49, %10
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @web_listener_stop(%struct.upnp_wps_device_sm*) #1

declare dso_local i32 @ssdp_listener_stop(%struct.upnp_wps_device_sm*) #1

declare dso_local i32 @upnp_wps_free_msearchreply(i32*) #1

declare dso_local i32 @upnp_wps_free_subscriptions(i32*, i32*) #1

declare dso_local i32 @advertisement_state_machine_stop(%struct.upnp_wps_device_sm*, i32) #1

declare dso_local i32 @event_send_stop_all(%struct.upnp_wps_device_sm*) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
