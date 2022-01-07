; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_resp_not_found.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_er.c_wps_er_http_resp_not_found.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_request = type { i32 }
%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [88 x i8] c"HTTP/1.1 404 Not Found\0D\0AServer: unspecified, UPnP/1.0, unspecified\0D\0AConnection: close\0D\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.http_request*)* @wps_er_http_resp_not_found to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wps_er_http_resp_not_found(%struct.http_request* %0) #0 {
  %2 = alloca %struct.http_request*, align 8
  %3 = alloca %struct.wpabuf*, align 8
  store %struct.http_request* %0, %struct.http_request** %2, align 8
  %4 = call %struct.wpabuf* @wpabuf_alloc(i32 200)
  store %struct.wpabuf* %4, %struct.wpabuf** %3, align 8
  %5 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %6 = icmp eq %struct.wpabuf* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.http_request*, %struct.http_request** %2, align 8
  %9 = call i32 @http_request_deinit(%struct.http_request* %8)
  br label %20

10:                                               ; preds = %1
  %11 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %12 = call i32 @wpabuf_put_str(%struct.wpabuf* %11, i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %14 = call i32 @http_put_date(%struct.wpabuf* %13)
  %15 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %16 = call i32 @wpabuf_put_str(%struct.wpabuf* %15, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.http_request*, %struct.http_request** %2, align 8
  %18 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %19 = call i32 @http_request_send_and_deinit(%struct.http_request* %17, %struct.wpabuf* %18)
  br label %20

20:                                               ; preds = %10, %7
  ret void
}

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
