; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_process_server_key_exchange.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_process_server_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.tls_cipher_suite = type { i64 }

@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"TLSv1: Expected Handshake; received content type 0x%x\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"TLSv1: Too short ServerKeyExchange (Left=%lu)\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [66 x i8] c"TLSv1: Mismatch in ServerKeyExchange length (len=%lu != left=%lu)\00", align 1
@TLS_CONN_REQUEST_OCSP = common dso_local global i32 0, align 4
@TLS_HANDSHAKE_TYPE_CERTIFICATE_STATUS = common dso_local global i64 0, align 8
@TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST = common dso_local global i64 0, align 8
@TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE = common dso_local global i64 0, align 8
@TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [114 x i8] c"TLSv1: Received unexpected handshake message %d (expected ServerKeyExchange/CertificateRequest/ServerHelloDone%s)\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"/CertificateStatus\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"TLSv1: Received ServerKeyExchange\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"TLSv1: ServerKeyExchange not allowed with the selected cipher suite\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"TLSv1: ServerKeyExchange\00", align 1
@TLS_KEY_X_DH_anon = common dso_local global i64 0, align 8
@TLS_KEY_X_DHE_RSA = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"TLSv1: UnexpectedServerKeyExchange\00", align 1
@SERVER_CERTIFICATE_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i64, i64*, i64*)* @tls_process_server_key_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_server_key_exchange(%struct.tlsv1_client* %0, i64 %1, i64* %2, i64* %3) #0 {
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
  %15 = alloca %struct.tls_cipher_suite*, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @TLS_CONTENT_TYPE_HANDSHAKE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %4
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = load i64, i64* %7, align 8
  %22 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %21)
  %23 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %24 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %25 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %26 = call i32 @tls_alert(%struct.tlsv1_client* %23, i32 %24, i32 %25)
  store i32 -1, i32* %5, align 4
  br label %196

27:                                               ; preds = %4
  %28 = load i64*, i64** %8, align 8
  store i64* %28, i64** %10, align 8
  %29 = load i64*, i64** %9, align 8
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %12, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp ult i64 %31, 4
  br i1 %32, label %33, label %41

33:                                               ; preds = %27
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load i64, i64* %12, align 8
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %35)
  %37 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %38 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %39 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %40 = call i32 @tls_alert(%struct.tlsv1_client* %37, i32 %38, i32 %39)
  store i32 -1, i32* %5, align 4
  br label %196

41:                                               ; preds = %27
  %42 = load i64*, i64** %10, align 8
  %43 = getelementptr inbounds i64, i64* %42, i32 1
  store i64* %43, i64** %10, align 8
  %44 = load i64, i64* %42, align 8
  store i64 %44, i64* %14, align 8
  %45 = load i64*, i64** %10, align 8
  %46 = call i64 @WPA_GET_BE24(i64* %45)
  store i64 %46, i64* %13, align 8
  %47 = load i64*, i64** %10, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 3
  store i64* %48, i64** %10, align 8
  %49 = load i64, i64* %12, align 8
  %50 = sub i64 %49, 4
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %12, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %41
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load i64, i64* %13, align 8
  %57 = load i64, i64* %12, align 8
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.2, i64 0, i64 0), i64 %56, i64 %57)
  %59 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %60 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %61 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %62 = call i32 @tls_alert(%struct.tlsv1_client* %59, i32 %60, i32 %61)
  store i32 -1, i32* %5, align 4
  br label %196

63:                                               ; preds = %41
  %64 = load i64*, i64** %10, align 8
  %65 = load i64, i64* %13, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  store i64* %66, i64** %11, align 8
  %67 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %68 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @TLS_CONN_REQUEST_OCSP, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %63
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* @TLS_HANDSHAKE_TYPE_CERTIFICATE_STATUS, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %79 = load i64, i64* %7, align 8
  %80 = load i64*, i64** %8, align 8
  %81 = load i64*, i64** %9, align 8
  %82 = call i32 @tls_process_certificate_status(%struct.tlsv1_client* %78, i64 %79, i64* %80, i64* %81)
  store i32 %82, i32* %5, align 4
  br label %196

83:                                               ; preds = %73, %63
  %84 = load i64, i64* %14, align 8
  %85 = load i64, i64* @TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %83
  %88 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %89 = load i64, i64* %7, align 8
  %90 = load i64*, i64** %8, align 8
  %91 = load i64*, i64** %9, align 8
  %92 = call i32 @tls_process_certificate_request(%struct.tlsv1_client* %88, i64 %89, i64* %90, i64* %91)
  store i32 %92, i32* %5, align 4
  br label %196

