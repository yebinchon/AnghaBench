; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_server.c_http_request_send.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_server.c_http_request_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_request = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"HTTP: Send %lu byte response to %s:%d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"HTTP: Send failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"HTTP: Sent only %d of %lu bytes\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @http_request_send(%struct.http_request* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca %struct.http_request*, align 8
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca i32, align 4
  store %struct.http_request* %0, %struct.http_request** %3, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %4, align 8
  %6 = load i32, i32* @MSG_DEBUG, align 4
  %7 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %8 = call i64 @wpabuf_len(%struct.wpabuf* %7)
  %9 = trunc i64 %8 to i32
  %10 = load %struct.http_request*, %struct.http_request** %3, align 8
  %11 = getelementptr inbounds %struct.http_request, %struct.http_request* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @inet_ntoa(i32 %13)
  %15 = load %struct.http_request*, %struct.http_request** %3, align 8
  %16 = getelementptr inbounds %struct.http_request, %struct.http_request* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ntohs(i32 %18)
  %20 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %6, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %14, i32 %19)
  %21 = load %struct.http_request*, %struct.http_request** %3, align 8
  %22 = getelementptr inbounds %struct.http_request, %struct.http_request* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %25 = call i32 @wpabuf_head(%struct.wpabuf* %24)
  %26 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %27 = call i64 @wpabuf_len(%struct.wpabuf* %26)
  %28 = call i32 @send(i32 %23, i32 %25, i64 %27, i32 0)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load i32, i32* @errno, align 4
  %34 = call i32 @strerror(i32 %33)
  %35 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %49

36:                                               ; preds = %2
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %40 = call i64 @wpabuf_len(%struct.wpabuf* %39)
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load i32, i32* @MSG_DEBUG, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %46 = call i64 @wpabuf_len(%struct.wpabuf* %45)
  %47 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %44, i64 %46)
  br label %48

48:                                               ; preds = %42, %36
  br label %49

49:                                               ; preds = %48, %31
  %50 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %51 = call i32 @wpabuf_free(%struct.wpabuf* %50)
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @send(i32, i32, i64, i32) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
