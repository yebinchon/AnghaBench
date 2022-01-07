; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ssdp.c_msearchreply_state_machine_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_ssdp.c_msearchreply_state_machine_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upnp_wps_device_sm = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.advertisement_state_machine = type { i32, i32, i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"WPS UPnP: M-SEARCH reply start (%d outstanding)\00", align 1
@MAX_MSEARCH = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"WPS UPnP: Too many outstanding M-SEARCH replies\00", align 1
@MSEARCH_REPLY = common dso_local global i32 0, align 4
@msearchreply_state_machine_handler = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"WPS UPnP: M-SEARCH reply failure!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.upnp_wps_device_sm*, %struct.sockaddr_in*, i32)* @msearchreply_state_machine_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msearchreply_state_machine_start(%struct.upnp_wps_device_sm* %0, %struct.sockaddr_in* %1, i32 %2) #0 {
  %4 = alloca %struct.upnp_wps_device_sm*, align 8
  %5 = alloca %struct.sockaddr_in*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.advertisement_state_machine*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.upnp_wps_device_sm* %0, %struct.upnp_wps_device_sm** %4, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %12 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %11, i32 0, i32 0
  %13 = call i32 @dl_list_len(i32* %12)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @MAX_MSEARCH, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @MSG_INFO, align 4
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %71

23:                                               ; preds = %3
  %24 = call %struct.advertisement_state_machine* @os_zalloc(i32 24)
  store %struct.advertisement_state_machine* %24, %struct.advertisement_state_machine** %7, align 8
  %25 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %7, align 8
  %26 = icmp eq %struct.advertisement_state_machine* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %71

28:                                               ; preds = %23
  %29 = load i32, i32* @MSEARCH_REPLY, align 4
  %30 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %7, align 8
  %31 = getelementptr inbounds %struct.advertisement_state_machine, %struct.advertisement_state_machine* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %7, align 8
  %33 = getelementptr inbounds %struct.advertisement_state_machine, %struct.advertisement_state_machine* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  %34 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %7, align 8
  %35 = getelementptr inbounds %struct.advertisement_state_machine, %struct.advertisement_state_machine* %34, i32 0, i32 1
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %5, align 8
  %37 = call i32 @os_memcpy(i32* %35, %struct.sockaddr_in* %36, i32 4)
  %38 = load i32, i32* %6, align 4
  %39 = mul nsw i32 1000, %38
  %40 = call i32 (...) @os_random()
  %41 = and i32 %40, 255
  %42 = mul nsw i32 %39, %41
  %43 = ashr i32 %42, 8
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = sdiv i32 %44, 1000
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = srem i32 %46, 1000
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @msearchreply_state_machine_handler, align 4
  %51 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %52 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %7, align 8
  %53 = call i64 @eloop_register_timeout(i32 %48, i32 %49, i32 %50, %struct.upnp_wps_device_sm* %51, %struct.advertisement_state_machine* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %28
  br label %62

56:                                               ; preds = %28
  %57 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %58 = getelementptr inbounds %struct.upnp_wps_device_sm, %struct.upnp_wps_device_sm* %57, i32 0, i32 0
  %59 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %7, align 8
  %60 = getelementptr inbounds %struct.advertisement_state_machine, %struct.advertisement_state_machine* %59, i32 0, i32 0
  %61 = call i32 @dl_list_add(i32* %58, i32* %60)
  br label %71

62:                                               ; preds = %55
  %63 = load i32, i32* @MSG_INFO, align 4
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %65 = load i32, i32* @msearchreply_state_machine_handler, align 4
  %66 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %4, align 8
  %67 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %7, align 8
  %68 = call i32 @eloop_cancel_timeout(i32 %65, %struct.upnp_wps_device_sm* %66, %struct.advertisement_state_machine* %67)
  %69 = load %struct.advertisement_state_machine*, %struct.advertisement_state_machine** %7, align 8
  %70 = call i32 @os_free(%struct.advertisement_state_machine* %69)
  br label %71

71:                                               ; preds = %62, %56, %27, %20
  ret void
}

declare dso_local i32 @dl_list_len(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.advertisement_state_machine* @os_zalloc(i32) #1

declare dso_local i32 @os_memcpy(i32*, %struct.sockaddr_in*, i32) #1

declare dso_local i32 @os_random(...) #1

declare dso_local i64 @eloop_register_timeout(i32, i32, i32, %struct.upnp_wps_device_sm*, %struct.advertisement_state_machine*) #1

declare dso_local i32 @dl_list_add(i32*, i32*) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.upnp_wps_device_sm*, %struct.advertisement_state_machine*) #1

declare dso_local i32 @os_free(%struct.advertisement_state_machine*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
