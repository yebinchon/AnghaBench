; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_read.c_tls_process_certificate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_read.c_tls_process_certificate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.x509_certificate = type { i32, i32, %struct.x509_certificate* }

@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Expected Handshake; received content type 0x%x\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Too short Certificate message (len=%lu)\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Unexpected Certificate message length (len=%lu != left=%lu)\00", align 1
@TLS_HANDSHAKE_TYPE_CLIENT_KEY_EXCHANGE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [35 x i8] c"Client did not include Certificate\00", align 1
@TLS_HANDSHAKE_TYPE_CERTIFICATE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [82 x i8] c"Received unexpected handshake message %d (expected Certificate/ClientKeyExchange)\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"Received Certificate (certificate_list len %lu)\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Too short Certificate (left=%lu)\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"Unexpected certificate_list length (len=%lu left=%lu)\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Failed to parse certificate_list\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"Unexpected certificate length (len=%lu left=%lu)\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Certificate %lu (len %lu)\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Failed to parse the certificate\00", align 1
@TLS_ALERT_BAD_CERTIFICATE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [55 x i8] c"Server certificate chain validation failed (reason=%d)\00", align 1
@TLS_ALERT_UNSUPPORTED_CERTIFICATE = common dso_local global i32 0, align 4
@TLS_ALERT_CERTIFICATE_REVOKED = common dso_local global i32 0, align 4
@TLS_ALERT_CERTIFICATE_EXPIRED = common dso_local global i32 0, align 4
@TLS_ALERT_CERTIFICATE_UNKNOWN = common dso_local global i32 0, align 4
@TLS_ALERT_UNKNOWN_CA = common dso_local global i32 0, align 4
@X509_EXT_EXT_KEY_USAGE = common dso_local global i32 0, align 4
@X509_EXT_KEY_USAGE_ANY = common dso_local global i32 0, align 4
@X509_EXT_KEY_USAGE_CLIENT_AUTH = common dso_local global i32 0, align 4
@CLIENT_KEY_EXCHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i64, i64*, i64*)* @tls_process_certificate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_certificate(%struct.tlsv1_server* %0, i64 %1, i64* %2, i64* %3) #0 {
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
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.x509_certificate*, align 8
  %19 = alloca %struct.x509_certificate*, align 8
  %20 = alloca %struct.x509_certificate*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  store %struct.x509_certificate* null, %struct.x509_certificate** %18, align 8
  store %struct.x509_certificate* null, %struct.x509_certificate** %19, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @TLS_CONTENT_TYPE_HANDSHAKE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %31 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %32 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %33 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %30, i32 %31, i32 %32)
  store i32 -1, i32* %5, align 4
  br label %337

34:                                               ; preds = %4
  %35 = load i64*, i64** %8, align 8
  store i64* %35, i64** %10, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %12, align 8
  %39 = icmp ult i64 %38, 4
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %42 = load i64, i64* %12, align 8
  %43 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %42)
  %44 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %45 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %46 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %47 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %44, i32 %45, i32 %46)
  store i32 -1, i32* %5, align 4
  br label %337

48:                                               ; preds = %34
  %49 = load i64*, i64** %10, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %10, align 8
  %51 = load i64, i64* %49, align 8
  store i64 %51, i64* %17, align 8
  %52 = load i64*, i64** %10, align 8
  %53 = call i64 @WPA_GET_BE24(i64* %52)
  store i64 %53, i64* %13, align 8
  %54 = load i64*, i64** %10, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 3
  store i64* %55, i64** %10, align 8
  %56 = load i64, i64* %12, align 8
  %57 = sub i64 %56, 4
  store i64 %57, i64* %12, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %70

61:                                               ; preds = %48
  %62 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %62, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0), i64 %63, i64 %64)
  %66 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %67 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %68 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %69 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %66, i32 %67, i32 %68)
  store i32 -1, i32* %5, align 4
  br label %337

70:                                               ; preds = %48
  %71 = load i64, i64* %17, align 8
  %72 = load i64, i64* @TLS_HANDSHAKE_TYPE_CLIENT_KEY_EXCHANGE, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %92

74:                                               ; preds = %70
  %75 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %76 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %75, i32 0, i32 3
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %74
  %80 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %81 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %82 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %83 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %84 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %85 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %82, i32 %83, i32 %84)
  store i32 -1, i32* %5, align 4
  br label %337

