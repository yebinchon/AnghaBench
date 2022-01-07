; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_subscribe.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_subscribe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_er_ap = type { i32*, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.wpabuf = type { i32 }
%struct.sockaddr_in = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"WPS ER: No eventSubURL - cannot subscribe\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"WPS ER: Pending HTTP request - cannot send subscribe request\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"WPS ER: Failed to parse eventSubURL\00", align 1
@.str.3 = private unnamed_addr constant [113 x i8] c"SUBSCRIBE %s HTTP/1.1\0D\0AHOST: %s:%d\0D\0ACALLBACK: <http://%s:%d/event/%u/%u>\0D\0ANT: upnp:event\0D\0ATIMEOUT: Second-%d\0D\0A\0D\0A\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"WPS ER: Subscription request\00", align 1
@wps_er_http_subscribe_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wps_er_ap*)* @wps_er_subscribe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_subscribe(%struct.wps_er_ap* %0) #0 {
  %2 = alloca %struct.wps_er_ap*, align 8
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.sockaddr_in, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.wps_er_ap* %0, %struct.wps_er_ap** %2, align 8
  %7 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %8 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %93

14:                                               ; preds = %1
  %15 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %16 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %93

22:                                               ; preds = %14
  %23 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %24 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = call i8* @http_client_url_parse(i32* %25, %struct.sockaddr_in* %4, i8** %6)
  store i8* %26, i8** %5, align 8
  %27 = load i8*, i8** %5, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = call i32 @wpa_printf(i32 %30, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %93

32:                                               ; preds = %22
  %33 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %34 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @os_strlen(i32* %35)
  %37 = add nsw i64 %36, 1000
  %38 = call %struct.wpabuf* @wpabuf_alloc(i64 %37)
  store %struct.wpabuf* %38, %struct.wpabuf** %3, align 8
  %39 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %40 = icmp eq %struct.wpabuf* %39, null
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i8*, i8** %5, align 8
  %43 = call i32 @os_free(i8* %42)
  br label %93

44:                                               ; preds = %32
  %45 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @inet_ntoa(i32 %48)
  %50 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %4, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ntohs(i32 %51)
  %53 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %54 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %59 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %64 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %69 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @wpabuf_printf(%struct.wpabuf* %45, i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.3, i64 0, i64 0), i8* %46, i32 %49, i32 %52, i32 %57, i32 %62, i32 %67, i32 %70, i32 1800)
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @os_free(i8* %72)
  %74 = load i32, i32* @MSG_MSGDUMP, align 4
  %75 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %76 = call i32 @wpabuf_head(%struct.wpabuf* %75)
  %77 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %78 = call i32 @wpabuf_len(%struct.wpabuf* %77)
  %79 = call i32 @wpa_hexdump_ascii(i32 %74, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %76, i32 %78)
  %80 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %81 = load i32, i32* @wps_er_http_subscribe_cb, align 4
  %82 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %83 = call i32* @http_client_addr(%struct.sockaddr_in* %4, %struct.wpabuf* %80, i32 1000, i32 %81, %struct.wps_er_ap* %82)
  %84 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %85 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %84, i32 0, i32 0
  store i32* %83, i32** %85, align 8
  %86 = load %struct.wps_er_ap*, %struct.wps_er_ap** %2, align 8
  %87 = getelementptr inbounds %struct.wps_er_ap, %struct.wps_er_ap* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = icmp eq i32* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %44
  %91 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %92 = call i32 @wpabuf_free(%struct.wpabuf* %91)
  br label %93

93:                                               ; preds = %11, %19, %29, %41, %90, %44
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i8* @http_client_url_parse(i32*, %struct.sockaddr_in*, i8**) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #1

declare dso_local i64 @os_strlen(i32*) #1

declare dso_local i32 @os_free(i8*) #1

declare dso_local i32 @wpabuf_printf(%struct.wpabuf*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32* @http_client_addr(%struct.sockaddr_in*, %struct.wpabuf*, i32, i32, %struct.wps_er_ap*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
