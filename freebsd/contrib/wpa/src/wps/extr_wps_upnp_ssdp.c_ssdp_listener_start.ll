; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ssdp.c_ssdp_listener_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ssdp.c_ssdp_listener_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upnp_wps_device_sm = type { i32, i32 }

@EVENT_TYPE_READ = common dso_local global i32 0, align 4
@ssdp_listener_handler = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"WPS UPnP: ssdp_listener_start failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssdp_listener_start(%struct.upnp_wps_device_sm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.upnp_wps_device_sm*, align 8
  store %struct.upnp_wps_device_sm* %0, %struct.upnp_wps_device_sm** %3, align 8
  %4 = call i32 (...) @ssdp_listener_open()
  %5 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %6 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %5, i32 0, i32 1
  store i32 %4, i32* %6, align 4
  %7 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %8 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @EVENT_TYPE_READ, align 4
  %11 = load i32, i32* @ssdp_listener_handler, align 4
  %12 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %13 = call i64 @eloop_register_sock(i32 %9, i32 %10, i32 %11, i32* null, %struct.upnp_wps_device_sm* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %19

16:                                               ; preds = %1
  %17 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %18 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %17, i32 0, i32 0
  store i32 1, i32* %18, align 4
  store i32 0, i32* %2, align 4
  br label %24

19:                                               ; preds = %15
  %20 = load i32, i32* @MSG_ERROR, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %23 = call i32 @ssdp_listener_stop(%struct.upnp_wps_device_sm* %22)
  store i32 -1, i32* %2, align 4
  br label %24

24:                                               ; preds = %19, %16
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ssdp_listener_open(...) #1

declare dso_local i64 @eloop_register_sock(i32, i32, i32, i32*, %struct.upnp_wps_device_sm*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @ssdp_listener_stop(%struct.upnp_wps_device_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