86:                                               ; preds = %74
  %87 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %88 = load i64, i64* %7, align 8
  %89 = load i64*, i64** %8, align 8
  %90 = load i64*, i64** %9, align 8
  %91 = call i32 @tls_process_client_key_exchange(%struct.tlsv1_server* %87, i64 %88, i64* %89, i64* %90)
  store i32 %91, i32* %5, align 4
  br label %337

92:                                               ; preds = %70
  %93 = load i64, i64* %17, align 8
  %94 = load i64, i64* @TLS_HANDSHAKE_TYPE_CERTIFICATE, align 8
  %95 = icmp ne i64 %93, %94
  br i1 %95, label %96, label %104

96:                                               ; preds = %92
  %97 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %98 = load i64, i64* %17, align 8
  %99 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %97, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.4, i64 0, i64 0), i64 %98)
  %100 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %101 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %102 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %103 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %100, i32 %101, i32 %102)
  store i32 -1, i32* %5, align 4
  br label %337

104:                                              ; preds = %92
  %105 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %106 = load i64, i64* %13, align 8
  %107 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %105, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0), i64 %106)
  %108 = load i64*, i64** %10, align 8
  %109 = load i64, i64* %13, align 8
  %110 = getelementptr inbounds i64, i64* %108, i64 %109
  store i64* %110, i64** %11, align 8
  %111 = load i64*, i64** %11, align 8
  %112 = load i64*, i64** %10, align 8
  %113 = ptrtoint i64* %111 to i64
  %114 = ptrtoint i64* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 8
  %117 = icmp slt i64 %116, 3
  br i1 %117, label %118, label %126

118:                                              ; preds = %104
  %119 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %120 = load i64, i64* %12, align 8
  %121 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i64 %120)
  %122 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %123 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %124 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %125 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %122, i32 %123, i32 %124)
  store i32 -1, i32* %5, align 4
  br label %337

126:                                              ; preds = %104
  %127 = load i64*, i64** %10, align 8
  %128 = call i64 @WPA_GET_BE24(i64* %127)
  store i64 %128, i64* %14, align 8
  %129 = load i64*, i64** %10, align 8
  %130 = getelementptr inbounds i64, i64* %129, i64 3
  store i64* %130, i64** %10, align 8
  %131 = load i64*, i64** %11, align 8
  %132 = load i64*, i64** %10, align 8
  %133 = ptrtoint i64* %131 to i64
  %134 = ptrtoint i64* %132 to i64
  %135 = sub i64 %133, %134
  %136 = sdiv exact i64 %135, 8
  %137 = load i64, i64* %14, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %153

139:                                              ; preds = %126
  %140 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %141 = load i64, i64* %14, align 8
  %142 = load i64*, i64** %11, align 8
  %143 = load i64*, i64** %10, align 8
  %144 = ptrtoint i64* %142 to i64
  %145 = ptrtoint i64* %143 to i64
  %146 = sub i64 %144, %145
  %147 = sdiv exact i64 %146, 8
  %148 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %140, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.7, i64 0, i64 0), i64 %141, i64 %147)
  %149 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %150 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %151 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %152 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %149, i32 %150, i32 %151)
  store i32 -1, i32* %5, align 4
  br label %337

153:                                              ; preds = %126
  store i64 0, i64* %16, align 8
  br label %154

154:                                              ; preds = %256, %153
  %155 = load i64*, i64** %10, align 8
  %156 = load i64*, i64** %11, align 8
  %157 = icmp ult i64* %155, %156
  br i1 %157, label %158, label %263

158:                                              ; preds = %154
  %159 = load i64*, i64** %11, align 8
  %160 = load i64*, i64** %10, align 8
  %161 = ptrtoint i64* %159 to i64
  %162 = ptrtoint i64* %160 to i64
  %163 = sub i64 %161, %162
  %164 = sdiv exact i64 %163, 8
  %165 = icmp slt i64 %164, 3
  br i1 %165, label %166, label %175

166:                                              ; preds = %158
  %167 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %168 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %167, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %169 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %170 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %171 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %172 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %169, i32 %170, i32 %171)
  %173 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %174 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %173)
  store i32 -1, i32* %5, align 4
  br label %337

175:                                              ; preds = %158
  %176 = load i64*, i64** %10, align 8
  %177 = call i64 @WPA_GET_BE24(i64* %176)
  store i64 %177, i64* %15, align 8
  %178 = load i64*, i64** %10, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 3
  store i64* %179, i64** %10, align 8
  %180 = load i64*, i64** %11, align 8
  %181 = load i64*, i64** %10, align 8
  %182 = ptrtoint i64* %180 to i64
  %183 = ptrtoint i64* %181 to i64
  %184 = sub i64 %182, %183
  %185 = sdiv exact i64 %184, 8
  %186 = load i64, i64* %15, align 8
  %187 = icmp ult i64 %185, %186
  br i1 %187, label %188, label %204

