; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_unsubscribe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_ap_unsubscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er = type { i32 }
%struct.wps_er_ap = type { i32, i32*, i32, i32* }
%struct.wpabuf = type { i32 }
%struct.sockaddr_in = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"WPS ER: No eventSubURL - cannot subscribe\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"WPS ER: Pending HTTP request - cannot send subscribe request\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"WPS ER: Failed to parse eventSubURL\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"UNSUBSCRIBE %s HTTP/1.1\0D\0AHOST: %s:%d\0D\0ASID: uuid:%s\0D\0A\0D\0A\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"WPS ER: Unsubscription request\00", align 1
@wps_er_http_unsubscribe_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er*, %struct.wps_er_ap*)* @wps_er_ap_unsubscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_ap_unsubscribe(%struct.wps_er* %0, %struct.wps_er_ap* %1) #0 {
  %3 = alloca %struct.wps_er*, align 8
  %4 = alloca %struct.wps_er_ap*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.sockaddr_in, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [100 x i8], align 16
  store %struct.wps_er* %0, %struct.wps_er** %3, align 8
  store %struct.wps_er_ap* %1, %struct.wps_er_ap** %4, align 8
  %10 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %11 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %10, i32 0, i32 3
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = call i32 @wpa_printf(i32 %15, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %85

17:                                               ; preds = %2
  %18 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %19 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %85

25:                                               ; preds = %17
  %26 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %27 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %26, i32 0, i32 3
  %28 = load i32*, i32** %27, align 8
  %29 = call i8* @http_client_url_parse(i32* %28, %struct.sockaddr_in* %6, i8** %8)
  store i8* %29, i8** %7, align 8
  %30 = load i8*, i8** %7, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %25
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = call i32 @wpa_printf(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %85

35:                                               ; preds = %25
  %36 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %37 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %36, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = call i64 @os_strlen(i32* %38)
  %40 = add nsw i64 %39, 1000
  %41 = call %struct.wpabuf* @wpabuf_alloc(i64 %40)
  store %struct.wpabuf* %41, %struct.wpabuf** %5, align 8
  %42 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %43 = icmp eq %struct.wpabuf* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load i8*, i8** %7, align 8
  %46 = call i32 @os_free(i8* %45)
  br label %85

47:                                               ; preds = %35
  %48 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %49 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %52 = call i32 @uuid_bin2str(i32 %50, i8* %51, i32 100)
  %53 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @inet_ntoa(i32 %56)
  %58 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %6, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ntohs(i32 %59)
  %61 = getelementptr inbounds [100 x i8], [100 x i8]* %9, i64 0, i64 0
  %62 = call i32 @wpabuf_printf(%struct.wpabuf* %53, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i8* %54, i32 %57, i32 %60, i8* %61)
  %63 = load i8*, i8** %7, align 8
  %64 = call i32 @os_free(i8* %63)
  %65 = load i32, i32* @MSG_MSGDUMP, align 4
  %66 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %67 = call i32 @wpabuf_head(%struct.wpabuf* %66)
  %68 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %69 = call i32 @wpabuf_len(%struct.wpabuf* %68)
  %70 = call i32 @wpa_hexdump_ascii(i32 %65, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %67, i32 %69)
  %71 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %72 = load i32, i32* @wps_er_http_unsubscribe_cb, align 4
  %73 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %74 = call i32* @http_client_addr(%struct.sockaddr_in* %6, %struct.wpabuf* %71, i32 1000, i32 %72, %struct.wps_er_ap* %73)
  %75 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %76 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %75, i32 0, i32 1
  store i32* %74, i32** %76, align 8
  %77 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %78 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = icmp eq i32* %79, null
  br i1 %80, label %81, label %84

81:                                               ; preds = %47
  %82 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %83 = call i32 @wpabuf_free(%struct.wpabuf* %82)
  br label %85

84:                                               ; preds = %47
  br label %91

85:                                               ; preds = %81, %44, %32, %22, %14
  %86 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %87 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.wps_er_ap*, %struct.wps_er_ap** %4, align 8
  %90 = call i32 @wps_er_ap_unsubscribed(i32 %88, %struct.wps_er_ap* %89)
  br label %91

91:                                               ; preds = %85, %84
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i8* @http_client_url_parse(i32*, %struct.sockaddr_in*, i8**) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @os_strlen(i32*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @uuid_bin2str(i32, i8*, i32) #1

declare dso_local i32 @wpabuf_printf(%struct.wpabuf*, i8*, i8*, i32, i32, i8*) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32* @http_client_addr(%struct.sockaddr_in*, %struct.wpabuf*, i32, i32, %struct.wps_er_ap*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wps_er_ap_unsubscribed(i32, %struct.wps_er_ap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
