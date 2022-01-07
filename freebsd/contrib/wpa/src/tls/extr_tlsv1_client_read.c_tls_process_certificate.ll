; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_process_certificate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tls_process_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, i32, %struct.x509_certificate*, %struct.TYPE_4__*, i32, i32 (i32, i32, %union.tls_event_data*)*, i32 }
%struct.x509_certificate = type { i32, i32, i32, i32, i32, %struct.x509_certificate* }
%struct.TYPE_4__ = type { i64, i32, i64, i64, i32 }
%union.tls_event_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8*, i32 }

@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"TLSv1: Expected Handshake; received content type 0x%x\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"TLSv1: Too short Certificate message (len=%lu)\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [67 x i8] c"TLSv1: Unexpected Certificate message length (len=%lu != left=%lu)\00", align 1
@TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE = common dso_local global i64 0, align 8
@TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST = common dso_local global i64 0, align 8
@TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE = common dso_local global i64 0, align 8
@TLS_HANDSHAKE_TYPE_CERTIFICATE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [124 x i8] c"TLSv1: Received unexpected handshake message %d (expected Certificate/ServerKeyExchange/CertificateRequest/ServerHelloDone)\00", align 1
@.str.4 = private unnamed_addr constant [55 x i8] c"TLSv1: Received Certificate (certificate_list len %lu)\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"TLSv1: Too short Certificate (left=%lu)\00", align 1
@.str.6 = private unnamed_addr constant [61 x i8] c"TLSv1: Unexpected certificate_list length (len=%lu left=%lu)\00", align 1
@.str.7 = private unnamed_addr constant [40 x i8] c"TLSv1: Failed to parse certificate_list\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"TLSv1: Unexpected certificate length (len=%lu left=%lu)\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"TLSv1: Certificate %lu (len %lu)\00", align 1
@.str.10 = private unnamed_addr constant [39 x i8] c"TLSv1: Failed to parse the certificate\00", align 1
@TLS_ALERT_BAD_CERTIFICATE = common dso_local global i32 0, align 4
@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [40 x i8] c"TLSv1: Validate server certificate hash\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"TLSv1: 0: %s\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"TLSv1: Server certificate hash mismatch\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [19 x i8] c"TLSv1: SHA256 hash\00", align 1
@TLS_FAIL_UNSPECIFIED = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [28 x i8] c"Server certificate mismatch\00", align 1
@TLS_CERT_CHAIN_FAILURE = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [52 x i8] c"TLSv1: Reject server certificate on probe-only rune\00", align 1
@TLS_FAIL_SERVER_CHAIN_PROBE = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [31 x i8] c"Server certificate chain probe\00", align 1
@TLS_CONN_DISABLE_TIME_CHECKS = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [62 x i8] c"TLSv1: Server certificate chain validation failed (reason=%d)\00", align 1
@TLS_FAIL_BAD_CERTIFICATE = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [16 x i8] c"bad certificate\00", align 1
@TLS_ALERT_UNSUPPORTED_CERTIFICATE = common dso_local global i32 0, align 4
@TLS_ALERT_CERTIFICATE_REVOKED = common dso_local global i32 0, align 4
@TLS_FAIL_REVOKED = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [20 x i8] c"certificate revoked\00", align 1
@TLS_ALERT_CERTIFICATE_EXPIRED = common dso_local global i32 0, align 4
@TLS_FAIL_EXPIRED = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [44 x i8] c"certificate has expired or is not yet valid\00", align 1
@TLS_ALERT_CERTIFICATE_UNKNOWN = common dso_local global i32 0, align 4
@TLS_ALERT_UNKNOWN_CA = common dso_local global i32 0, align 4
@TLS_FAIL_UNTRUSTED = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [11 x i8] c"unknown CA\00", align 1
@X509_EXT_EXT_KEY_USAGE = common dso_local global i32 0, align 4
@X509_EXT_KEY_USAGE_ANY = common dso_local global i32 0, align 4
@X509_EXT_KEY_USAGE_SERVER_AUTH = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [50 x i8] c"certificate not allowed for server authentication\00", align 1
@TLS_CONN_REQUEST_OCSP = common dso_local global i32 0, align 4
@SERVER_KEY_EXCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i64, i64*, i64*)* @tls_process_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_certificate(%struct.tlsv1_client* %0, i64 %1, i64* %2, i64* %3) #0 {
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
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.x509_certificate*, align 8
  %19 = alloca %struct.x509_certificate*, align 8
  %20 = alloca %struct.x509_certificate*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca [128 x i8], align 16
  %25 = alloca %union.tls_event_data, align 8
  %26 = alloca i32, align 4
  %27 = alloca %union.tls_event_data, align 8
  %28 = alloca [128 x i8], align 16
  %29 = alloca i32, align 4
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.x509_certificate* null, %struct.x509_certificate** %18, align 8
  store %struct.x509_certificate* null, %struct.x509_certificate** %19, align 8
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @TLS_CONTENT_TYPE_HANDSHAKE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %4
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load i64, i64* %7, align 8
  %36 = call i32 (i32, i8*, ...) @wpa_printf(i32 %34, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %38 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %39 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %40 = call i32 @tls_alert(%struct.tlsv1_client* %37, i32 %38, i32 %39)
  store i32 -1, i32* %5, align 4
  br label %563

41:                                               ; preds = %4
  %42 = load i64*, i64** %8, align 8
  store i64* %42, i64** %10, align 8
  %43 = load i64*, i64** %9, align 8
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = icmp ult i64 %45, 4
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = load i64, i64* %12, align 8
  %50 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %49)
  %51 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %52 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %53 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %54 = call i32 @tls_alert(%struct.tlsv1_client* %51, i32 %52, i32 %53)
  store i32 -1, i32* %5, align 4
  br label %563

