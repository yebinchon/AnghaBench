; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er = type { i32 }
%struct.http_request = type { i32 }
%struct.wps_er_ap = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"WPS ER: HTTP event from unknown AP id %u\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"WPS ER: HTTP event from AP id %u: %s\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"WLANEvent\00", align 1
@.str.3 = private unnamed_addr constant [64 x i8] c"WPS ER: Could not extract WLANEvent from the event notification\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er*, %struct.http_request*, i32)* @wps_er_http_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_http_event(%struct.wps_er* %0, %struct.http_request* %1, i32 %2) #0 {
  %4 = alloca %struct.wps_er*, align 8
  %5 = alloca %struct.http_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wps_er_ap*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32, align 4
  store %struct.wps_er* %0, %struct.wps_er** %4, align 8
  store %struct.http_request* %1, %struct.http_request** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.wps_er*, %struct.wps_er** %4, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.wps_er_ap* @wps_er_ap_get_id(%struct.wps_er* %10, i32 %11)
  store %struct.wps_er_ap* %12, %struct.wps_er_ap** %7, align 8
  %13 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %14 = icmp eq %struct.wps_er_ap* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.http_request*, %struct.http_request** %5, align 8
  %20 = call i32 @wps_er_http_resp_not_found(%struct.http_request* %19)
  br label %45

21:                                               ; preds = %3
  %22 = load i32, i32* @MSG_MSGDUMP, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.http_request*, %struct.http_request** %5, align 8
  %25 = call i32 @http_request_get_data(%struct.http_request* %24)
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %25)
  %27 = load %struct.http_request*, %struct.http_request** %5, align 8
  %28 = call i32 @http_request_get_data(%struct.http_request* %27)
  %29 = call %struct.wpabuf* @xml_get_base64_item(i32 %28, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32* %9)
  store %struct.wpabuf* %29, %struct.wpabuf** %8, align 8
  %30 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %31 = icmp eq %struct.wpabuf* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.3, i64 0, i64 0))
  %35 = load %struct.http_request*, %struct.http_request** %5, align 8
  %36 = call i32 @wps_er_http_resp_ok(%struct.http_request* %35)
  br label %45

37:                                               ; preds = %21
  %38 = load %struct.wps_er_ap*, %struct.wps_er_ap** %7, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %40 = call i32 @wps_er_process_wlanevent(%struct.wps_er_ap* %38, %struct.wpabuf* %39)
  %41 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %42 = call i32 @wpabuf_free(%struct.wpabuf* %41)
  %43 = load %struct.http_request*, %struct.http_request** %5, align 8
  %44 = call i32 @wps_er_http_resp_ok(%struct.http_request* %43)
  br label %45

45:                                               ; preds = %37, %32, %15
  ret void
}

declare dso_local %struct.wps_er_ap* @wps_er_ap_get_id(%struct.wps_er*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wps_er_http_resp_not_found(%struct.http_request*) #1

declare dso_local i32 @http_request_get_data(%struct.http_request*) #1

declare dso_local %struct.wpabuf* @xml_get_base64_item(i32, i8*, i32*) #1

declare dso_local i32 @wps_er_http_resp_ok(%struct.http_request*) #1

declare dso_local i32 @wps_er_process_wlanevent(%struct.wps_er_ap*, %struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
