; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_request = type { i32 }
%struct.wps_er = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"WPS ER: HTTP request: '%s' (type %d) from %s:%d\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"WPS ER: Unsupported HTTP request type %d\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"HTTP/1.1 501 Unimplemented\0D\0AConnection: close\0D\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.http_request*)* @wps_er_http_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_http_req(i8* %0, %struct.http_request* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.http_request*, align 8
  %5 = alloca %struct.wps_er*, align 8
  %6 = alloca %struct.sockaddr_in*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.http_request* %1, %struct.http_request** %4, align 8
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.wps_er*
  store %struct.wps_er* %10, %struct.wps_er** %5, align 8
  %11 = load %struct.http_request*, %struct.http_request** %4, align 8
  %12 = call %struct.sockaddr_in* @http_request_get_cli_addr(%struct.http_request* %11)
  store %struct.sockaddr_in* %12, %struct.sockaddr_in** %6, align 8
  %13 = load %struct.http_request*, %struct.http_request** %4, align 8
  %14 = call i32 @http_request_get_type(%struct.http_request* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* @MSG_DEBUG, align 4
  %16 = load %struct.http_request*, %struct.http_request** %4, align 8
  %17 = call i32 @http_request_get_uri(%struct.http_request* %16)
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %20 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @inet_ntoa(i32 %21)
  %23 = load %struct.sockaddr_in*, %struct.sockaddr_in** %6, align 8
  %24 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ntohs(i32 %25)
  %27 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %15, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18, i32 %22, i32 %26)
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %33 [
    i32 128, label %29
  ]

29:                                               ; preds = %2
  %30 = load %struct.wps_er*, %struct.wps_er** %5, align 8
  %31 = load %struct.http_request*, %struct.http_request** %4, align 8
  %32 = call i32 @wps_er_http_notify(%struct.wps_er* %30, %struct.http_request* %31)
  br label %53

33:                                               ; preds = %2
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = call %struct.wpabuf* @wpabuf_alloc(i32 200)
  store %struct.wpabuf* %37, %struct.wpabuf** %8, align 8
  %38 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %39 = icmp eq %struct.wpabuf* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.http_request*, %struct.http_request** %4, align 8
  %42 = call i32 @http_request_deinit(%struct.http_request* %41)
  br label %53

43:                                               ; preds = %33
  %44 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %45 = call i32 @wpabuf_put_str(%struct.wpabuf* %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %47 = call i32 @http_put_date(%struct.wpabuf* %46)
  %48 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %49 = call i32 @wpabuf_put_str(%struct.wpabuf* %48, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.http_request*, %struct.http_request** %4, align 8
  %51 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %52 = call i32 @http_request_send_and_deinit(%struct.http_request* %50, %struct.wpabuf* %51)
  br label %53

53:                                               ; preds = %40, %43, %29
  ret void
}

declare dso_local %struct.sockaddr_in* @http_request_get_cli_addr(%struct.http_request*) #1

declare dso_local i32 @http_request_get_type(%struct.http_request*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @http_request_get_uri(%struct.http_request*) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @wps_er_http_notify(%struct.wps_er*, %struct.http_request*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @http_request_deinit(%struct.http_request*) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

declare dso_local i32 @http_put_date(%struct.wpabuf*) #1

declare dso_local i32 @http_request_send_and_deinit(%struct.http_request*, %struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