55:                                               ; preds = %41
  %56 = load i64*, i64** %10, align 8
  %57 = getelementptr inbounds i64, i64* %56, i32 1
  store i64* %57, i64** %10, align 8
  %58 = load i64, i64* %56, align 8
  store i64 %58, i64* %17, align 8
  %59 = load i64*, i64** %10, align 8
  %60 = call i64 @WPA_GET_BE24(i64* %59)
  store i64 %60, i64* %13, align 8
  %61 = load i64*, i64** %10, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 3
  store i64* %62, i64** %10, align 8
  %63 = load i64, i64* %12, align 8
  %64 = sub i64 %63, 4
  store i64 %64, i64* %12, align 8
  %65 = load i64, i64* %13, align 8
  %66 = load i64, i64* %12, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %77

68:                                               ; preds = %55
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = load i64, i64* %13, align 8
  %71 = load i64, i64* %12, align 8
  %72 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i64 %70, i64 %71)
  %73 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %74 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %75 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %76 = call i32 @tls_alert(%struct.tlsv1_client* %73, i32 %74, i32 %75)
  store i32 -1, i32* %5, align 4
  br label %563

77:                                               ; preds = %55
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* @TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %87

81:                                               ; preds = %77
  %82 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load i64*, i64** %8, align 8
  %85 = load i64*, i64** %9, align 8
  %86 = call i32 @tls_process_server_key_exchange(%struct.tlsv1_client* %82, i64 %83, i64* %84, i64* %85)
  store i32 %86, i32* %5, align 4
  br label %563

87:                                               ; preds = %77
  %88 = load i64, i64* %17, align 8
  %89 = load i64, i64* @TLS_HANDSHAKE_TYPE_CERTIFICATE_REQUEST, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %93 = load i64, i64* %7, align 8
  %94 = load i64*, i64** %8, align 8
  %95 = load i64*, i64** %9, align 8
  %96 = call i32 @tls_process_certificate_request(%struct.tlsv1_client* %92, i64 %93, i64* %94, i64* %95)
  store i32 %96, i32* %5, align 4
  br label %563

97:                                               ; preds = %87
  %98 = load i64, i64* %17, align 8
  %99 = load i64, i64* @TLS_HANDSHAKE_TYPE_SERVER_HELLO_DONE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %97
  %102 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %103 = load i64, i64* %7, align 8
  %104 = load i64*, i64** %8, align 8
  %105 = load i64*, i64** %9, align 8
  %106 = call i32 @tls_process_server_hello_done(%struct.tlsv1_client* %102, i64 %103, i64* %104, i64* %105)
  store i32 %106, i32* %5, align 4
  br label %563

107:                                              ; preds = %97
  %108 = load i64, i64* %17, align 8
  %109 = load i64, i64* @TLS_HANDSHAKE_TYPE_CERTIFICATE, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %107
  %112 = load i32, i32* @MSG_DEBUG, align 4
  %113 = load i64, i64* %17, align 8
  %114 = call i32 (i32, i8*, ...) @wpa_printf(i32 %112, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i64 0, i64 0), i64 %113)
  %115 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %116 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %117 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %118 = call i32 @tls_alert(%struct.tlsv1_client* %115, i32 %116, i32 %117)
  store i32 -1, i32* %5, align 4
  br label %563