93:                                               ; preds = %83
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* @TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %93
  %98 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64*, i64** %8, align 8
  %101 = load i64*, i64** %9, align 8
  %102 = call i32 @tls_process_server_hello_done(%struct.tlsv1_client* %98, i64 %99, i64* %100, i64* %101)
  store i32 %102, i32* %5, align 4
  br label %196

103:                                              ; preds = %93
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* @TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %103
  %108 = load i32, i32* @MSG_DEBUG, align 4
  %109 = load i64, i64* %14, align 8
  %110 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %111 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @TLS_CONN_REQUEST_OCSP, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0)
  %118 = call i32 (i32, i8*, ...) @wpa_printf(i32 %108, i8* getelementptr inbounds ([114 x i8], [114 x i8]* @.str.3, i64 0, i64 0), i64 %109, i8* %117)
  %119 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %120 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %121 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %122 = call i32 @tls_alert(%struct.tlsv1_client* %119, i32 %120, i32 %121)
  store i32 -1, i32* %5, align 4
  br label %196

123:                                              ; preds = %103
  %124 = load i32, i32* @MSG_DEBUG, align 4
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %124, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %126 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %127 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @tls_server_key_exchange_allowed(i32 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %139, label %132

132:                                              ; preds = %123
  %133 = load i32, i32* @MSG_DEBUG, align 4
  %134 = call i32 (i32, i8*, ...) @wpa_printf(i32 %133, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0))
  %135 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %136 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %137 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %138 = call i32 @tls_alert(%struct.tlsv1_client* %135, i32 %136, i32 %137)
  store i32 -1, i32* %5, align 4
  br label %196

139:                                              ; preds = %123
  %140 = load i32, i32* @MSG_DEBUG, align 4
  %141 = load i64*, i64** %10, align 8
  %142 = load i64, i64* %13, align 8
  %143 = call i32 @wpa_hexdump(i32 %140, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64* %141, i64 %142)
  %144 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %145 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call %struct.tls_cipher_suite* @tls_get_cipher_suite(i32 %147)
  store %struct.tls_cipher_suite* %148, %struct.tls_cipher_suite** %15, align 8
  %149 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %15, align 8
  %150 = icmp ne %struct.tls_cipher_suite* %149, null
  br i1 %150, label %151, label %178

151:                                              ; preds = %139
  %152 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %15, align 8
  %153 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @TLS_KEY_X_DH_anon, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %163, label %157

157:                                              ; preds = %151
  %158 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %15, align 8
  %159 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @TLS_KEY_X_DHE_RSA, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %178

163:                                              ; preds = %157, %151
  %164 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %165 = load i64*, i64** %10, align 8
  %166 = load i64, i64* %13, align 8
  %167 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %15, align 8
  %168 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = call i64 @tlsv1_process_diffie_hellman(%struct.tlsv1_client* %164, i64* %165, i64 %166, i64 %169)
  %171 = icmp slt i64 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %163
  %173 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %174 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %175 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %176 = call i32 @tls_alert(%struct.tlsv1_client* %173, i32 %174, i32 %175)
  store i32 -1, i32* %5, align 4
  br label %196

177:                                              ; preds = %163
  br label %185

178:                                              ; preds = %157, %139
  %179 = load i32, i32* @MSG_DEBUG, align 4
  %180 = call i32 (i32, i8*, ...) @wpa_printf(i32 %179, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0))
  %181 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %182 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %183 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %184 = call i32 @tls_alert(%struct.tlsv1_client* %181, i32 %182, i32 %183)
  store i32 -1, i32* %5, align 4
  br label %196

185:                                              ; preds = %177
  %186 = load i64*, i64** %11, align 8
  %187 = load i64*, i64** %8, align 8
  %188 = ptrtoint i64* %186 to i64
  %189 = ptrtoint i64* %187 to i64
  %190 = sub i64 %188, %189
  %191 = sdiv exact i64 %190, 8
  %192 = load i64*, i64** %9, align 8
  store i64 %191, i64* %192, align 8
  %193 = load i32, i32* @SERVER_CERTIFICATE_REQUEST, align 4
  %194 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %195 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %194, i32 0, i32 1
  store i32 %193, i32* %195, align 4
  store i32 0, i32* %5, align 4
  br label %196

196:                                              ; preds = %185, %178, %172, %132, %107, %97, %87, %77, %54, %33, %19
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i64 @WPA_GET_BE24(i64*) #1

declare dso_local i32 @tls_process_certificate_status(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_certificate_request(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_server_hello_done(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @tls_server_key_exchange_allowed(i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local %struct.tls_cipher_suite* @tls_get_cipher_suite(i32) #1

declare dso_local i64 @tlsv1_process_diffie_hellman(%struct.tlsv1_client*, i64*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
