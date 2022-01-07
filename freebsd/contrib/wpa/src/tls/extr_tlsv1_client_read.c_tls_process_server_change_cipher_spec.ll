; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_process_server_change_cipher_spec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_process_server_change_cipher_spec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32 (i32, i32*, i32, i32*, i32*, i32*)*, i32, i32, i32, i64 }

@TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"TLSv1: Expected ChangeCipherSpec; received content type 0x%x\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"TLSv1: Server may have rejected SessionTicket\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"TLSv1: SessionTicket callback indicated failure\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@SERVER_CERTIFICATE = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"TLSv1: Too short ChangeCipherSpec\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@TLS_CHANGE_CIPHER_SPEC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [53 x i8] c"TLSv1: Expected ChangeCipherSpec; received data 0x%x\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"TLSv1: Received ChangeCipherSpec\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"TLSv1: Failed to change read cipher for record layer\00", align 1
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SERVER_FINISHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i64, i64*, i64*)* @tls_process_server_change_cipher_spec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_server_change_cipher_spec(%struct.tlsv1_client* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlsv1_client*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @TLS_CONTENT_TYPE_CHANGE_CIPHER_SPEC, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %4
  %17 = load i32, i32* @MSG_DEBUG, align 4
  %18 = load i64, i64* %7, align 8
  %19 = call i32 (i32, i8*, ...) @wpa_printf(i32 %17, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %18)
  %20 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %21 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %54

24:                                               ; preds = %16
  %25 = load i32, i32* @MSG_DEBUG, align 4
  %26 = call i32 (i32, i8*, ...) @wpa_printf(i32 %25, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %28 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %30 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %29, i32 0, i32 0
  %31 = load i32 (i32, i32*, i32, i32*, i32*, i32*)*, i32 (i32, i32*, i32, i32*, i32*, i32*)** %30, align 8
  %32 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %33 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 %31(i32 %34, i32* null, i32 0, i32* null, i32* null, i32* null)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %24
  %39 = load i32, i32* @MSG_DEBUG, align 4
  %40 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  %41 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %42 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %43 = load i32, i32* @TLS_ALERT_HANDSHAKE_FAILURE, align 4
  %44 = call i32 @tls_alert(%struct.tlsv1_client* %41, i32 %42, i32 %43)
  store i32 -1, i32* %5, align 4
  br label %112

45:                                               ; preds = %24
  %46 = load i32, i32* @SERVER_CERTIFICATE, align 4
  %47 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %48 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64*, i64** %8, align 8
  %52 = load i64*, i64** %9, align 8
  %53 = call i32 @tls_process_certificate(%struct.tlsv1_client* %49, i64 %50, i64* %51, i64* %52)
  store i32 %53, i32* %5, align 4
  br label %112

54:                                               ; preds = %16
  %55 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %56 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %57 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %58 = call i32 @tls_alert(%struct.tlsv1_client* %55, i32 %56, i32 %57)
  store i32 -1, i32* %5, align 4
  br label %112

59:                                               ; preds = %4
  %60 = load i64*, i64** %8, align 8
  store i64* %60, i64** %10, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = icmp ult i64 %63, 1
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %69 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %70 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %71 = call i32 @tls_alert(%struct.tlsv1_client* %68, i32 %69, i32 %70)
  store i32 -1, i32* %5, align 4
  br label %112

72:                                               ; preds = %59
  %73 = load i64*, i64** %10, align 8
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @TLS_CHANGE_CIPHER_SPEC, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %72
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = load i64*, i64** %10, align 8
  %80 = load i64, i64* %79, align 8
  %81 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i64 %80)
  %82 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %83 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %84 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %85 = call i32 @tls_alert(%struct.tlsv1_client* %82, i32 %83, i32 %84)
  store i32 -1, i32* %5, align 4
  br label %112

86:                                               ; preds = %72
  %87 = load i32, i32* @MSG_DEBUG, align 4
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %89 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %90 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %89, i32 0, i32 2
  %91 = call i64 @tlsv1_record_change_read_cipher(i32* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %86
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  %96 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %97 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %98 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %99 = call i32 @tls_alert(%struct.tlsv1_client* %96, i32 %97, i32 %98)
  store i32 -1, i32* %5, align 4
  br label %112

100:                                              ; preds = %86
  %101 = load i64*, i64** %10, align 8
  %102 = getelementptr inbounds i64, i64* %101, i64 1
  %103 = load i64*, i64** %8, align 8
  %104 = ptrtoint i64* %102 to i64
  %105 = ptrtoint i64* %103 to i64
  %106 = sub i64 %104, %105
  %107 = sdiv exact i64 %106, 8
  %108 = load i64*, i64** %9, align 8
  store i64 %107, i64* %108, align 8
  %109 = load i32, i32* @SERVER_FINISHED, align 4
  %110 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %111 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %100, %93, %77, %65, %54, %45, %38
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i32 @tls_process_certificate(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i64 @tlsv1_record_change_read_cipher(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