119:                                              ; preds = %107
  %120 = load i32, i32* @MSG_DEBUG, align 4
  %121 = load i64, i64* %13, align 8
  %122 = call i32 (i32, i8*, ...) @wpa_printf(i32 %120, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i64 %121)
  %123 = load i64*, i64** %10, align 8
  %124 = load i64, i64* %13, align 8
  %125 = getelementptr inbounds i64, i64* %123, i64 %124
  store i64* %125, i64** %11, align 8
  %126 = load i64*, i64** %11, align 8
  %127 = load i64*, i64** %10, align 8
  %128 = ptrtoint i64* %126 to i64
  %129 = ptrtoint i64* %127 to i64
  %130 = sub i64 %128, %129
  %131 = sdiv exact i64 %130, 8
  %132 = icmp slt i64 %131, 3
  br i1 %132, label %133, label %141

133:                                              ; preds = %119
  %134 = load i32, i32* @MSG_DEBUG, align 4
  %135 = load i64, i64* %12, align 8
  %136 = call i32 (i32, i8*, ...) @wpa_printf(i32 %134, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i64 %135)
  %137 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %138 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %139 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %140 = call i32 @tls_alert(%struct.tlsv1_client* %137, i32 %138, i32 %139)
  store i32 -1, i32* %5, align 4
  br label %563

141:                                              ; preds = %119
  %142 = load i64*, i64** %10, align 8
  %143 = call i64 @WPA_GET_BE24(i64* %142)
  store i64 %143, i64* %14, align 8
  %144 = load i64*, i64** %10, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 3
  store i64* %145, i64** %10, align 8
  %146 = load i64*, i64** %11, align 8
  %147 = load i64*, i64** %10, align 8
  %148 = ptrtoint i64* %146 to i64
  %149 = ptrtoint i64* %147 to i64
  %150 = sub i64 %148, %149
  %151 = sdiv exact i64 %150, 8
  %152 = load i64, i64* %14, align 8
  %153 = icmp ne i64 %151, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %141
  %155 = load i32, i32* @MSG_DEBUG, align 4
  %156 = load i64, i64* %14, align 8
  %157 = load i64*, i64** %11, align 8
  %158 = load i64*, i64** %10, align 8
  %159 = ptrtoint i64* %157 to i64
  %160 = ptrtoint i64* %158 to i64
  %161 = sub i64 %159, %160
  %162 = sdiv exact i64 %161, 8
  %163 = call i32 (i32, i8*, ...) @wpa_printf(i32 %155, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.6, i64 0, i64 0), i64 %156, i64 %162)
  %164 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %165 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %166 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %167 = call i32 @tls_alert(%struct.tlsv1_client* %164, i32 %165, i32 %166)
  store i32 -1, i32* %5, align 4
  br label %563

168:                                              ; preds = %141
  store i64 0, i64* %16, align 8
  br label %169

169:                                              ; preds = %275, %168
  %170 = load i64*, i64** %10, align 8
  %171 = load i64*, i64** %11, align 8
  %172 = icmp ult i64* %170, %171
  br i1 %172, label %173, label %282

173:                                              ; preds = %169
  %174 = load i64*, i64** %11, align 8
  %175 = load i64*, i64** %10, align 8
  %176 = ptrtoint i64* %174 to i64
  %177 = ptrtoint i64* %175 to i64
  %178 = sub i64 %176, %177
  %179 = sdiv exact i64 %178, 8
  %180 = icmp slt i64 %179, 3
  br i1 %180, label %181, label %190

181:                                              ; preds = %173
  %182 = load i32, i32* @MSG_DEBUG, align 4
  %183 = call i32 (i32, i8*, ...) @wpa_printf(i32 %182, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.7, i64 0, i64 0))
  %184 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %185 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %186 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %187 = call i32 @tls_alert(%struct.tlsv1_client* %184, i32 %185, i32 %186)
  %188 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %189 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %188)
  store i32 -1, i32* %5, align 4
  br label %563

190:                                              ; preds = %173
  %191 = load i64*, i64** %10, align 8
  %192 = call i64 @WPA_GET_BE24(i64* %191)
  store i64 %192, i64* %15, align 8
  %193 = load i64*, i64** %10, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 3
  store i64* %194, i64** %10, align 8
  %195 = load i64*, i64** %11, align 8
  %196 = load i64*, i64** %10, align 8
  %197 = ptrtoint i64* %195 to i64
  %198 = ptrtoint i64* %196 to i64
  %199 = sub i64 %197, %198
  %200 = sdiv exact i64 %199, 8
  %201 = load i64, i64* %15, align 8
  %202 = icmp ult i64 %200, %201
  br i1 %202, label %203, label %219

