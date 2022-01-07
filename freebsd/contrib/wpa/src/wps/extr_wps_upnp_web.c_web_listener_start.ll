; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_web_listener_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_web_listener_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upnp_wps_device_sm = type { i32*, i32, i32 }
%struct.in_addr = type { i32 }

@web_connection_check_data = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @web_listener_start(%struct.upnp_wps_device_sm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.upnp_wps_device_sm*, align 8
  %4 = alloca %struct.in_addr, align 4
  store %struct.upnp_wps_device_sm* %0, %struct.upnp_wps_device_sm** %3, align 8
  %5 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %6 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %4, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = load i32, i32* @web_connection_check_data, align 4
  %10 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %11 = call i32* @http_server_init(%struct.in_addr* %4, i32 -1, i32 %9, %struct.upnp_wps_device_sm* %10)
  %12 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %13 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %12, i32 0, i32 0
  store i32* %11, i32** %13, align 8
  %14 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %15 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %20 = call i32 @web_listener_stop(%struct.upnp_wps_device_sm* %19)
  store i32 -1, i32* %2, align 4
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %23 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @http_server_get_port(i32* %24)
  %26 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %27 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %21, %18
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32* @http_server_init(%struct.in_addr*, i32, i32, %struct.upnp_wps_device_sm*) #1

declare dso_local i32 @web_listener_stop(%struct.upnp_wps_device_sm*) #1

declare dso_local i32 @http_server_get_port(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
