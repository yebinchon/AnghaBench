; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ssdp.c_msearchreply_state_machine_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ssdp.c_msearchreply_state_machine_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.advertisement_state_machine = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.upnp_wps_device_sm = type { i32 }
%struct.wpabuf = type { i32 }
%struct.sockaddr = type { i32 }

@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"WPS UPnP: M-SEARCH reply state=%d (%s:%d)\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"WPS UPnP: M-SEARCH reply sendto errno %d (%s) for %s:%d\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"WPS UPnP: M-SEARCH reply done\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"WPS UPnP: M-SEARCH reply in %d.%03d sec\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @msearchreply_state_machine_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msearchreply_state_machine_handler(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.advertisement_state_machine*, align 8
  %6 = alloca %struct.upnp_wps_device_sm*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.advertisement_state_machine*
  store %struct.advertisement_state_machine* %12, %struct.advertisement_state_machine** %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.upnp_wps_device_sm*
  store %struct.upnp_wps_device_sm* %14, %struct.upnp_wps_device_sm** %6, align 8
  store i32 100, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* @MSG_MSGDUMP, align 4
  %16 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %5, align 8
  %17 = getelementptr inbounds %struct.advertisement_state_machine, %struct.advertisement_state_machine* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %5, align 8
  %20 = getelementptr inbounds %struct.advertisement_state_machine, %struct.advertisement_state_machine* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @inet_ntoa(i32 %22)
  %24 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %5, align 8
  %25 = getelementptr inbounds %struct.advertisement_state_machine, %struct.advertisement_state_machine* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ntohs(i32 %27)
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %23, i32 %28)
  %30 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %6, align 8
  %31 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %5, align 8
  %32 = call %struct.wpabuf* @next_advertisement(%struct.upnp_wps_device_sm* %30, %struct.advertisement_state_machine* %31, i32* %10)
  store %struct.wpabuf* %32, %struct.wpabuf** %7, align 8
  %33 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %34 = icmp eq %struct.wpabuf* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  br label %89

36:                                               ; preds = %2
  %37 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %6, align 8
  %38 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %41 = call i32 @wpabuf_head(%struct.wpabuf* %40)
  %42 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %43 = call i32 @wpabuf_len(%struct.wpabuf* %42)
  %44 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %5, align 8
  %45 = getelementptr inbounds %struct.advertisement_state_machine, %struct.advertisement_state_machine* %44, i32 0, i32 1
  %46 = bitcast %struct.TYPE_2__* %45 to %struct.sockaddr*
  %47 = call i64 @sendto(i32 %39, i32 %41, i32 %43, i32 0, %struct.sockaddr* %46, i32 8)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %65

49:                                               ; preds = %36
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load i32, i32* @errno, align 4
  %52 = load i32, i32* @errno, align 4
  %53 = call i32 @strerror(i32 %52)
  %54 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %5, align 8
  %55 = getelementptr inbounds %struct.advertisement_state_machine, %struct.advertisement_state_machine* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @inet_ntoa(i32 %57)
  %59 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %5, align 8
  %60 = getelementptr inbounds %struct.advertisement_state_machine, %struct.advertisement_state_machine* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @ntohs(i32 %62)
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %53, i32 %58, i32 %63)
  br label %65

65:                                               ; preds = %49, %36
  %66 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %67 = call i32 @wpabuf_free(%struct.wpabuf* %66)
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %65
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %71, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %5, align 8
  %74 = call i32 @msearchreply_state_machine_stop(%struct.advertisement_state_machine* %73)
  br label %89

75:                                               ; preds = %65
  %76 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %5, align 8
  %77 = getelementptr inbounds %struct.advertisement_state_machine, %struct.advertisement_state_machine* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  %80 = load i32, i32* @MSG_MSGDUMP, align 4
  %81 = load i32, i32* %9, align 4
  %82 = load i32, i32* %8, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %81, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %6, align 8
  %87 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %5, align 8
  %88 = call i32 @eloop_register_timeout(i32 %84, i32 %85, void (i8*, i8*)* @msearchreply_state_machine_handler, %struct.upnp_wps_device_sm* %86, %struct.advertisement_state_machine* %87)
  br label %89

89:                                               ; preds = %75, %70, %35
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.wpabuf* @next_advertisement(%struct.upnp_wps_device_sm*, %struct.advertisement_state_machine*, i32*) #1

declare dso_local i64 @sendto(i32, i32, i32, i32, %struct.sockaddr*, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @msearchreply_state_machine_stop(%struct.advertisement_state_machine*) #1

declare dso_local i32 @eloop_register_timeout(i32, i32, void (i8*, i8*)*, %struct.upnp_wps_device_sm*, %struct.advertisement_state_machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