203:                                              ; preds = %190
  %204 = load i32, i32* @MSG_DEBUG, align 4
  %205 = load i64, i64* %15, align 8
  %206 = load i64*, i64** %11, align 8
  %207 = load i64*, i64** %10, align 8
  %208 = ptrtoint i64* %206 to i64
  %209 = ptrtoint i64* %207 to i64
  %210 = sub i64 %208, %209
  %211 = sdiv exact i64 %210, 8
  %212 = call i32 (i32, i8*, ...) @wpa_printf(i32 %204, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.8, i64 0, i64 0), i64 %205, i64 %211)
  %213 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %214 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %215 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %216 = call i32 @tls_alert(%struct.tlsv1_client* %213, i32 %214, i32 %215)
  %217 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %218 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %217)
  store i32 -1, i32* %5, align 4
  br label %563

219:                                              ; preds = %190
  %220 = load i32, i32* @MSG_DEBUG, align 4
  %221 = load i64, i64* %16, align 8
  %222 = load i64, i64* %15, align 8
  %223 = call i32 (i32, i8*, ...) @wpa_printf(i32 %220, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i64 %221, i64 %222)
  %224 = load i64, i64* %16, align 8
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %247

226:                                              ; preds = %219
  %227 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %228 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %227, i32 0, i32 6
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @crypto_public_key_free(i32 %229)
  %231 = load i64*, i64** %10, align 8
  %232 = load i64, i64* %15, align 8
  %233 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %234 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %233, i32 0, i32 6
  %235 = call i64 @tls_parse_cert(i64* %231, i64 %232, i32* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %226
  %238 = load i32, i32* @MSG_DEBUG, align 4
  %239 = call i32 (i32, i8*, ...) @wpa_printf(i32 %238, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %240 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %241 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %242 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE, align 4
  %243 = call i32 @tls_alert(%struct.tlsv1_client* %240, i32 %241, i32 %242)
  %244 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %245 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %244)
  store i32 -1, i32* %5, align 4
  br label %563

246:                                              ; preds = %226
  br label %247

247:                                              ; preds = %246, %219
  %248 = load i64*, i64** %10, align 8
  %249 = load i64, i64* %15, align 8
  %250 = call %struct.x509_certificate* @x509_certificate_parse(i64* %248, i64 %249)
  store %struct.x509_certificate* %250, %struct.x509_certificate** %20, align 8
  %251 = load %struct.x509_certificate*, %struct.x509_certificate** %20, align 8
  %252 = icmp eq %struct.x509_certificate* %251, null
  br i1 %252, label %253, label %262

253:                                              ; preds = %247
  %254 = load i32, i32* @MSG_DEBUG, align 4
  %255 = call i32 (i32, i8*, ...) @wpa_printf(i32 %254, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.10, i64 0, i64 0))
  %256 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %257 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %258 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE, align 4
  %259 = call i32 @tls_alert(%struct.tlsv1_client* %256, i32 %257, i32 %258)
  %260 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %261 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %260)
  store i32 -1, i32* %5, align 4
  br label %563

262:                                              ; preds = %247
  %263 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %264 = load i64, i64* %16, align 8
  %265 = load %struct.x509_certificate*, %struct.x509_certificate** %20, align 8
  %266 = call i32 @tls_peer_cert_event(%struct.tlsv1_client* %263, i64 %264, %struct.x509_certificate* %265)
  %267 = load %struct.x509_certificate*, %struct.x509_certificate** %19, align 8
  %268 = icmp eq %struct.x509_certificate* %267, null
  br i1 %268, label %269, label %271

269:                                              ; preds = %262
  %270 = load %struct.x509_certificate*, %struct.x509_certificate** %20, align 8
  store %struct.x509_certificate* %270, %struct.x509_certificate** %18, align 8
  br label %275

271:                                              ; preds = %262
  %272 = load %struct.x509_certificate*, %struct.x509_certificate** %20, align 8
  %273 = load %struct.x509_certificate*, %struct.x509_certificate** %19, align 8
  %274 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %273, i32 0, i32 5
  store %struct.x509_certificate* %272, %struct.x509_certificate** %274, align 8
  br label %275

275:                                              ; preds = %271, %269
  %276 = load %struct.x509_certificate*, %struct.x509_certificate** %20, align 8
  store %struct.x509_certificate* %276, %struct.x509_certificate** %19, align 8
  %277 = load i64, i64* %16, align 8
  %278 = add i64 %277, 1
  store i64 %278, i64* %16, align 8
  %279 = load i64, i64* %15, align 8
  %280 = load i64*, i64** %10, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 %279
  store i64* %281, i64** %10, align 8
  br label %169

