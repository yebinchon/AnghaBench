; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_client_tx_ready.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_client_tx_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.http_client = type { i64, i32, i32 (i32, %struct.http_client*, i32)*, i32*, i32, i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"HTTP: Send client request to %s:%d (%lu of %lu bytes remaining)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"HTTP: Failed to send buffer: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@EVENT_TYPE_WRITE = common dso_local global i32 0, align 4
@HTTP_CLIENT_FAILED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"HTTP: Sent %d of %lu bytes; %lu bytes remaining\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"HTTP: Full client request sent to %s:%d\00", align 1
@http_client_got_response = common dso_local global i32 0, align 4
@HTTP_CLIENT_TIMEOUT_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*, i8*)* @http_client_tx_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_client_tx_ready(i32 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.http_client*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.http_client*
  store %struct.http_client* %11, %struct.http_client** %7, align 8
  %12 = load %struct.http_client*, %struct.http_client** %7, align 8
  %13 = getelementptr inbounds %struct.http_client, %struct.http_client* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = call i64 @wpabuf_len(i32* %14)
  %16 = load %struct.http_client*, %struct.http_client** %7, align 8
  %17 = getelementptr inbounds %struct.http_client, %struct.http_client* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %15, %18
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load %struct.http_client*, %struct.http_client** %7, align 8
  %22 = getelementptr inbounds %struct.http_client, %struct.http_client* %21, i32 0, i32 7
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @inet_ntoa(i32 %24)
  %26 = load %struct.http_client*, %struct.http_client** %7, align 8
  %27 = getelementptr inbounds %struct.http_client, %struct.http_client* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ntohs(i32 %29)
  %31 = load %struct.http_client*, %struct.http_client** %7, align 8
  %32 = getelementptr inbounds %struct.http_client, %struct.http_client* %31, i32 0, i32 6
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @wpabuf_len(i32* %33)
  %35 = load i64, i64* %9, align 8
  %36 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30, i64 %34, i64 %35)
  %37 = load %struct.http_client*, %struct.http_client** %7, align 8
  %38 = getelementptr inbounds %struct.http_client, %struct.http_client* %37, i32 0, i32 5
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.http_client*, %struct.http_client** %7, align 8
  %41 = getelementptr inbounds %struct.http_client, %struct.http_client* %40, i32 0, i32 6
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @wpabuf_head_u8(i32* %42)
  %44 = load %struct.http_client*, %struct.http_client** %7, align 8
  %45 = getelementptr inbounds %struct.http_client, %struct.http_client* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add i64 %43, %46
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @send(i32 %39, i64 %47, i64 %48, i32 0)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %3
  %53 = load i32, i32* @MSG_DEBUG, align 4
  %54 = load i32, i32* @errno, align 4
  %55 = call i32 @strerror(i32 %54)
  %56 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %struct.http_client*, %struct.http_client** %7, align 8
  %58 = getelementptr inbounds %struct.http_client, %struct.http_client* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @EVENT_TYPE_WRITE, align 4
  %61 = call i32 @eloop_unregister_sock(i32 %59, i32 %60)
  %62 = load %struct.http_client*, %struct.http_client** %7, align 8
  %63 = getelementptr inbounds %struct.http_client, %struct.http_client* %62, i32 0, i32 2
  %64 = load i32 (i32, %struct.http_client*, i32)*, i32 (i32, %struct.http_client*, i32)** %63, align 8
  %65 = load %struct.http_client*, %struct.http_client** %7, align 8
  %66 = getelementptr inbounds %struct.http_client, %struct.http_client* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.http_client*, %struct.http_client** %7, align 8
  %69 = load i32, i32* @HTTP_CLIENT_FAILED, align 4
  %70 = call i32 %64(i32 %67, %struct.http_client* %68, i32 %69)
  br label %144

71:                                               ; preds = %3
  %72 = load i32, i32* %8, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %9, align 8
  %75 = icmp ult i64 %73, %74
  br i1 %75, label %76, label %94

