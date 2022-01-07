; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp.c_upnp_wps_device_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp.c_upnp_wps_device_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upnp_wps_device_sm = type { i32, i32, i32, i32, i32, i32, i64 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"WPS UPnP: Could not get IP/MAC address for %s. Does it have IP address?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.upnp_wps_device_sm*, i8*)* @upnp_wps_device_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @upnp_wps_device_start(%struct.upnp_wps_device_sm* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.upnp_wps_device_sm*, align 8
  %5 = alloca i8*, align 8
  store %struct.upnp_wps_device_sm* %0, %struct.upnp_wps_device_sm** %4, align 8
  store i8* %1, i8** %5, align 8
  %6 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %7 = icmp ne %struct.upnp_wps_device_sm* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i8*, i8** %5, align 8
  %10 = icmp ne i8* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %2
  store i32 -1, i32* %3, align 4
  br label %72

12:                                               ; preds = %8
  %13 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %14 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %19 = call i32 @upnp_wps_device_stop(%struct.upnp_wps_device_sm* %18)
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %22 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %21, i32 0, i32 1
  store i32 -1, i32* %22, align 4
  %23 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %24 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %23, i32 0, i32 2
  store i32 -1, i32* %24, align 8
  %25 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %26 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %28 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %27, i32 0, i32 6
  store i64 0, i64* %28, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = call i64 @add_ssdp_network(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %69

33:                                               ; preds = %20
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %36 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %35, i32 0, i32 5
  %37 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %38 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %37, i32 0, i32 4
  %39 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %40 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @get_netif_info(i8* %34, i32* %36, i32* %38, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %33
  %45 = load i32, i32* @MSG_INFO, align 4
  %46 = load i8*, i8** %5, align 8
  %47 = call i32 @wpa_printf(i32 %45, i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i8* %46)
  br label %69

48:                                               ; preds = %33
  %49 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %50 = call i64 @web_listener_start(%struct.upnp_wps_device_sm* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %69

53:                                               ; preds = %48
  %54 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %55 = call i64 @ssdp_listener_start(%struct.upnp_wps_device_sm* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %53
  br label %69

58:                                               ; preds = %53
  %59 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %60 = call i64 @ssdp_open_multicast(%struct.upnp_wps_device_sm* %59)
  %61 = icmp slt i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %69

63:                                               ; preds = %58
  %64 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %65 = call i64 @advertisement_state_machine_start(%struct.upnp_wps_device_sm* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %63
  br label %69

68:                                               ; preds = %63
  store i32 0, i32* %3, align 4
  br label %72

69:                                               ; preds = %67, %62, %57, %52, %44, %32
  %70 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %71 = call i32 @upnp_wps_device_stop(%struct.upnp_wps_device_sm* %70)
  store i32 -1, i32* %3, align 4
  br label %72

72:                                               ; preds = %69, %68, %11
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @upnp_wps_device_stop(%struct.upnp_wps_device_sm*) #1

declare dso_local i64 @add_ssdp_network(i8*) #1

declare dso_local i64 @get_netif_info(i8*, i32*, i32*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i8*) #1

declare dso_local i64 @web_listener_start(%struct.upnp_wps_device_sm*) #1

declare dso_local i64 @ssdp_listener_start(%struct.upnp_wps_device_sm*) #1

declare dso_local i64 @ssdp_open_multicast(%struct.upnp_wps_device_sm*) #1

declare dso_local i64 @advertisement_state_machine_start(%struct.upnp_wps_device_sm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