282:                                              ; preds = %169
  %283 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %284 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %283, i32 0, i32 3
  %285 = load %struct.TYPE_4__*, %struct.TYPE_4__** %284, align 8
  %286 = icmp ne %struct.TYPE_4__* %285, null
  br i1 %286, label %287, label %366

287:                                              ; preds = %282
  %288 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %289 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %288, i32 0, i32 3
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i32 0, i32 0
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %366

294:                                              ; preds = %287
  %295 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %296 = icmp ne %struct.x509_certificate* %295, null
  br i1 %296, label %297, label %366

297:                                              ; preds = %294
  %298 = load i32, i32* @SHA256_MAC_LEN, align 4
  %299 = zext i32 %298 to i64
  %300 = call i8* @llvm.stacksave()
  store i8* %300, i8** %22, align 8
  %301 = alloca i64, i64 %299, align 16
  store i64 %299, i64* %23, align 8
  %302 = load i32, i32* @MSG_DEBUG, align 4
  %303 = call i32 (i32, i8*, ...) @wpa_printf(i32 %302, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i64 0, i64 0))
  %304 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %305 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %304, i32 0, i32 2
  %306 = getelementptr inbounds [128 x i8], [128 x i8]* %24, i64 0, i64 0
  %307 = call i32 @x509_name_string(i32* %305, i8* %306, i32 128)
  %308 = load i32, i32* @MSG_DEBUG, align 4
  %309 = getelementptr inbounds [128 x i8], [128 x i8]* %24, i64 0, i64 0
  %310 = call i32 (i32, i8*, ...) @wpa_printf(i32 %308, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i64 0, i64 0), i8* %309)
  %311 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %312 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %311, i32 0, i32 4
  %313 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %314 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %313, i32 0, i32 3
  %315 = call i64 @sha256_vector(i32 1, i32* %312, i32* %314, i64* %301)
  %316 = icmp slt i64 %315, 0
  br i1 %316, label %326, label %317

317:                                              ; preds = %297
  %318 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %319 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %318, i32 0, i32 3
  %320 = load %struct.TYPE_4__*, %struct.TYPE_4__** %319, align 8
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 4
  %322 = load i32, i32* %321, align 8
  %323 = load i32, i32* @SHA256_MAC_LEN, align 4
  %324 = call i64 @os_memcmp(i32 %322, i64* %301, i32 %323)
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %361

326:                                              ; preds = %317, %297
  %327 = load i32, i32* @MSG_DEBUG, align 4
  %328 = call i32 (i32, i8*, ...) @wpa_printf(i32 %327, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0))
  %329 = load i32, i32* @MSG_MSGDUMP, align 4
  %330 = load i32, i32* @SHA256_MAC_LEN, align 4
  %331 = call i32 @wpa_hexdump(i32 %329, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i64 0, i64 0), i64* %301, i32 %330)
  %332 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %333 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %332, i32 0, i32 5
  %334 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %333, align 8
  %335 = icmp ne i32 (i32, i32, %union.tls_event_data*)* %334, null
  br i1 %335, label %336, label %354

336:                                              ; preds = %326
  %337 = call i32 @os_memset(%union.tls_event_data* %25, i32 0, i32 24)
  %338 = load i32, i32* @TLS_FAIL_UNSPECIFIED, align 4
  %339 = bitcast %union.tls_event_data* %25 to %struct.TYPE_3__*
  %340 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %339, i32 0, i32 2
  store i32 %338, i32* %340, align 8
  %341 = bitcast %union.tls_event_data* %25 to %struct.TYPE_3__*
  %342 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %341, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.15, i64 0, i64 0), i8** %342, align 8
  %343 = getelementptr inbounds [128 x i8], [128 x i8]* %24, i64 0, i64 0
  %344 = bitcast %union.tls_event_data* %25 to %struct.TYPE_3__*
  %345 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %344, i32 0, i32 1
  store i8* %343, i8** %345, align 8
  %346 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %347 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %346, i32 0, i32 5
  %348 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %347, align 8
  %349 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %350 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %349, i32 0, i32 4
  %351 = load i32, i32* %350, align 8
  %352 = load i32, i32* @TLS_CERT_CHAIN_FAILURE, align 4
  %353 = call i32 %348(i32 %351, i32 %352, %union.tls_event_data* %25)
  br label %354

