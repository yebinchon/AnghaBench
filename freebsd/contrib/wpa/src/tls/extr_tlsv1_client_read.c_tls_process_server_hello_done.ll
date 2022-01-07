; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_process_server_hello_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_process_server_hello_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, i32, i32 }

@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"TLSv1: Expected Handshake; received content type 0x%x\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"TLSv1: Too short ServerHelloDone (left=%lu)\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"TLSv1: Mismatch in ServerHelloDone length (len=%lu != left=%lu)\00", align 1
@TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [75 x i8] c"TLSv1: Received unexpected handshake message %d (expected ServerHelloDone)\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"TLSv1: Received ServerHelloDone\00", align 1
@TLS_CONN_REQUIRE_OCSP = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [52 x i8] c"TLSv1: No OCSP response received - reject handshake\00", align 1
@TLS_ALERT_BAD_CERTIFICATE_STATUS_RESPONSE = common dso_local global i32 0, align 4
@CLIENT_KEY_EXCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i64, i64*, i64*)* @tls_process_server_hello_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_server_hello_done(%struct.tlsv1_client* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlsv1_client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @TLS_CONTENT_TYPE_HANDSHAKE, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %4
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = load i64, i64* %7, align 8
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %20)
  %22 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %23 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %24 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %25 = call i32 @tls_alert(%struct.tlsv1_client* %22, i32 %23, i32 %24)
  store i32 -1, i32* %5, align 4
  br label %109

26:                                               ; preds = %4
  %27 = load i64*, i64** %8, align 8
  store i64* %27, i64** %10, align 8
  %28 = load i64*, i64** %9, align 8
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %12, align 8
  %30 = load i64, i64* %12, align 8
  %31 = icmp ult i64 %30, 4
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load i32, i32* @MSG_DEBUG, align 4
  %34 = load i64, i64* %12, align 8
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %33, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i64 %34)
  %36 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %37 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %38 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %39 = call i32 @tls_alert(%struct.tlsv1_client* %36, i32 %37, i32 %38)
  store i32 -1, i32* %5, align 4
  br label %109

40:                                               ; preds = %26
  %41 = load i64*, i64** %10, align 8
  %42 = getelementptr inbounds i64, i64* %41, i32 1
  store i64* %42, i64** %10, align 8
  %43 = load i64, i64* %41, align 8
  store i64 %43, i64* %14, align 8
  %44 = load i64*, i64** %10, align 8
  %45 = call i64 @WPA_GET_BE24(i64* %44)
  store i64 %45, i64* %13, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 3
  store i64* %47, i64** %10, align 8
  %48 = load i64, i64* %12, align 8
  %49 = sub i64 %48, 4
  store i64 %49, i64* %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %12, align 8
  %52 = icmp ugt i64 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %40
  %54 = load i32, i32* @MSG_DEBUG, align 4
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %12, align 8
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %54, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %55, i64 %56)
  %58 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %59 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %60 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %61 = call i32 @tls_alert(%struct.tlsv1_client* %58, i32 %59, i32 %60)
  store i32 -1, i32* %5, align 4
  br label %109

62:                                               ; preds = %40
  %63 = load i64*, i64** %10, align 8
  %64 = load i64, i64* %13, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  store i64* %65, i64** %11, align 8
  %66 = load i64, i64* %14, align 8
  %67 = load i64, i64* @TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %62
  %70 = load i32, i32* @MSG_DEBUG, align 4
  %71 = load i64, i64* %14, align 8
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %70, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.3, i64 0, i64 0), i64 %71)
  %73 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %74 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %75 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %76 = call i32 @tls_alert(%struct.tlsv1_client* %73, i32 %74, i32 %75)
  store i32 -1, i32* %5, align 4
  br label %109

77:                                               ; preds = %62
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %80 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %81 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @TLS_CONN_REQUIRE_OCSP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %77
  %87 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %88 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* @MSG_INFO, align 4
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %92, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %94 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %95 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %96 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE_STATUS_RESPONSE, align 4
  %97 = call i32 @tls_alert(%struct.tlsv1_client* %94, i32 %95, i32 %96)
  store i32 -1, i32* %5, align 4
  br label %109

98:                                               ; preds = %86, %77
  %99 = load i64*, i64** %11, align 8
  %100 = load i64*, i64** %8, align 8
  %101 = ptrtoint i64* %99 to i64
  %102 = ptrtoint i64* %100 to i64
  %103 = sub i64 %101, %102
  %104 = sdiv exact i64 %103, 8
  %105 = load i64*, i64** %9, align 8
  store i64 %104, i64* %105, align 8
  %106 = load i32, i32* @CLIENT_KEY_EXCHANGE, align 4
  %107 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %108 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  store i32 0, i32* %5, align 4
  br label %109

109:                                              ; preds = %98, %91, %69, %53, %32, %18
  %110 = load i32, i32* %5, align 4
  ret i32 %110
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i64 @WPA_GET_BE24(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