76:                                               ; preds = %71
  %77 = load i32, i32* @MSG_DEBUG, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.http_client*, %struct.http_client** %7, align 8
  %80 = getelementptr inbounds %struct.http_client, %struct.http_client* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = call i64 @wpabuf_len(i32* %81)
  %83 = load i64, i64* %9, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = sub i64 %83, %85
  %87 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %77, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %78, i64 %82, i64 %86)
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = load %struct.http_client*, %struct.http_client** %7, align 8
  %91 = getelementptr inbounds %struct.http_client, %struct.http_client* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = add i64 %92, %89
  store i64 %93, i64* %91, align 8
  br label %144

94:                                               ; preds = %71
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = load %struct.http_client*, %struct.http_client** %7, align 8
  %97 = getelementptr inbounds %struct.http_client, %struct.http_client* %96, i32 0, i32 7
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @inet_ntoa(i32 %99)
  %101 = load %struct.http_client*, %struct.http_client** %7, align 8
  %102 = getelementptr inbounds %struct.http_client, %struct.http_client* %101, i32 0, i32 7
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @ntohs(i32 %104)
  %106 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %95, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %100, i32 %105)
  %107 = load %struct.http_client*, %struct.http_client** %7, align 8
  %108 = getelementptr inbounds %struct.http_client, %struct.http_client* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @EVENT_TYPE_WRITE, align 4
  %111 = call i32 @eloop_unregister_sock(i32 %109, i32 %110)
  %112 = load %struct.http_client*, %struct.http_client** %7, align 8
  %113 = getelementptr inbounds %struct.http_client, %struct.http_client* %112, i32 0, i32 6
  %114 = load i32*, i32** %113, align 8
  %115 = call i32 @wpabuf_free(i32* %114)
  %116 = load %struct.http_client*, %struct.http_client** %7, align 8
  %117 = getelementptr inbounds %struct.http_client, %struct.http_client* %116, i32 0, i32 6
  store i32* null, i32** %117, align 8
  %118 = load %struct.http_client*, %struct.http_client** %7, align 8
  %119 = getelementptr inbounds %struct.http_client, %struct.http_client* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @http_client_got_response, align 4
  %122 = load %struct.http_client*, %struct.http_client** %7, align 8
  %123 = load %struct.http_client*, %struct.http_client** %7, align 8
  %124 = getelementptr inbounds %struct.http_client, %struct.http_client* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @HTTP_CLIENT_TIMEOUT_SEC, align 4
  %127 = call i32* @httpread_create(i32 %120, i32 %121, %struct.http_client* %122, i32 %125, i32 %126)
  %128 = load %struct.http_client*, %struct.http_client** %7, align 8
  %129 = getelementptr inbounds %struct.http_client, %struct.http_client* %128, i32 0, i32 3
  store i32* %127, i32** %129, align 8
  %130 = load %struct.http_client*, %struct.http_client** %7, align 8
  %131 = getelementptr inbounds %struct.http_client, %struct.http_client* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %144

134:                                              ; preds = %94
  %135 = load %struct.http_client*, %struct.http_client** %7, align 8
  %136 = getelementptr inbounds %struct.http_client, %struct.http_client* %135, i32 0, i32 2
  %137 = load i32 (i32, %struct.http_client*, i32)*, i32 (i32, %struct.http_client*, i32)** %136, align 8
  %138 = load %struct.http_client*, %struct.http_client** %7, align 8
  %139 = getelementptr inbounds %struct.http_client, %struct.http_client* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.http_client*, %struct.http_client** %7, align 8
  %142 = load i32, i32* @HTTP_CLIENT_FAILED, align 4
  %143 = call i32 %137(i32 %140, %struct.http_client* %141, i32 %142)
  br label %144

144:                                              ; preds = %52, %76, %134, %94
  ret void
}

declare dso_local i64 @wpabuf_len(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @send(i32, i64, i64, i32) #1

declare dso_local i64 @wpabuf_head_u8(i32*) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @eloop_unregister_sock(i32, i32) #1

declare dso_local i32 @wpabuf_free(i32*) #1

declare dso_local i32* @httpread_create(i32, i32, %struct.http_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