354:                                              ; preds = %336, %326
  %355 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %356 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %357 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE, align 4
  %358 = call i32 @tls_alert(%struct.tlsv1_client* %355, i32 %356, i32 %357)
  %359 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %360 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %359)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %26, align 4
  br label %362

361:                                              ; preds = %317
  store i32 0, i32* %26, align 4
  br label %362

362:                                              ; preds = %361, %354
  %363 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %363)
  %364 = load i32, i32* %26, align 4
  switch i32 %364, label %565 [
    i32 0, label %365
    i32 1, label %563
  ]

365:                                              ; preds = %362
  br label %492

366:                                              ; preds = %294, %287, %282
  %367 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %368 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %367, i32 0, i32 3
  %369 = load %struct.TYPE_4__*, %struct.TYPE_4__** %368, align 8
  %370 = icmp ne %struct.TYPE_4__* %369, null
  br i1 %370, label %371, label %418

371:                                              ; preds = %366
  %372 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %373 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %372, i32 0, i32 3
  %374 = load %struct.TYPE_4__*, %struct.TYPE_4__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %374, i32 0, i32 3
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %418

378:                                              ; preds = %371
  %379 = load i32, i32* @MSG_DEBUG, align 4
  %380 = call i32 (i32, i8*, ...) @wpa_printf(i32 %379, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i64 0, i64 0))
  %381 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %382 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %381, i32 0, i32 5
  %383 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %382, align 8
  %384 = icmp ne i32 (i32, i32, %union.tls_event_data*)* %383, null
  br i1 %384, label %385, label %411

385:                                              ; preds = %378
  %386 = call i32 @os_memset(%union.tls_event_data* %27, i32 0, i32 24)
  %387 = load i32, i32* @TLS_FAIL_SERVER_CHAIN_PROBE, align 4
  %388 = bitcast %union.tls_event_data* %27 to %struct.TYPE_3__*
  %389 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %388, i32 0, i32 2
  store i32 %387, i32* %389, align 8
  %390 = bitcast %union.tls_event_data* %27 to %struct.TYPE_3__*
  %391 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %390, i32 0, i32 0
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8** %391, align 8
  %392 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %393 = icmp ne %struct.x509_certificate* %392, null
  br i1 %393, label %394, label %402

394:                                              ; preds = %385
  %395 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %396 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %395, i32 0, i32 2
  %397 = getelementptr inbounds [128 x i8], [128 x i8]* %28, i64 0, i64 0
  %398 = call i32 @x509_name_string(i32* %396, i8* %397, i32 128)
  %399 = getelementptr inbounds [128 x i8], [128 x i8]* %28, i64 0, i64 0
  %400 = bitcast %union.tls_event_data* %27 to %struct.TYPE_3__*
  %401 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %400, i32 0, i32 1
  store i8* %399, i8** %401, align 8
  br label %402

402:                                              ; preds = %394, %385
  %403 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %404 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %403, i32 0, i32 5
  %405 = load i32 (i32, i32, %union.tls_event_data*)*, i32 (i32, i32, %union.tls_event_data*)** %404, align 8
  %406 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %407 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %406, i32 0, i32 4
  %408 = load i32, i32* %407, align 8
  %409 = load i32, i32* @TLS_CERT_CHAIN_FAILURE, align 4
  %410 = call i32 %405(i32 %408, i32 %409, %union.tls_event_data* %27)
  br label %411

411:                                              ; preds = %402, %378
  %412 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %413 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %414 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE, align 4
  %415 = call i32 @tls_alert(%struct.tlsv1_client* %412, i32 %413, i32 %414)
  %416 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %417 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %416)
  store i32 -1, i32* %5, align 4
  br label %563

418:                                              ; preds = %371, %366
  %419 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %420 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %419, i32 0, i32 3
  %421 = load %struct.TYPE_4__*, %struct.TYPE_4__** %420, align 8
  %422 = icmp ne %struct.TYPE_4__* %421, null
  br i1 %422, label %423, label %490

423:                                              ; preds = %418
  %424 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %425 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %424, i32 0, i32 3
  %426 = load %struct.TYPE_4__*, %struct.TYPE_4__** %425, align 8
  %427 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %426, i32 0, i32 2
  %428 = load i64, i64* %427, align 8
  %429 = icmp ne i64 %428, 0
  br i1 %429, label %430, label %490

