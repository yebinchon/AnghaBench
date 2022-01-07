; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_read.c_tls_process_client_key_exchange.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_read.c_tls_process_client_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tls_cipher_suite = type { i64 }

@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Expected Handshake; received content type 0x%x\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Too short ClientKeyExchange (Left=%lu)\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"Mismatch in ClientKeyExchange length (len=%lu != left=%lu)\00", align 1
@TLS_HANDSHAKE_TYPE_CLIENT_KEY_EXCHANGE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [70 x i8] c"Received unexpected handshake message %d (expected ClientKeyExchange)\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Received ClientKeyExchange\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"TLSv1: ClientKeyExchange\00", align 1
@TLS_KEY_X_NULL = common dso_local global i64 0, align 8
@TLS_KEY_X_DH_anon = common dso_local global i64 0, align 8
@TLS_KEY_X_DHE_RSA = common dso_local global i64 0, align 8
@CERTIFICATE_VERIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i64, i64*, i64*)* @tls_process_client_key_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_client_key_exchange(%struct.tlsv1_server* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlsv1_server*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.tls_cipher_suite*, align 8
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @TLS_CONTENT_TYPE_HANDSHAKE, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %4
  %21 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %25 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %26 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %27 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %24, i32 %25, i32 %26)
  store i32 -1, i32* %5, align 4
  br label %140

28:                                               ; preds = %4
  %29 = load i64*, i64** %8, align 8
  store i64* %29, i64** %10, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %12, align 8
  %32 = load i64, i64* %12, align 8
  %33 = icmp ult i64 %32, 4
  br i1 %33, label %34, label %42

34:                                               ; preds = %28
  %35 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %36 = load i64, i64* %12, align 8
  %37 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %35, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  %38 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %39 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %40 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %41 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %38, i32 %39, i32 %40)
  store i32 -1, i32* %5, align 4
  br label %140

42:                                               ; preds = %28
  %43 = load i64*, i64** %10, align 8
  %44 = getelementptr inbounds i64, i64* %43, i32 1
  store i64* %44, i64** %10, align 8
  %45 = load i64, i64* %43, align 8
  store i64 %45, i64* %14, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = call i64 @WPA_GET_BE24(i64* %46)
  store i64 %47, i64* %13, align 8
  %48 = load i64*, i64** %10, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 3
  store i64* %49, i64** %10, align 8
  %50 = load i64, i64* %12, align 8
  %51 = sub i64 %50, 4
  store i64 %51, i64* %12, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %12, align 8
  %54 = icmp ugt i64 %52, %53
  br i1 %54, label %55, label %64

55:                                               ; preds = %42
  %56 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load i64, i64* %12, align 8
  %59 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %56, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i64 %57, i64 %58)
  %60 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %61 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %62 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %63 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %60, i32 %61, i32 %62)
  store i32 -1, i32* %5, align 4
  br label %140

64:                                               ; preds = %42
  %65 = load i64*, i64** %10, align 8
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  store i64* %67, i64** %11, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* @TLS_HANDSHAKE_TYPE_CLIENT_KEY_EXCHANGE, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %79

71:                                               ; preds = %64
  %72 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %73 = load i64, i64* %14, align 8
  %74 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %72, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i64 %73)
  %75 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %76 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %77 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %78 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %75, i32 %76, i32 %77)
  store i32 -1, i32* %5, align 4
  br label %140

79:                                               ; preds = %64
  %80 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %81 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %80, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = load i64*, i64** %10, align 8
  %84 = load i64, i64* %13, align 8
  %85 = call i32 @wpa_hexdump(i32 %82, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64* %83, i64 %84)
  %86 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %87 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call %struct.tls_cipher_suite* @tls_get_cipher_suite(i32 %89)
  store %struct.tls_cipher_suite* %90, %struct.tls_cipher_suite** %16, align 8
  %91 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %16, align 8
  %92 = icmp eq %struct.tls_cipher_suite* %91, null
  br i1 %92, label %93, label %95

93:                                               ; preds = %79
  %94 = load i64, i64* @TLS_KEY_X_NULL, align 8
  store i64 %94, i64* %15, align 8
  br label %99

95:                                               ; preds = %79
  %96 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %16, align 8
  %97 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  store i64 %98, i64* %15, align 8
  br label %99

99:                                               ; preds = %95, %93
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* @TLS_KEY_X_DH_anon, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %107, label %103

103:                                              ; preds = %99
  %104 = load i64, i64* %15, align 8
  %105 = load i64, i64* @TLS_KEY_X_DHE_RSA, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %114

107:                                              ; preds = %103, %99
  %108 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %109 = load i64*, i64** %10, align 8
  %110 = load i64*, i64** %11, align 8
  %111 = call i64 @tls_process_client_key_exchange_dh(%struct.tlsv1_server* %108, i64* %109, i64* %110)
  %112 = icmp slt i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %107
  store i32 -1, i32* %5, align 4
  br label %140

114:                                              ; preds = %107, %103
  %115 = load i64, i64* %15, align 8
  %116 = load i64, i64* @TLS_KEY_X_DH_anon, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %129

118:                                              ; preds = %114
  %119 = load i64, i64* %15, align 8
  %120 = load i64, i64* @TLS_KEY_X_DHE_RSA, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %129

122:                                              ; preds = %118
  %123 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %124 = load i64*, i64** %10, align 8
  %125 = load i64*, i64** %11, align 8
  %126 = call i64 @tls_process_client_key_exchange_rsa(%struct.tlsv1_server* %123, i64* %124, i64* %125)
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  store i32 -1, i32* %5, align 4
  br label %140

129:                                              ; preds = %122, %118, %114
  %130 = load i64*, i64** %11, align 8
  %131 = load i64*, i64** %8, align 8
  %132 = ptrtoint i64* %130 to i64
  %133 = ptrtoint i64* %131 to i64
  %134 = sub i64 %132, %133
  %135 = sdiv exact i64 %134, 8
  %136 = load i64*, i64** %9, align 8
  store i64 %135, i64* %136, align 8
  %137 = load i32, i32* @CERTIFICATE_VERIFY, align 4
  %138 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %139 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 4
  store i32 0, i32* %5, align 4
  br label %140

140:                                              ; preds = %129, %128, %113, %71, %55, %34, %20
  %141 = load i32, i32* %5, align 4
  ret i32 %141
}

declare dso_local i32 @tlsv1_server_log(%struct.tlsv1_server*, i8*, ...) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i64 @WPA_GET_BE24(i64*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local %struct.tls_cipher_suite* @tls_get_cipher_suite(i32) #1

declare dso_local i64 @tls_process_client_key_exchange_dh(%struct.tlsv1_server*, i64*, i64*) #1

declare dso_local i64 @tls_process_client_key_exchange_rsa(%struct.tlsv1_server*, i64*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
