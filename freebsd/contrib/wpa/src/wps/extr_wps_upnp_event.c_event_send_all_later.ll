; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_event.c_event_send_all_later.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_event.c_event_send_all_later.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upnp_wps_device_sm = type { i32 }

@EVENT_DELAY_SECONDS = common dso_local global i32 0, align 4
@EVENT_DELAY_MSEC = common dso_local global i32 0, align 4
@event_send_all_later_handler = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @event_send_all_later(%struct.upnp_wps_device_sm* %0) #0 {
  %2 = alloca %struct.upnp_wps_device_sm*, align 8
  store %struct.upnp_wps_device_sm* %0, %struct.upnp_wps_device_sm** %2, align 8
  %3 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %4 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %16

8:                                                ; preds = %1
  %9 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %10 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %9, i32 0, i32 0
  store i32 1, i32* %10, align 4
  %11 = load i32, i32* @EVENT_DELAY_SECONDS, align 4
  %12 = load i32, i32* @EVENT_DELAY_MSEC, align 4
  %13 = load i32, i32* @event_send_all_later_handler, align 4
  %14 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %2, align 8
  %15 = call i32 @eloop_register_timeout(i32 %11, i32 %12, i32 %13, i32* null, %struct.upnp_wps_device_sm* %14)
  br label %16

16:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, i32*, %struct.upnp_wps_device_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