430:                                              ; preds = %423
  %431 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %432 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %431, i32 0, i32 3
  %433 = load %struct.TYPE_4__*, %struct.TYPE_4__** %432, align 8
  %434 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 8
  %436 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %437 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %438 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %437, i32 0, i32 0
  %439 = load i32, i32* %438, align 8
  %440 = load i32, i32* @TLS_CONN_DISABLE_TIME_CHECKS, align 4
  %441 = and i32 %439, %440
  %442 = icmp ne i32 %441, 0
  %443 = xor i1 %442, true
  %444 = xor i1 %443, true
  %445 = zext i1 %444 to i32
  %446 = call i64 @x509_certificate_chain_validate(i32 %435, %struct.x509_certificate* %436, i32* %21, i32 %445)
  %447 = icmp slt i64 %446, 0
  br i1 %447, label %448, label %490

448:                                              ; preds = %430
  %449 = load i32, i32* @MSG_DEBUG, align 4
  %450 = load i32, i32* %21, align 4
  %451 = call i32 (i32, i8*, ...) @wpa_printf(i32 %449, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.18, i64 0, i64 0), i32 %450)
  %452 = load i32, i32* %21, align 4
  switch i32 %452, label %481 [
    i32 133, label %453
    i32 128, label %459
    i32 131, label %461
    i32 132, label %467
    i32 130, label %473
    i32 129, label %475
  ]

453:                                              ; preds = %448
  %454 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE, align 4
  store i32 %454, i32* %29, align 4
  %455 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %456 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %457 = load i32, i32* @TLS_FAIL_BAD_CERTIFICATE, align 4
  %458 = call i32 @tls_cert_chain_failure_event(%struct.tlsv1_client* %455, i32 0, %struct.x509_certificate* %456, i32 %457, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  br label %483

459:                                              ; preds = %448
  %460 = load i32, i32* @TLS_ALERT_UNSUPPORTED_CERTIFICATE, align 4
  store i32 %460, i32* %29, align 4
  br label %483

461:                                              ; preds = %448
  %462 = load i32, i32* @TLS_ALERT_CERTIFICATE_REVOKED, align 4
  store i32 %462, i32* %29, align 4
  %463 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %464 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %465 = load i32, i32* @TLS_FAIL_REVOKED, align 4
  %466 = call i32 @tls_cert_chain_failure_event(%struct.tlsv1_client* %463, i32 0, %struct.x509_certificate* %464, i32 %465, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0))
  br label %483

467:                                              ; preds = %448
  %468 = load i32, i32* @TLS_ALERT_CERTIFICATE_EXPIRED, align 4
  store i32 %468, i32* %29, align 4
  %469 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %470 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %471 = load i32, i32* @TLS_FAIL_EXPIRED, align 4
  %472 = call i32 @tls_cert_chain_failure_event(%struct.tlsv1_client* %469, i32 0, %struct.x509_certificate* %470, i32 %471, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.21, i64 0, i64 0))
  br label %483

473:                                              ; preds = %448
  %474 = load i32, i32* @TLS_ALERT_CERTIFICATE_UNKNOWN, align 4
  store i32 %474, i32* %29, align 4
  br label %483

475:                                              ; preds = %448
  %476 = load i32, i32* @TLS_ALERT_UNKNOWN_CA, align 4
  store i32 %476, i32* %29, align 4
  %477 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %478 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %479 = load i32, i32* @TLS_FAIL_UNTRUSTED, align 4
  %480 = call i32 @tls_cert_chain_failure_event(%struct.tlsv1_client* %477, i32 0, %struct.x509_certificate* %478, i32 %479, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0))
  br label %483

481:                                              ; preds = %448
  %482 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE, align 4
  store i32 %482, i32* %29, align 4
  br label %483

483:                                              ; preds = %481, %475, %473, %467, %461, %459, %453
  %484 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %485 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %486 = load i32, i32* %29, align 4
  %487 = call i32 @tls_alert(%struct.tlsv1_client* %484, i32 %485, i32 %486)
  %488 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %489 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %488)
  store i32 -1, i32* %5, align 4
  br label %563

490:                                              ; preds = %430, %423, %418
  br label %491

491:                                              ; preds = %490
  br label %492

492:                                              ; preds = %491, %365
  %493 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %494 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %493, i32 0, i32 3
  %495 = load %struct.TYPE_4__*, %struct.TYPE_4__** %494, align 8
  %496 = icmp ne %struct.TYPE_4__* %495, null
  br i1 %496, label %497, label %534

497:                                              ; preds = %492
  %498 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %499 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %498, i32 0, i32 3
  %500 = load %struct.TYPE_4__*, %struct.TYPE_4__** %499, align 8
  %501 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %500, i32 0, i32 0
  %502 = load i64, i64* %501, align 8
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %534, label %504

