; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_web_connection_check_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_web_connection_check_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_request = type { i32 }
%struct.upnp_wps_device_sm = type { i32 }
%struct.sockaddr_in = type { i32, i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"WPS UPnP: Could not get HTTP URI\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"WPS UPnP: Got HTTP request type %d from %s:%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.http_request*)* @web_connection_check_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @web_connection_check_data(i8* %0, %struct.http_request* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.http_request*, align 8
  %5 = alloca %struct.upnp_wps_device_sm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr_in*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.http_request* %1, %struct.http_request** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.upnp_wps_device_sm*
  store %struct.upnp_wps_device_sm* %10, %struct.upnp_wps_device_sm** %5, align 8
  %11 = load %struct.http_request*, %struct.http_request** %4, align 8
  %12 = call i32 @http_request_get_type(%struct.http_request* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.http_request*, %struct.http_request** %4, align 8
  %14 = call i8* @http_request_get_uri(%struct.http_request* %13)
  store i8* %14, i8** %7, align 8
  %15 = load %struct.http_request*, %struct.http_request** %4, align 8
  %16 = call %struct.sockaddr_in* @http_request_get_cli_addr(%struct.http_request* %15)
  store %struct.sockaddr_in* %16, %struct.sockaddr_in** %8, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @MSG_INFO, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.http_request*, %struct.http_request** %4, align 8
  %23 = call i32 @http_request_deinit(%struct.http_request* %22)
  br label %70

24:                                               ; preds = %2
  br label %25

25:                                               ; preds = %30, %24
  %26 = load i8*, i8** %7, align 8
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 47
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load i8*, i8** %7, align 8
  %32 = getelementptr inbounds i8, i8* %31, i32 1
  store i8* %32, i8** %7, align 8
  br label %25

33:                                               ; preds = %25
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %37 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @inet_ntoa(i32 %38)
  %40 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %41 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @htons(i32 %42)
  %44 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %35, i32 %39, i32 %43)
  %45 = load i32, i32* %6, align 4
  switch i32 %45, label %67 [
    i32 131, label %46
    i32 130, label %51
    i32 129, label %57
    i32 128, label %62
  ]

46:                                               ; preds = %33
  %47 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %5, align 8
  %48 = load %struct.http_request*, %struct.http_request** %4, align 8
  %49 = load i8*, i8** %7, align 8
  %50 = call i32 @web_connection_parse_get(%struct.upnp_wps_device_sm* %47, %struct.http_request* %48, i8* %49)
  br label %70

51:                                               ; preds = %33
  %52 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %5, align 8
  %53 = load %struct.sockaddr_in*, %struct.sockaddr_in** %8, align 8
  %54 = load %struct.http_request*, %struct.http_request** %4, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @web_connection_parse_post(%struct.upnp_wps_device_sm* %52, %struct.sockaddr_in* %53, %struct.http_request* %54, i8* %55)
  br label %70

57:                                               ; preds = %33
  %58 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %5, align 8
  %59 = load %struct.http_request*, %struct.http_request** %4, align 8
  %60 = load i8*, i8** %7, align 8
  %61 = call i32 @web_connection_parse_subscribe(%struct.upnp_wps_device_sm* %58, %struct.http_request* %59, i8* %60)
  br label %70

62:                                               ; preds = %33
  %63 = load %struct.upnp_wps_device_sm*, %struct.upnp_wps_device_sm** %5, align 8
  %64 = load %struct.http_request*, %struct.http_request** %4, align 8
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @web_connection_parse_unsubscribe(%struct.upnp_wps_device_sm* %63, %struct.http_request* %64, i8* %65)
  br label %70

67:                                               ; preds = %33
  %68 = load %struct.http_request*, %struct.http_request** %4, align 8
  %69 = call i32 @web_connection_unimplemented(%struct.http_request* %68)
  br label %70

70:                                               ; preds = %19, %67, %62, %57, %51, %46
  ret void
}

declare dso_local i32 @http_request_get_type(%struct.http_request*) #1

declare dso_local i8* @http_request_get_uri(%struct.http_request*) #1

declare dso_local %struct.sockaddr_in* @http_request_get_cli_addr(%struct.http_request*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @http_request_deinit(%struct.http_request*) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @web_connection_parse_get(%struct.upnp_wps_device_sm*, %struct.http_request*, i8*) #1

declare dso_local i32 @web_connection_parse_post(%struct.upnp_wps_device_sm*, %struct.sockaddr_in*, %struct.http_request*, i8*) #1

declare dso_local i32 @web_connection_parse_subscribe(%struct.upnp_wps_device_sm*, %struct.http_request*, i8*) #1

declare dso_local i32 @web_connection_parse_unsubscribe(%struct.upnp_wps_device_sm*, %struct.http_request*, i8*) #1

declare dso_local i32 @web_connection_unimplemented(%struct.http_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
