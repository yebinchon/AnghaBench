; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_send_get_device_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_send_get_device_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er_ap = type { void (%struct.wps_er_ap*, %struct.wpabuf*)*, i32*, i32* }
%struct.wpabuf = type opaque
%struct.wpabuf.0 = type { i32 }
%struct.sockaddr_in = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"WPS ER: Pending HTTP operation ongoing with the AP - cannot get device info\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"WPS ER: No controlURL for AP\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"WPS ER: Failed to parse controlURL\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"GetDeviceInfo\00", align 1
@wps_er_http_get_dev_info_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_er_ap*, void (%struct.wps_er_ap*, %struct.wpabuf.0*)*)* @wps_er_send_get_device_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_er_send_get_device_info(%struct.wps_er_ap* %0, void (%struct.wps_er_ap*, %struct.wpabuf.0*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_er_ap*, align 8
  %5 = alloca void (%struct.wps_er_ap*, %struct.wpabuf.0*)*, align 8
  %6 = alloca %struct.wpabuf.0*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sockaddr_in, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store %struct.wps_er_ap* %0, %struct.wps_er_ap** %4, align 8
  store void (%struct.wps_er_ap*, %struct.wpabuf.0*)* %1, void (%struct.wps_er_ap*, %struct.wpabuf.0*)** %5, align 8
  %12 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %13 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = call i32 @wpa_printf(i32 %17, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %68

19:                                               ; preds = %2
  %20 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %21 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %20, i32 0, i32 2
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 @wpa_printf(i32 %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %68

27:                                               ; preds = %19
  %28 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %29 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = call i8* @http_client_url_parse(i32* %30, %struct.sockaddr_in* %9, i8** %11)
  store i8* %31, i8** %10, align 8
  %32 = load i8*, i8** %10, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %37

34:                                               ; preds = %27
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %68

37:                                               ; preds = %27
  %38 = load i8*, i8** %11, align 8
  %39 = call %struct.wpabuf.0* @wps_er_soap_hdr(i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32* null, i8* %38, %struct.sockaddr_in* %9, i8** %7, i8** %8)
  store %struct.wpabuf.0* %39, %struct.wpabuf.0** %6, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = call i32 @os_free(i8* %40)
  %42 = load %struct.wpabuf.0*, %struct.wpabuf.0** %6, align 8
  %43 = icmp eq %struct.wpabuf.0* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %37
  store i32 -1, i32* %3, align 4
  br label %68

45:                                               ; preds = %37
  %46 = load %struct.wpabuf.0*, %struct.wpabuf.0** %6, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = call i32 @wps_er_soap_end(%struct.wpabuf.0* %46, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %47, i8* %48)
  %50 = load %struct.wpabuf.0*, %struct.wpabuf.0** %6, align 8
  %51 = load i32, i32* @wps_er_http_get_dev_info_cb, align 4
  %52 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %53 = call i32* @http_client_addr(%struct.sockaddr_in* %9, %struct.wpabuf.0* %50, i32 10000, i32 %51, %struct.wps_er_ap* %52)
  %54 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %55 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %57 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %45
  %61 = load %struct.wpabuf.0*, %struct.wpabuf.0** %6, align 8
  %62 = call i32 @wpabuf_free(%struct.wpabuf.0* %61)
  store i32 -1, i32* %3, align 4
  br label %68

63:                                               ; preds = %45
  %64 = load void (%struct.wps_er_ap*, %struct.wpabuf.0*)*, void (%struct.wps_er_ap*, %struct.wpabuf.0*)** %5, align 8
  %65 = bitcast void (%struct.wps_er_ap*, %struct.wpabuf.0*)* %64 to void (%struct.wps_er_ap*, %struct.wpabuf*)*
  %66 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %67 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %66, i32 0, i32 0
  store void (%struct.wps_er_ap*, %struct.wpabuf*)* %65, void (%struct.wps_er_ap*, %struct.wpabuf*)** %67, align 8
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %63, %60, %44, %34, %24, %16
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i8* @http_client_url_parse(i32*, %struct.sockaddr_in*, i8**) #1

declare dso_local %struct.wpabuf.0* @wps_er_soap_hdr(i32*, i8*, i32*, i8*, %struct.sockaddr_in*, i8**, i8**) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wps_er_soap_end(%struct.wpabuf.0*, i8*, i8*, i8*) #1

declare dso_local i32* @http_client_addr(%struct.sockaddr_in*, %struct.wpabuf.0*, i32, i32, %struct.wps_er_ap*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
