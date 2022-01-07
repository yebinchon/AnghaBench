; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_http_put_empty.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_upnp_web.c_http_put_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }

@http_server_hdr = common dso_local global i8* null, align 8
@http_connection_close = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [22 x i8] c"Content-Length: 0\0D\0A\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpabuf*, i32)* @http_put_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_put_empty(%struct.wpabuf* %0, i32 %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca i32, align 4
  store %struct.wpabuf* %0, %struct.wpabuf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @http_put_reply_code(%struct.wpabuf* %5, i32 %6)
  %8 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %9 = load i8*, i8** @http_server_hdr, align 8
  %10 = call i32 @wpabuf_put_str(%struct.wpabuf* %8, i8* %9)
  %11 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %12 = load i8*, i8** @http_connection_close, align 8
  %13 = call i32 @wpabuf_put_str(%struct.wpabuf* %11, i8* %12)
  %14 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  %15 = call i32 @wpabuf_put_str(%struct.wpabuf* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @http_put_reply_code(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
