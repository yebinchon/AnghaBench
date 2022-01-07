; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ssdp.c_advertisement_state_machine_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ssdp.c_advertisement_state_machine_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upnp_wps_device_sm = type { i64, %struct.advertisement_state_machine }
%struct.advertisement_state_machine = type { i64, i32 }
%struct.wpabuf = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@advertisement_state_machine_handler = common dso_local global i32 0, align 4
@ADVERTISE_DOWN = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@UPNP_MULTICAST_ADDRESS = common dso_local global i32 0, align 4
@UPNP_MULTICAST_PORT = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"WPS UPnP: Advertisement sendto failed: %d (%s)\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @advertisement_state_machine_stop(%struct.upnp_wps_device_sm* %0, i32 %1) #0 {
  %3 = alloca %struct.upnp_wps_device_sm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.advertisement_state_machine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.sockaddr_in, align 4
  store %struct.upnp_wps_device_sm* %0, %struct.upnp_wps_device_sm** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %10 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %9, i32 0, i32 1
  store %struct.advertisement_state_machine* %10, %struct.advertisement_state_machine** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @advertisement_state_machine_handler, align 4
  %12 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %13 = call i32 @eloop_cancel_timeout(i32 %11, i32* null, %struct.upnp_wps_device_sm* %12)
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %18 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  br label %73

22:                                               ; preds = %16
  %23 = load i32, i32* @ADVERTISE_DOWN, align 4
  %24 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %5, align 8
  %25 = getelementptr inbounds %struct.advertisement_state_machine, %struct.advertisement_state_machine* %24, i32 0, i32 1
  store i32 %23, i32* %25, align 8
  %26 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %5, align 8
  %27 = getelementptr inbounds %struct.advertisement_state_machine, %struct.advertisement_state_machine* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = call i32 @os_memset(%struct.sockaddr_in* %8, i32 0, i32 12)
  %29 = load i32, i32* @AF_INET, align 4
  %30 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 2
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @UPNP_MULTICAST_ADDRESS, align 4
  %32 = call i32 @inet_addr(i32 %31)
  %33 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @UPNP_MULTICAST_PORT, align 4
  %36 = call i32 @htons(i32 %35)
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %8, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  br label %38

38:                                               ; preds = %66, %22
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  br i1 %41, label %42, label %73

42:                                               ; preds = %38
  %43 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %44 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %5, align 8
  %45 = call %struct.wpabuf* @next_advertisement(%struct.upnp_wps_device_sm* %43, %struct.advertisement_state_machine* %44, i32* %6)
  store %struct.wpabuf* %45, %struct.wpabuf** %7, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %47 = icmp eq %struct.wpabuf* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %73

49:                                               ; preds = %42
  %50 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %3, align 8
  %51 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %54 = call i32 @wpabuf_head(%struct.wpabuf* %53)
  %55 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %56 = call i32 @wpabuf_len(%struct.wpabuf* %55)
  %57 = bitcast %struct.sockaddr_in* %8 to %struct.sockaddr*
  %58 = call i64 @sendto(i64 %52, i32 %54, i32 %56, i32 0, %struct.sockaddr* %57, i32 12)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %49
  %61 = load i32, i32* @MSG_INFO, align 4
  %62 = load i32, i32* @errno, align 4
  %63 = load i32, i32* @errno, align 4
  %64 = call i32 @strerror(i32 %63)
  %65 = call i32 @wpa_printf(i32 %61, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %62, i32 %64)
  br label %66

66:                                               ; preds = %60, %49
  %67 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %68 = call i32 @wpabuf_free(%struct.wpabuf* %67)
  %69 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %5, align 8
  %70 = getelementptr inbounds %struct.advertisement_state_machine, %struct.advertisement_state_machine* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %70, align 8
  br label %38

73:                                               ; preds = %21, %48, %38
  ret void
}

declare dso_local i32 @eloop_cancel_timeout(i32, i32*, %struct.upnp_wps_device_sm*) #1

declare dso_local i32 @os_memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @inet_addr(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.wpabuf* @next_advertisement(%struct.upnp_wps_device_sm*, %struct.advertisement_state_machine*, i32*) #1

declare dso_local i64 @sendto(i64, i32, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