504:                                              ; preds = %497
  %505 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %506 = icmp ne %struct.x509_certificate* %505, null
  br i1 %506, label %507, label %534

507:                                              ; preds = %504
  %508 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %509 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %508, i32 0, i32 0
  %510 = load i32, i32* %509, align 8
  %511 = load i32, i32* @X509_EXT_EXT_KEY_USAGE, align 4
  %512 = and i32 %510, %511
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %534

514:                                              ; preds = %507
  %515 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %516 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %515, i32 0, i32 1
  %517 = load i32, i32* %516, align 4
  %518 = load i32, i32* @X509_EXT_KEY_USAGE_ANY, align 4
  %519 = load i32, i32* @X509_EXT_KEY_USAGE_SERVER_AUTH, align 4
  %520 = or i32 %518, %519
  %521 = and i32 %517, %520
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %534, label %523

523:                                              ; preds = %514
  %524 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %525 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %526 = load i32, i32* @TLS_FAIL_BAD_CERTIFICATE, align 4
  %527 = call i32 @tls_cert_chain_failure_event(%struct.tlsv1_client* %524, i32 0, %struct.x509_certificate* %525, i32 %526, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.23, i64 0, i64 0))
  %528 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %529 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %530 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE, align 4
  %531 = call i32 @tls_alert(%struct.tlsv1_client* %528, i32 %529, i32 %530)
  %532 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %533 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %532)
  store i32 -1, i32* %5, align 4
  br label %563

534:                                              ; preds = %514, %507, %504, %497, %492
  %535 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %536 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %535, i32 0, i32 0
  %537 = load i32, i32* %536, align 8
  %538 = load i32, i32* @TLS_CONN_REQUEST_OCSP, align 4
  %539 = and i32 %537, %538
  %540 = icmp ne i32 %539, 0
  br i1 %540, label %541, label %549

541:                                              ; preds = %534
  %542 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %543 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %542, i32 0, i32 2
  %544 = load %struct.x509_certificate*, %struct.x509_certificate** %543, align 8
  %545 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %544)
  %546 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %547 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %548 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %547, i32 0, i32 2
  store %struct.x509_certificate* %546, %struct.x509_certificate** %548, align 8
  br label %552

549:                                              ; preds = %534
  %550 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %551 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %550)
  br label %552

552:                                              ; preds = %549, %541
  %553 = load i64*, i64** %11, align 8
  %554 = load i64*, i64** %8, align 8
  %555 = ptrtoint i64* %553 to i64
  %556 = ptrtoint i64* %554 to i64
  %557 = sub i64 %555, %556
  %558 = sdiv exact i64 %557, 8
  %559 = load i64*, i64** %9, align 8
  store i64 %558, i64* %559, align 8
  %560 = load i32, i32* @SERVER_KEY_EXCHANGE, align 4
  %561 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %562 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %561, i32 0, i32 1
  store i32 %560, i32* %562, align 4
  store i32 0, i32* %5, align 4
  br label %563

563:                                              ; preds = %552, %523, %483, %411, %362, %253, %237, %203, %181, %154, %133, %111, %101, %91, %81, %68, %47, %33
  %564 = load i32, i32* %5, align 4
  ret i32 %564

565:                                              ; preds = %362
  unreachable
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i64 @WPA_GET_BE24(i64*) #1

declare dso_local i32 @tls_process_server_key_exchange(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_certificate_request(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @tls_process_server_hello_done(%struct.tlsv1_client*, i64, i64*, i64*) #1

declare dso_local i32 @x509_certificate_chain_free(%struct.x509_certificate*) #1

declare dso_local i32 @crypto_public_key_free(i32) #1

declare dso_local i64 @tls_parse_cert(i64*, i64, i32*) #1

declare dso_local %struct.x509_certificate* @x509_certificate_parse(i64*, i64) #1

declare dso_local i32 @tls_peer_cert_event(%struct.tlsv1_client*, i64, %struct.x509_certificate*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @x509_name_string(i32*, i8*, i32) #1

declare dso_local i64 @sha256_vector(i32, i32*, i32*, i64*) #1

declare dso_local i64 @os_memcmp(i32, i64*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #1

declare dso_local i32 @os_memset(%union.tls_event_data*, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i64 @x509_certificate_chain_validate(i32, %struct.x509_certificate*, i32*, i32) #1

declare dso_local i32 @tls_cert_chain_failure_event(%struct.tlsv1_client*, i32, %struct.x509_certificate*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
