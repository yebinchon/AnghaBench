; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ssdp.c_ssdp_open_multicast.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ssdp.c_ssdp_open_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upnp_wps_device_sm = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssdp_open_multicast(%struct.upnp_wps_device_sm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.upnp_wps_device_sm*, align 8
  store %struct.upnp_wps_device_sm* %0, %struct.upnp_wps_device_sm** %3, align 8
  %4 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %5 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @ssdp_open_multicast_sock(i32 %6, i32* null)
  %8 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %9 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %8, i32 0, i32 0
  store i64 %7, i64* %9, align 8
  %10 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %11 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %16

16:                                               ; preds = %15, %14
  %17 = load i32, i32* %2, align 4
  ret i32 %17
}

declare dso_local i64 @ssdp_open_multicast_sock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
