; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_put_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_put_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er_ap = type { i32*, i32*, i32* }
%struct.wpabuf = type { i32 }
%struct.sockaddr_in = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"WPS ER: Pending HTTP operation ongoing with the AP - cannot continue learn\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"WPS ER: No controlURL for AP\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"WPS ER: Failed to parse controlURL\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"PutMessage\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"NewInMessage\00", align 1
@wps_er_http_put_message_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er_ap*, %struct.wpabuf*)* @wps_er_ap_put_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_ap_put_message(%struct.wps_er_ap* %0, %struct.wpabuf* %1) #0 {
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
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = call i32 @wpa_printf(i32 %16, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0))
  br label %76

18:                                               ; preds = %2
  %19 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %20 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %19, i32 0, i32 2
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @MSG_DEBUG, align 4
  %25 = call i32 @wpa_printf(i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %76

26:                                               ; preds = %18
  %27 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %28 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = call i8* @http_client_url_parse(i32* %29, %struct.sockaddr_in* %8, i8** %10)
  store i8* %30, i8** %9, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = icmp eq i8* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = call i32 @wpa_printf(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  br label %64

36:                                               ; preds = %26
  %37 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %38 = load i8*, i8** %10, align 8
  %39 = call %struct.wpabuf* @wps_er_soap_hdr(%struct.wpabuf* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i8* %38, %struct.sockaddr_in* %8, i8** %6, i8** %7)
  store %struct.wpabuf* %39, %struct.wpabuf** %5, align 8
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @os_free(i8* %40)
  %42 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %43 = icmp eq %struct.wpabuf* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %36
  br label %64

45:                                               ; preds = %36
  %46 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @wps_er_soap_end(%struct.wpabuf* %46, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %47, i8* %48)
  %50 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %51 = load i32, i32* @wps_er_http_put_message_cb, align 4
  %52 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %53 = call i32* @http_client_addr(%struct.sockaddr_in* %8, %struct.wpabuf* %50, i32 10000, i32 %51, %struct.wps_er_ap* %52)
  %54 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %55 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %57 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %45
  %61 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %62 = call i32 @wpabuf_free(%struct.wpabuf* %61)
  br label %64

63:                                               ; preds = %45
  br label %76

64:                                               ; preds = %60, %44, %33
  %65 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %66 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %64
  %70 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %71 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @wps_deinit(i32* %72)
  %74 = load %struct.wps_er_ap*, %struct.wps_er_ap** %3, align 8
  %75 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %74, i32 0, i32 0
  store i32* null, i32** %75, align 8
  br label %76

76:                                               ; preds = %15, %23, %63, %69, %64
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i8* @http_client_url_parse(i32*, %struct.sockaddr_in*, i8**) #1

declare dso_local %struct.wpabuf* @wps_er_soap_hdr(%struct.wpabuf*, i8*, i8*, i8*, %struct.sockaddr_in*, i8**, i8**) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wps_er_soap_end(%struct.wpabuf*, i8*, i8*, i8*) #1

declare dso_local i32* @http_client_addr(%struct.sockaddr_in*, %struct.wpabuf*, i32, i32, %struct.wps_er_ap*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wps_deinit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
