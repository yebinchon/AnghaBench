; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er_ssdp.c_wps_er_send_ssdp_msearch.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er_ssdp.c_wps_er_send_ssdp_msearch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er = type { i32 }
%struct.wpabuf = type { i32 }
%struct.sockaddr_in = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.sockaddr = type { i32 }

@.str = private unnamed_addr constant [134 x i8] c"M-SEARCH * HTTP/1.1\0D\0AHOST: 239.255.255.250:1900\0D\0AMAN: \22ssdp:discover\22\0D\0AMX: 3\0D\0AST: urn:schemas-wifialliance-org:device:WFADevice:1\0D\0A\0D\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@UPNP_MULTICAST_ADDRESS = common dso_local global i32 0, align 4
@UPNP_MULTICAST_PORT = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"WPS ER: M-SEARCH sendto failed: %d (%s)\00", align 1
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wps_er_send_ssdp_msearch(%struct.wps_er* %0) #0 {
  %2 = alloca %struct.wps_er*, align 8
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.sockaddr_in, align 4
  store %struct.wps_er* %0, %struct.wps_er** %2, align 8
  %5 = call %struct.wpabuf* @wpabuf_alloc(i32 500)
  store %struct.wpabuf* %5, %struct.wpabuf** %3, align 8
  %6 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %7 = icmp eq %struct.wpabuf* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %41

9:                                                ; preds = %1
  %10 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %11 = call i32 @wpabuf_put_str(%struct.wpabuf* %10, i8* getelementptr inbounds ([134 x i8], [134 x i8]* @.str, i64 0, i64 0))
  %12 = call i32 @os_memset(%struct.sockaddr_in* %4, i32 0, i32 12)
  %13 = load i32, i32* @AF_INET, align 4
  %14 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @UPNP_MULTICAST_ADDRESS, align 4
  %16 = call i32 @inet_addr(i32 %15)
  %17 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* @UPNP_MULTICAST_PORT, align 4
  %20 = call i32 @htons(i32 %19)
  %21 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = load %struct.wps_er*, %struct.wps_er** %2, align 8
  %23 = getelementptr inbounds %struct.wps_er, %struct.wps_er* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %26 = call i32 @wpabuf_head(%struct.wpabuf* %25)
  %27 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %28 = call i32 @wpabuf_len(%struct.wpabuf* %27)
  %29 = bitcast %struct.sockaddr_in* %4 to %struct.sockaddr*
  %30 = call i64 @sendto(i32 %24, i32 %26, i32 %28, i32 0, %struct.sockaddr* %29, i32 12)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %9
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load i32, i32* @errno, align 4
  %35 = load i32, i32* @errno, align 4
  %36 = call i32 @strerror(i32 %35)
  %37 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %36)
  br label %38

38:                                               ; preds = %32, %9
  %39 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %40 = call i32 @wpabuf_free(%struct.wpabuf* %39)
  br label %41

41:                                               ; preds = %38, %8
  ret void
}

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i32 @os_memset(%struct.sockaddr_in*, i32, i32) #1

declare dso_local i32 @inet_addr(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i64 @sendto(i32, i32, i32, i32, %struct.sockaddr*, i32) #1

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
