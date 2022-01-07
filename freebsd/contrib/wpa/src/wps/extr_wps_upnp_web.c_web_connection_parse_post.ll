; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_web_connection_parse_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_web_connection_parse_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.upnp_wps_device_sm = type { i32 }
%struct.sockaddr_in = type { i32 }
%struct.http_request = type { i32 }
%struct.wpabuf = type { i32 }

@UPNP_WPS_DEVICE_CONTROL_FILE = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"WPS UPnP: Invalid POST filename %s\00", align 1
@HTTP_NOT_FOUND = common dso_local global i32 0, align 4
@UPNP_INVALID_ACTION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"GetDeviceInfo\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"PutMessage\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"PutWLANResponse\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"SetSelectedRegistrar\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"WPS UPnP: Unknown POST type\00", align 1
@HTTP_OK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"WPS UPnP: POST failure ret=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.upnp_wps_device_sm*, %struct.sockaddr_in*, %struct.http_request*, i8*)* @web_connection_parse_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @web_connection_parse_post(%struct.upnp_wps_device_sm* %0, %struct.sockaddr_in* %1, %struct.http_request* %2, i8* %3) #0 {
  %5 = alloca %struct.upnp_wps_device_sm*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca %struct.http_request*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  store %struct.upnp_wps_device_sm* %0, %struct.upnp_wps_device_sm** %5, align 8
  store %struct.sockaddr_in* %1, %struct.sockaddr_in** %6, align 8
  store %struct.http_request* %2, %struct.http_request** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load %struct.http_request*, %struct.http_request** %7, align 8
  %16 = call i8* @http_request_get_data(%struct.http_request* %15)
  store i8* %16, i8** %10, align 8
  store i8* null, i8** %11, align 8
  store i64 0, i64* %12, align 8
  store i8* null, i8** %13, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %14, align 8
  %17 = load i8*, i8** %8, align 8
  %18 = load i32, i32* @UPNP_WPS_DEVICE_CONTROL_FILE, align 4
  %19 = call i64 @os_strcasecmp(i8* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load i32, i32* @MSG_INFO, align 4
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %23)
  %25 = load i32, i32* @HTTP_NOT_FOUND, align 4
  store i32 %25, i32* %9, align 4
  br label %76

26:                                               ; preds = %4
  %27 = load i32, i32* @UPNP_INVALID_ACTION, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.http_request*, %struct.http_request** %7, align 8
  %29 = call i8* @web_get_action(%struct.http_request* %28, i64* %12)
  store i8* %29, i8** %11, align 8
  %30 = load i8*, i8** %11, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %76

33:                                               ; preds = %26
  %34 = load i8*, i8** %11, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @os_strncasecmp(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %34, i64 %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %33
  %39 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %5, align 8
  %40 = call i32 @web_process_get_device_info(%struct.upnp_wps_device_sm* %39, %struct.wpabuf** %14, i8** %13)
  store i32 %40, i32* %9, align 4
  br label %75

41:                                               ; preds = %33
  %42 = load i8*, i8** %11, align 8
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @os_strncasecmp(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %42, i64 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %41
  %47 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %5, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @web_process_put_message(%struct.upnp_wps_device_sm* %47, i8* %48, %struct.wpabuf** %14, i8** %13)
  store i32 %49, i32* %9, align 4
  br label %74

50:                                               ; preds = %41
  %51 = load i8*, i8** %11, align 8
  %52 = load i64, i64* %12, align 8
  %53 = call i32 @os_strncasecmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %51, i64 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %5, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @web_process_put_wlan_response(%struct.upnp_wps_device_sm* %56, i8* %57, %struct.wpabuf** %14, i8** %13)
  store i32 %58, i32* %9, align 4
  br label %73

59:                                               ; preds = %50
  %60 = load i8*, i8** %11, align 8
  %61 = load i64, i64* %12, align 8
  %62 = call i32 @os_strncasecmp(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %60, i64 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %5, align 8
  %66 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @web_process_set_selected_registrar(%struct.upnp_wps_device_sm* %65, %struct.sockaddr_in* %66, i8* %67, %struct.wpabuf** %14, i8** %13)
  store i32 %68, i32* %9, align 4
  br label %72

69:                                               ; preds = %59
  %70 = load i32, i32* @MSG_INFO, align 4
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %64
  br label %73

73:                                               ; preds = %72, %55
  br label %74

74:                                               ; preds = %73, %46
  br label %75

75:                                               ; preds = %74, %38
  br label %76

76:                                               ; preds = %75, %32, %21
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @HTTP_OK, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* @MSG_INFO, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %81, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %82)
  br label %84

84:                                               ; preds = %80, %76
  %85 = load %struct.http_request*, %struct.http_request** %7, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i8*, i8** %11, align 8
  %88 = load i64, i64* %12, align 8
  %89 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 @web_connection_send_reply(%struct.http_request* %85, i32 %86, i8* %87, i64 %88, %struct.wpabuf* %89, i8* %90)
  %92 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %93 = call i32 @wpabuf_free(%struct.wpabuf* %92)
  ret void
}

declare dso_local i8* @http_request_get_data(%struct.http_request*) #1

declare dso_local i64 @os_strcasecmp(i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i8* @web_get_action(%struct.http_request*, i64*) #1

declare dso_local i32 @os_strncasecmp(i8*, i8*, i64) #1

declare dso_local i32 @web_process_get_device_info(%struct.upnp_wps_device_sm*, %struct.wpabuf**, i8**) #1

declare dso_local i32 @web_process_put_message(%struct.upnp_wps_device_sm*, i8*, %struct.wpabuf**, i8**) #1

declare dso_local i32 @web_process_put_wlan_response(%struct.upnp_wps_device_sm*, i8*, %struct.wpabuf**, i8**) #1

declare dso_local i32 @web_process_set_selected_registrar(%struct.upnp_wps_device_sm*, %struct.sockaddr_in*, i8*, %struct.wpabuf**, i8**) #1

declare dso_local i32 @web_connection_send_reply(%struct.http_request*, i32, i8*, i64, %struct.wpabuf*, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