188:                                              ; preds = %175
  %189 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %190 = load i64, i64* %15, align 8
  %191 = load i64*, i64** %11, align 8
  %192 = load i64*, i64** %10, align 8
  %193 = ptrtoint i64* %191 to i64
  %194 = ptrtoint i64* %192 to i64
  %195 = sub i64 %193, %194
  %196 = sdiv exact i64 %195, 8
  %197 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %189, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i64 0, i64 0), i64 %190, i64 %196)
  %198 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %199 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %200 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %201 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %198, i32 %199, i32 %200)
  %202 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %203 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %202)
  store i32 -1, i32* %5, align 4
  br label %337

204:                                              ; preds = %175
  %205 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %206 = load i64, i64* %16, align 8
  %207 = load i64, i64* %15, align 8
  %208 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %205, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i64 %206, i64 %207)
  %209 = load i64, i64* %16, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %232

211:                                              ; preds = %204
  %212 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %213 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @crypto_public_key_free(i32 %214)
  %216 = load i64*, i64** %10, align 8
  %217 = load i64, i64* %15, align 8
  %218 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %219 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %218, i32 0, i32 2
  %220 = call i64 @tls_parse_cert(i64* %216, i64 %217, i32* %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %211
  %223 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %224 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %223, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %225 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %226 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %227 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE, align 4
  %228 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %225, i32 %226, i32 %227)
  %229 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %230 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %229)
  store i32 -1, i32* %5, align 4
  br label %337

231:                                              ; preds = %211
  br label %232

232:                                              ; preds = %231, %204
  %233 = load i64*, i64** %10, align 8
  %234 = load i64, i64* %15, align 8
  %235 = call %struct.x509_certificate* @x509_certificate_parse(i64* %233, i64 %234)
  store %struct.x509_certificate* %235, %struct.x509_certificate** %20, align 8
  %236 = load %struct.x509_certificate*, %struct.x509_certificate** %20, align 8
  %237 = icmp eq %struct.x509_certificate* %236, null
  br i1 %237, label %238, label %247

238:                                              ; preds = %232
  %239 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %240 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %239, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %241 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %242 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %243 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE, align 4
  %244 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %241, i32 %242, i32 %243)
  %245 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %246 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %245)
  store i32 -1, i32* %5, align 4
  br label %337

247:                                              ; preds = %232
  %248 = load %struct.x509_certificate*, %struct.x509_certificate** %19, align 8
  %249 = icmp eq %struct.x509_certificate* %248, null
  br i1 %249, label %250, label %252

250:                                              ; preds = %247
  %251 = load %struct.x509_certificate*, %struct.x509_certificate** %20, align 8
  store %struct.x509_certificate* %251, %struct.x509_certificate** %18, align 8
  br label %256

252:                                              ; preds = %247
  %253 = load %struct.x509_certificate*, %struct.x509_certificate** %20, align 8
  %254 = load %struct.x509_certificate*, %struct.x509_certificate** %19, align 8
  %255 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %254, i32 0, i32 2
  store %struct.x509_certificate* %253, %struct.x509_certificate** %255, align 8
  br label %256

256:                                              ; preds = %252, %250
  %257 = load %struct.x509_certificate*, %struct.x509_certificate** %20, align 8
  store %struct.x509_certificate* %257, %struct.x509_certificate** %19, align 8
  %258 = load i64, i64* %16, align 8
  %259 = add i64 %258, 1
  store i64 %259, i64* %16, align 8
  %260 = load i64, i64* %15, align 8
  %261 = load i64*, i64** %10, align 8
  %262 = getelementptr inbounds i64, i64* %261, i64 %260
  store i64* %262, i64** %10, align 8
  br label %154

263:                                              ; preds = %154
  %264 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %265 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %264, i32 0, i32 1
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %270 = call i64 @x509_certificate_chain_validate(i32 %268, %struct.x509_certificate* %269, i32* %21, i32 0)
  %271 = icmp slt i64 %270, 0
  br i1 %271, label %272, label %298

272:                                              ; preds = %263
  %273 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %274 = load i32, i32* %21, align 4
  %275 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %273, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0), i32 %274)
  %276 = load i32, i32* %21, align 4
  switch i32 %276, label %289 [
    i32 133, label %277
    i32 128, label %279
    i32 131, label %281
    i32 132, label %283
    i32 130, label %285
    i32 129, label %287
  ]

