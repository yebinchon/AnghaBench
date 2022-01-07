; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_send_set_sel_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_send_set_sel_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er_ap = type { i32*, i32*, i64 }
%struct.wpabuf = type { i32 }
%struct.sockaddr_in = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"WPS ER: No controlURL for AP\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"WPS ER: Pending HTTP request for AP - ignore new request\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"WPS ER: Pending WPS operation for AP - skip SetSelectedRegistrar\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"WPS ER: Failed to parse controlURL\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"SetSelectedRegistrar\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"NewMessage\00", align 1
@wps_er_http_set_sel_reg_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er_ap*, %struct.wpabuf*)* @wps_er_send_set_sel_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_send_set_sel_reg(%struct.wps_er_ap* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.wps_er_ap*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sockaddr_in, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.wps_er_ap* %0, %struct.wps_er_ap** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %11 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %12 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %71

18:                                               ; preds = %2
  %19 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %20 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  br label %71

26:                                               ; preds = %18
  %27 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %28 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = call i32 @wpa_printf(i32 %32, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  br label %71

34:                                               ; preds = %26
  %35 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %36 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = call i8* @http_client_url_parse(i32* %37, %struct.sockaddr_in* %8, i8** %10)
  store i8* %38, i8** %9, align 8
  %39 = load i8*, i8** %9, align 8
  %40 = icmp eq i8* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = call i32 @wpa_printf(i32 %42, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %71

44:                                               ; preds = %34
  %45 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %46 = load i8*, i8** %10, align 8
  %47 = call %struct.wpabuf* @wps_er_soap_hdr(%struct.wpabuf* %45, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i8* %46, %struct.sockaddr_in* %8, i8** %6, i8** %7)
  store %struct.wpabuf* %47, %struct.wpabuf** %5, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = call i32 @os_free(i8* %48)
  %50 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %51 = icmp eq %struct.wpabuf* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %71

53:                                               ; preds = %44
  %54 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @wps_er_soap_end(%struct.wpabuf* %54, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8* %55, i8* %56)
  %58 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %59 = load i32, i32* @wps_er_http_set_sel_reg_cb, align 4
  %60 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %61 = call i32* @http_client_addr(%struct.sockaddr_in* %8, %struct.wpabuf* %58, i32 1000, i32 %59, %struct.wps_er_ap* %60)
  %62 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %63 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  %64 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %65 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %53
  %69 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %70 = call i32 @wpabuf_free(%struct.wpabuf* %69)
  br label %71

71:                                               ; preds = %15, %23, %31, %41, %52, %68, %53
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i8* @http_client_url_parse(i32*, %struct.sockaddr_in*, i8**) #1

declare dso_local %struct.wpabuf* @wps_er_soap_hdr(%struct.wpabuf*, i8*, i8*, i8*, %struct.sockaddr_in*, i8**, i8**) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wps_er_soap_end(%struct.wpabuf*, i8*, i8*, i8*) #1

declare dso_local i32* @http_client_addr(%struct.sockaddr_in*, %struct.wpabuf*, i32, i32, %struct.wps_er_ap*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
