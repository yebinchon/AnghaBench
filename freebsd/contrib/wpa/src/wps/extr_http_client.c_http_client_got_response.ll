; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_client_got_response.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_http_client.c_http_client_got_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.httpread = type { i32 }
%struct.http_client = type { i32, i32 (i32, %struct.http_client*, i32)*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"HTTP: httpread callback: handle=%p cookie=%p e=%d\00", align 1
@http_client_timeout = common dso_local global i32 0, align 4
@HTTPREAD_HDR_TYPE_REPLY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"HTTP: Response OK from %s:%d\00", align 1
@HTTP_CLIENT_OK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"HTTP: Error %d from %s:%d\00", align 1
@HTTP_CLIENT_INVALID_REPLY = common dso_local global i32 0, align 4
@HTTP_CLIENT_TIMEOUT = common dso_local global i32 0, align 4
@HTTP_CLIENT_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.httpread*, i8*, i32)* @http_client_got_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @http_client_got_response(%struct.httpread* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.httpread*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.http_client*, align 8
  %8 = alloca i32, align 4
  store %struct.httpread* %0, %struct.httpread** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.http_client*
  store %struct.http_client* %10, %struct.http_client** %7, align 8
  %11 = load i32, i32* @MSG_DEBUG, align 4
  %12 = load %struct.httpread*, %struct.httpread** %4, align 8
  %13 = ptrtoint %struct.httpread* %12 to i32
  %14 = load i8*, i8** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call i32 (i32, i8*, i32, i8*, ...) @wpa_printf(i32 %11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %13, i8* %14, i32 %15)
  %17 = load i32, i32* @http_client_timeout, align 4
  %18 = load %struct.http_client*, %struct.http_client** %7, align 8
  %19 = call i32 @eloop_cancel_timeout(i32 %17, %struct.http_client* %18, i32* null)
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %116 [
    i32 129, label %21
    i32 128, label %96
    i32 130, label %106
  ]

21:                                               ; preds = %3
  %22 = load %struct.http_client*, %struct.http_client** %7, align 8
  %23 = getelementptr inbounds %struct.http_client, %struct.http_client* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @httpread_hdr_type_get(i32 %24)
  %26 = load i32, i32* @HTTPREAD_HDR_TYPE_REPLY, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %85

28:                                               ; preds = %21
  %29 = load %struct.http_client*, %struct.http_client** %7, align 8
  %30 = getelementptr inbounds %struct.http_client, %struct.http_client* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @httpread_reply_code_get(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 200
  br i1 %34, label %35, label %59

35:                                               ; preds = %28
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load %struct.http_client*, %struct.http_client** %7, align 8
  %38 = getelementptr inbounds %struct.http_client, %struct.http_client* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @inet_ntoa(i32 %40)
  %42 = load %struct.http_client*, %struct.http_client** %7, align 8
  %43 = getelementptr inbounds %struct.http_client, %struct.http_client* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @ntohs(i32 %45)
  %47 = sext i32 %46 to i64
  %48 = inttoptr i64 %47 to i8*
  %49 = call i32 (i32, i8*, i32, i8*, ...) @wpa_printf(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %41, i8* %48)
  %50 = load %struct.http_client*, %struct.http_client** %7, align 8
  %51 = getelementptr inbounds %struct.http_client, %struct.http_client* %50, i32 0, i32 1
  %52 = load i32 (i32, %struct.http_client*, i32)*, i32 (i32, %struct.http_client*, i32)** %51, align 8
  %53 = load %struct.http_client*, %struct.http_client** %7, align 8
  %54 = getelementptr inbounds %struct.http_client, %struct.http_client* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.http_client*, %struct.http_client** %7, align 8
  %57 = load i32, i32* @HTTP_CLIENT_OK, align 4
  %58 = call i32 %52(i32 %55, %struct.http_client* %56, i32 %57)
  br label %84

59:                                               ; preds = %28
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.http_client*, %struct.http_client** %7, align 8
  %63 = getelementptr inbounds %struct.http_client, %struct.http_client* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @inet_ntoa(i32 %65)
  %67 = sext i32 %66 to i64
  %68 = inttoptr i64 %67 to i8*
  %69 = load %struct.http_client*, %struct.http_client** %7, align 8
  %70 = getelementptr inbounds %struct.http_client, %struct.http_client* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ntohs(i32 %72)
  %74 = call i32 (i32, i8*, i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %61, i8* %68, i32 %73)
  %75 = load %struct.http_client*, %struct.http_client** %7, align 8
  %76 = getelementptr inbounds %struct.http_client, %struct.http_client* %75, i32 0, i32 1
  %77 = load i32 (i32, %struct.http_client*, i32)*, i32 (i32, %struct.http_client*, i32)** %76, align 8
  %78 = load %struct.http_client*, %struct.http_client** %7, align 8
  %79 = getelementptr inbounds %struct.http_client, %struct.http_client* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.http_client*, %struct.http_client** %7, align 8
  %82 = load i32, i32* @HTTP_CLIENT_INVALID_REPLY, align 4
  %83 = call i32 %77(i32 %80, %struct.http_client* %81, i32 %82)
  br label %84

84:                                               ; preds = %59, %35
  br label %95

85:                                               ; preds = %21
  %86 = load %struct.http_client*, %struct.http_client** %7, align 8
  %87 = getelementptr inbounds %struct.http_client, %struct.http_client* %86, i32 0, i32 1
  %88 = load i32 (i32, %struct.http_client*, i32)*, i32 (i32, %struct.http_client*, i32)** %87, align 8
  %89 = load %struct.http_client*, %struct.http_client** %7, align 8
  %90 = getelementptr inbounds %struct.http_client, %struct.http_client* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.http_client*, %struct.http_client** %7, align 8
  %93 = load i32, i32* @HTTP_CLIENT_INVALID_REPLY, align 4
  %94 = call i32 %88(i32 %91, %struct.http_client* %92, i32 %93)
  br label %95

95:                                               ; preds = %85, %84
  br label %116

96:                                               ; preds = %3
  %97 = load %struct.http_client*, %struct.http_client** %7, align 8
  %98 = getelementptr inbounds %struct.http_client, %struct.http_client* %97, i32 0, i32 1
  %99 = load i32 (i32, %struct.http_client*, i32)*, i32 (i32, %struct.http_client*, i32)** %98, align 8
  %100 = load %struct.http_client*, %struct.http_client** %7, align 8
  %101 = getelementptr inbounds %struct.http_client, %struct.http_client* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.http_client*, %struct.http_client** %7, align 8
  %104 = load i32, i32* @HTTP_CLIENT_TIMEOUT, align 4
  %105 = call i32 %99(i32 %102, %struct.http_client* %103, i32 %104)
  br label %116

106:                                              ; preds = %3
  %107 = load %struct.http_client*, %struct.http_client** %7, align 8
  %108 = getelementptr inbounds %struct.http_client, %struct.http_client* %107, i32 0, i32 1
  %109 = load i32 (i32, %struct.http_client*, i32)*, i32 (i32, %struct.http_client*, i32)** %108, align 8
  %110 = load %struct.http_client*, %struct.http_client** %7, align 8
  %111 = getelementptr inbounds %struct.http_client, %struct.http_client* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.http_client*, %struct.http_client** %7, align 8
  %114 = load i32, i32* @HTTP_CLIENT_FAILED, align 4
  %115 = call i32 %109(i32 %112, %struct.http_client* %113, i32 %114)
  br label %116

116:                                              ; preds = %3, %106, %96, %95
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, i32, i8*, ...) #1

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.http_client*, i32*) #1

declare dso_local i32 @httpread_hdr_type_get(i32) #1

declare dso_local i32 @httpread_reply_code_get(i32) #1

declare dso_local i32 @inet_ntoa(i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