277:                                              ; preds = %272
  %278 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE, align 4
  store i32 %278, i32* %22, align 4
  br label %291

279:                                              ; preds = %272
  %280 = load i32, i32* @TLS_ALERT_UNSUPPORTED_CERTIFICATE, align 4
  store i32 %280, i32* %22, align 4
  br label %291

281:                                              ; preds = %272
  %282 = load i32, i32* @TLS_ALERT_CERTIFICATE_REVOKED, align 4
  store i32 %282, i32* %22, align 4
  br label %291

283:                                              ; preds = %272
  %284 = load i32, i32* @TLS_ALERT_CERTIFICATE_EXPIRED, align 4
  store i32 %284, i32* %22, align 4
  br label %291

285:                                              ; preds = %272
  %286 = load i32, i32* @TLS_ALERT_CERTIFICATE_UNKNOWN, align 4
  store i32 %286, i32* %22, align 4
  br label %291

287:                                              ; preds = %272
  %288 = load i32, i32* @TLS_ALERT_UNKNOWN_CA, align 4
  store i32 %288, i32* %22, align 4
  br label %291

289:                                              ; preds = %272
  %290 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE, align 4
  store i32 %290, i32* %22, align 4
  br label %291

291:                                              ; preds = %289, %287, %285, %283, %281, %279, %277
  %292 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %293 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %294 = load i32, i32* %22, align 4
  %295 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %292, i32 %293, i32 %294)
  %296 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %297 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %296)
  store i32 -1, i32* %5, align 4
  br label %337

298:                                              ; preds = %263
  %299 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %300 = icmp ne %struct.x509_certificate* %299, null
  br i1 %300, label %301, label %324

301:                                              ; preds = %298
  %302 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %303 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load i32, i32* @X509_EXT_EXT_KEY_USAGE, align 4
  %306 = and i32 %304, %305
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %308, label %324

308:                                              ; preds = %301
  %309 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %310 = getelementptr inbounds %struct.x509_certificate, %struct.x509_certificate* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = load i32, i32* @X509_EXT_KEY_USAGE_ANY, align 4
  %313 = load i32, i32* @X509_EXT_KEY_USAGE_CLIENT_AUTH, align 4
  %314 = or i32 %312, %313
  %315 = and i32 %311, %314
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %324, label %317

317:                                              ; preds = %308
  %318 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %319 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %320 = load i32, i32* @TLS_ALERT_BAD_CERTIFICATE, align 4
  %321 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %318, i32 %319, i32 %320)
  %322 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %323 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %322)
  store i32 -1, i32* %5, align 4
  br label %337

324:                                              ; preds = %308, %301, %298
  %325 = load %struct.x509_certificate*, %struct.x509_certificate** %18, align 8
  %326 = call i32 @x509_certificate_chain_free(%struct.x509_certificate* %325)
  %327 = load i64*, i64** %11, align 8
  %328 = load i64*, i64** %8, align 8
  %329 = ptrtoint i64* %327 to i64
  %330 = ptrtoint i64* %328 to i64
  %331 = sub i64 %329, %330
  %332 = sdiv exact i64 %331, 8
  %333 = load i64*, i64** %9, align 8
  store i64 %332, i64* %333, align 8
  %334 = load i32, i32* @CLIENT_KEY_EXCHANGE, align 4
  %335 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %336 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %335, i32 0, i32 0
  store i32 %334, i32* %336, align 8
  store i32 0, i32* %5, align 4
  br label %337

337:                                              ; preds = %324, %317, %291, %238, %222, %188, %166, %139, %118, %96, %86, %79, %61, %40, %26
  %338 = load i32, i32* %5, align 4
  ret i32 %338
}

declare dso_local i32 @tlsv1_server_log(%struct.tlsv1_server*, i8*, ...) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i64 @WPA_GET_BE24(i64*) #1

declare dso_local i32 @tls_process_client_key_exchange(%struct.tlsv1_server*, i64, i64*, i64*) #1

declare dso_local i32 @x509_certificate_chain_free(%struct.x509_certificate*) #1

declare dso_local i32 @crypto_public_key_free(i32) #1

declare dso_local i64 @tls_parse_cert(i64*, i64, i32*) #1

declare dso_local %struct.x509_certificate* @x509_certificate_parse(i64*, i64) #1

declare dso_local i64 @x509_certificate_chain_validate(i32, %struct.x509_certificate*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
