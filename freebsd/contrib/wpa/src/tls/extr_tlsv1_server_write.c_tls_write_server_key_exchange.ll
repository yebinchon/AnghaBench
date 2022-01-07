; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_write_server_key_exchange.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_write_server_key_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i64*, i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i8*, i32, i32, i32* }
%struct.tls_cipher_suite = type { i64 }

@TLS_KEY_X_NULL = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"TLSv1: No ServerKeyExchange needed\00", align 1
@TLS_KEY_X_DH_anon = common dso_local global i64 0, align 8
@TLS_KEY_X_DHE_RSA = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [69 x i8] c"TLSv1: ServerKeyExchange not yet supported with key exchange type %d\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"TLSv1: No DH parameters available for ServerKeyExhcange\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"TLSv1: Failed to allocate memory for secret (Diffie-Hellman)\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"TLSv1: Failed to get random data for Diffie-Hellman\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"TLSv1: DH server's secret value\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"TLSv1: Failed to allocate memory for Diffie-Hellman\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"TLSv1: DH Ys (server's public value)\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Send ServerKeyExchange\00", align 1
@TLS_RECORD_HEADER_LEN = common dso_local global i32 0, align 4
@TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [40 x i8] c"TLSv1: Not enough buffer space for dh_p\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"TLSv1: Not enough buffer space for dh_g\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"TLSv1: Not enough buffer space for dh_Ys\00", align 1
@TLS_VERSION_1_2 = common dso_local global i64 0, align 8
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"TLS: ServerKeyExchange signed_params hash\00", align 1
@.str.13 = private unnamed_addr constant [37 x i8] c"TLSv1: Failed to sign hash (PKCS #1)\00", align 1
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to generate a record\00", align 1
@TLS_BREAK_SRV_KEY_X_HASH = common dso_local global i32 0, align 4
@TLS_BREAK_SRV_KEY_X_SIGNATURE = common dso_local global i32 0, align 4
@TLS_HASH_ALG_SHA256 = common dso_local global i32 0, align 4
@TLS_SIGN_ALG_RSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i64**, i64*)* @tls_write_server_key_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_server_key_exchange(%struct.tlsv1_server* %0, i64** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_server*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.tls_cipher_suite*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i64, align 8
  %20 = alloca [100 x i64], align 16
  %21 = alloca i64*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %5, align 8
  store i64** %1, i64*** %6, align 8
  store i64* %2, i64** %7, align 8
  %24 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %25 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.tls_cipher_suite* @tls_get_cipher_suite(i32 %27)
  store %struct.tls_cipher_suite* %28, %struct.tls_cipher_suite** %9, align 8
  %29 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %9, align 8
  %30 = icmp eq %struct.tls_cipher_suite* %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %3
  %32 = load i64, i64* @TLS_KEY_X_NULL, align 8
  store i64 %32, i64* %8, align 8
  br label %37

33:                                               ; preds = %3
  %34 = load %struct.tls_cipher_suite*, %struct.tls_cipher_suite** %9, align 8
  %35 = getelementptr inbounds %struct.tls_cipher_suite, %struct.tls_cipher_suite* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %8, align 8
  br label %37

37:                                               ; preds = %33, %31
  %38 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %39 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @tls_server_key_exchange_allowed(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %543

47:                                               ; preds = %37
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @TLS_KEY_X_DH_anon, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %59

51:                                               ; preds = %47
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* @TLS_KEY_X_DHE_RSA, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %51
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = load i64, i64* %8, align 8
  %58 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  store i32 -1, i32* %4, align 4
  br label %543

59:                                               ; preds = %51, %47
  %60 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %61 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %60, i32 0, i32 5
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = icmp eq %struct.TYPE_3__* %62, null
  br i1 %63, label %78, label %64

64:                                               ; preds = %59
  %65 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %66 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %65, i32 0, i32 5
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %78, label %71

71:                                               ; preds = %64
  %72 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %73 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %72, i32 0, i32 5
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = icmp eq i8* %76, null
  br i1 %77, label %78, label %81

78:                                               ; preds = %71, %64, %59
  %79 = load i32, i32* @MSG_DEBUG, align 4
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %79, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %543

81:                                               ; preds = %71
  %82 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %83 = call i32 @tlsv1_server_get_dh_p(%struct.tlsv1_server* %82, i64** %18, i64* %19)
  %84 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %85 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %84, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = call i32 @os_free(i64* %86)
  %88 = load i64, i64* %19, align 8
  %89 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %90 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %89, i32 0, i32 1
  store i64 %88, i64* %90, align 8
  %91 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %92 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = call i8* @os_malloc(i64 %93)
  %95 = bitcast i8* %94 to i64*
  %96 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %97 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %96, i32 0, i32 0
  store i64* %95, i64** %97, align 8
  %98 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %99 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = icmp eq i64* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %81
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = call i32 (i32, i8*, ...) @wpa_printf(i32 %103, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %105 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %106 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %107 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %108 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %105, i32 %106, i32 %107)
  store i32 -1, i32* %4, align 4
  br label %543

109:                                              ; preds = %81
  %110 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %111 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 8
  %113 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %114 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @random_get_bytes(i64* %112, i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %131

118:                                              ; preds = %109
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = call i32 (i32, i8*, ...) @wpa_printf(i32 %119, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0))
  %121 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %122 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %123 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %124 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %121, i32 %122, i32 %123)
  %125 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %126 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %125, i32 0, i32 0
  %127 = load i64*, i64** %126, align 8
  %128 = call i32 @os_free(i64* %127)
  %129 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %130 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %129, i32 0, i32 0
  store i64* null, i64** %130, align 8
  store i32 -1, i32* %4, align 4
  br label %543

131:                                              ; preds = %109
  %132 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %133 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %132, i32 0, i32 0
  %134 = load i64*, i64** %133, align 8
  %135 = load i64*, i64** %18, align 8
  %136 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %137 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = call i64 @os_memcmp(i64* %134, i64* %135, i64 %138)
  %140 = icmp sgt i64 %139, 0
  br i1 %140, label %141, label %146

141:                                              ; preds = %131
  %142 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %143 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  store i64 0, i64* %145, align 8
  br label %146

146:                                              ; preds = %141, %131
  %147 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %148 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %147, i32 0, i32 0
  %149 = load i64*, i64** %148, align 8
  store i64* %149, i64** %10, align 8
  br label %150

150:                                              ; preds = %167, %146
  %151 = load i64*, i64** %10, align 8
  %152 = getelementptr inbounds i64, i64* %151, i64 1
  %153 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %154 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %153, i32 0, i32 0
  %155 = load i64*, i64** %154, align 8
  %156 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %157 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %156, i32 0, i32 1
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i64, i64* %155, i64 %158
  %160 = icmp ult i64* %152, %159
  br i1 %160, label %161, label %165

161:                                              ; preds = %150
  %162 = load i64*, i64** %10, align 8
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %163, 0
  br label %165

165:                                              ; preds = %161, %150
  %166 = phi i1 [ false, %150 ], [ %164, %161 ]
  br i1 %166, label %167, label %170

167:                                              ; preds = %165
  %168 = load i64*, i64** %10, align 8
  %169 = getelementptr inbounds i64, i64* %168, i32 1
  store i64* %169, i64** %10, align 8
  br label %150

170:                                              ; preds = %165
  %171 = load i64*, i64** %10, align 8
  %172 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %173 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %172, i32 0, i32 0
  %174 = load i64*, i64** %173, align 8
  %175 = icmp ne i64* %171, %174
  br i1 %175, label %176, label %207

176:                                              ; preds = %170
  %177 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %178 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %177, i32 0, i32 0
  %179 = load i64*, i64** %178, align 8
  %180 = load i64*, i64** %10, align 8
  %181 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %182 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i64*, i64** %10, align 8
  %185 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %186 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %185, i32 0, i32 0
  %187 = load i64*, i64** %186, align 8
  %188 = ptrtoint i64* %184 to i64
  %189 = ptrtoint i64* %187 to i64
  %190 = sub i64 %188, %189
  %191 = sdiv exact i64 %190, 8
  %192 = sub i64 %183, %191
  %193 = trunc i64 %192 to i32
  %194 = call i32 @os_memmove(i64* %179, i64* %180, i32 %193)
  %195 = load i64*, i64** %10, align 8
  %196 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %197 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %196, i32 0, i32 0
  %198 = load i64*, i64** %197, align 8
  %199 = ptrtoint i64* %195 to i64
  %200 = ptrtoint i64* %198 to i64
  %201 = sub i64 %199, %200
  %202 = sdiv exact i64 %201, 8
  %203 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %204 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = sub i64 %205, %202
  store i64 %206, i64* %204, align 8
  br label %207

207:                                              ; preds = %176, %170
  %208 = load i32, i32* @MSG_DEBUG, align 4
  %209 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %210 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %209, i32 0, i32 0
  %211 = load i64*, i64** %210, align 8
  %212 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %213 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %212, i32 0, i32 1
  %214 = load i64, i64* %213, align 8
  %215 = call i32 @wpa_hexdump_key(i32 %208, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i64* %211, i64 %214)
  %216 = load i64, i64* %19, align 8
  store i64 %216, i64* %17, align 8
  %217 = load i64, i64* %17, align 8
  %218 = call i8* @os_malloc(i64 %217)
  %219 = bitcast i8* %218 to i64*
  store i64* %219, i64** %16, align 8
  %220 = load i64*, i64** %16, align 8
  %221 = icmp eq i64* %220, null
  br i1 %221, label %222, label %229

222:                                              ; preds = %207
  %223 = load i32, i32* @MSG_DEBUG, align 4
  %224 = call i32 (i32, i8*, ...) @wpa_printf(i32 %223, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %225 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %226 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %227 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %228 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %225, i32 %226, i32 %227)
  store i32 -1, i32* %4, align 4
  br label %543

229:                                              ; preds = %207
  %230 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %231 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %230, i32 0, i32 5
  %232 = load %struct.TYPE_3__*, %struct.TYPE_3__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %232, i32 0, i32 0
  %234 = load i8*, i8** %233, align 8
  %235 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %236 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %235, i32 0, i32 5
  %237 = load %struct.TYPE_3__*, %struct.TYPE_3__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %241 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %240, i32 0, i32 0
  %242 = load i64*, i64** %241, align 8
  %243 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %244 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = load i64*, i64** %18, align 8
  %247 = load i64, i64* %19, align 8
  %248 = load i64*, i64** %16, align 8
  %249 = call i64 @crypto_mod_exp(i8* %234, i32 %239, i64* %242, i64 %245, i64* %246, i64 %247, i64* %248, i64* %17)
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %258

251:                                              ; preds = %229
  %252 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %253 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %254 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %255 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %252, i32 %253, i32 %254)
  %256 = load i64*, i64** %16, align 8
  %257 = call i32 @os_free(i64* %256)
  store i32 -1, i32* %4, align 4
  br label %543

258:                                              ; preds = %229
  %259 = load i32, i32* @MSG_DEBUG, align 4
  %260 = load i64*, i64** %16, align 8
  %261 = load i64, i64* %17, align 8
  %262 = trunc i64 %261 to i32
  %263 = call i32 @wpa_hexdump(i32 %259, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64* %260, i32 %262)
  %264 = load i64**, i64*** %6, align 8
  %265 = load i64*, i64** %264, align 8
  store i64* %265, i64** %10, align 8
  %266 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %267 = call i32 @tlsv1_server_log(%struct.tlsv1_server* %266, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0))
  %268 = load i64*, i64** %10, align 8
  store i64* %268, i64** %11, align 8
  %269 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %270 = load i64*, i64** %10, align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i64, i64* %270, i64 %271
  store i64* %272, i64** %10, align 8
  %273 = load i64*, i64** %10, align 8
  store i64* %273, i64** %12, align 8
  %274 = load i32, i32* @TLS_HANDSHAKE_TYPE_SERVER_KEY_EXCHANGE, align 4
  %275 = sext i32 %274 to i64
  %276 = load i64*, i64** %10, align 8
  %277 = getelementptr inbounds i64, i64* %276, i32 1
  store i64* %277, i64** %10, align 8
  store i64 %275, i64* %276, align 8
  %278 = load i64*, i64** %10, align 8
  store i64* %278, i64** %13, align 8
  %279 = load i64*, i64** %10, align 8
  %280 = getelementptr inbounds i64, i64* %279, i64 3
  store i64* %280, i64** %10, align 8
  %281 = load i64*, i64** %10, align 8
  store i64* %281, i64** %14, align 8
  %282 = load i64, i64* %19, align 8
  %283 = add i64 2, %282
  %284 = load i64*, i64** %7, align 8
  %285 = load i64*, i64** %10, align 8
  %286 = ptrtoint i64* %284 to i64
  %287 = ptrtoint i64* %285 to i64
  %288 = sub i64 %286, %287
  %289 = sdiv exact i64 %288, 8
  %290 = icmp ugt i64 %283, %289
  br i1 %290, label %291, label %300

291:                                              ; preds = %258
  %292 = load i32, i32* @MSG_DEBUG, align 4
  %293 = call i32 (i32, i8*, ...) @wpa_printf(i32 %292, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.9, i64 0, i64 0))
  %294 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %295 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %296 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %297 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %294, i32 %295, i32 %296)
  %298 = load i64*, i64** %16, align 8
  %299 = call i32 @os_free(i64* %298)
  store i32 -1, i32* %4, align 4
  br label %543

300:                                              ; preds = %258
  %301 = load i64*, i64** %10, align 8
  %302 = load i64, i64* %19, align 8
  %303 = call i32 @WPA_PUT_BE16(i64* %301, i64 %302)
  %304 = load i64*, i64** %10, align 8
  %305 = getelementptr inbounds i64, i64* %304, i64 2
  store i64* %305, i64** %10, align 8
  %306 = load i64*, i64** %10, align 8
  %307 = load i64*, i64** %18, align 8
  %308 = load i64, i64* %19, align 8
  %309 = call i32 (i64*, ...) @os_memcpy(i64* %306, i64* %307, i64 %308)
  %310 = load i64, i64* %19, align 8
  %311 = load i64*, i64** %10, align 8
  %312 = getelementptr inbounds i64, i64* %311, i64 %310
  store i64* %312, i64** %10, align 8
  %313 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %314 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %313, i32 0, i32 5
  %315 = load %struct.TYPE_3__*, %struct.TYPE_3__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = add nsw i32 2, %317
  %319 = sext i32 %318 to i64
  %320 = load i64*, i64** %7, align 8
  %321 = load i64*, i64** %10, align 8
  %322 = ptrtoint i64* %320 to i64
  %323 = ptrtoint i64* %321 to i64
  %324 = sub i64 %322, %323
  %325 = sdiv exact i64 %324, 8
  %326 = icmp ugt i64 %319, %325
  br i1 %326, label %327, label %336

327:                                              ; preds = %300
  %328 = load i32, i32* @MSG_DEBUG, align 4
  %329 = call i32 (i32, i8*, ...) @wpa_printf(i32 %328, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0))
  %330 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %331 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %332 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %333 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %330, i32 %331, i32 %332)
  %334 = load i64*, i64** %16, align 8
  %335 = call i32 @os_free(i64* %334)
  store i32 -1, i32* %4, align 4
  br label %543

336:                                              ; preds = %300
  %337 = load i64*, i64** %10, align 8
  %338 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %339 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %338, i32 0, i32 5
  %340 = load %struct.TYPE_3__*, %struct.TYPE_3__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 8
  %343 = sext i32 %342 to i64
  %344 = call i32 @WPA_PUT_BE16(i64* %337, i64 %343)
  %345 = load i64*, i64** %10, align 8
  %346 = getelementptr inbounds i64, i64* %345, i64 2
  store i64* %346, i64** %10, align 8
  %347 = load i64*, i64** %10, align 8
  %348 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %349 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %348, i32 0, i32 5
  %350 = load %struct.TYPE_3__*, %struct.TYPE_3__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 0
  %352 = load i8*, i8** %351, align 8
  %353 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %354 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %353, i32 0, i32 5
  %355 = load %struct.TYPE_3__*, %struct.TYPE_3__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %355, i32 0, i32 1
  %357 = load i32, i32* %356, align 8
  %358 = call i32 (i64*, ...) @os_memcpy(i64* %347, i8* %352, i32 %357)
  %359 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %360 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %359, i32 0, i32 5
  %361 = load %struct.TYPE_3__*, %struct.TYPE_3__** %360, align 8
  %362 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %361, i32 0, i32 1
  %363 = load i32, i32* %362, align 8
  %364 = load i64*, i64** %10, align 8
  %365 = sext i32 %363 to i64
  %366 = getelementptr inbounds i64, i64* %364, i64 %365
  store i64* %366, i64** %10, align 8
  %367 = load i64, i64* %17, align 8
  %368 = add i64 2, %367
  %369 = load i64*, i64** %7, align 8
  %370 = load i64*, i64** %10, align 8
  %371 = ptrtoint i64* %369 to i64
  %372 = ptrtoint i64* %370 to i64
  %373 = sub i64 %371, %372
  %374 = sdiv exact i64 %373, 8
  %375 = icmp ugt i64 %368, %374
  br i1 %375, label %376, label %385

376:                                              ; preds = %336
  %377 = load i32, i32* @MSG_DEBUG, align 4
  %378 = call i32 (i32, i8*, ...) @wpa_printf(i32 %377, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %379 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %380 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %381 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %382 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %379, i32 %380, i32 %381)
  %383 = load i64*, i64** %16, align 8
  %384 = call i32 @os_free(i64* %383)
  store i32 -1, i32* %4, align 4
  br label %543

385:                                              ; preds = %336
  %386 = load i64*, i64** %10, align 8
  %387 = load i64, i64* %17, align 8
  %388 = call i32 @WPA_PUT_BE16(i64* %386, i64 %387)
  %389 = load i64*, i64** %10, align 8
  %390 = getelementptr inbounds i64, i64* %389, i64 2
  store i64* %390, i64** %10, align 8
  %391 = load i64*, i64** %10, align 8
  %392 = load i64*, i64** %16, align 8
  %393 = load i64, i64* %17, align 8
  %394 = call i32 (i64*, ...) @os_memcpy(i64* %391, i64* %392, i64 %393)
  %395 = load i64, i64* %17, align 8
  %396 = load i64*, i64** %10, align 8
  %397 = getelementptr inbounds i64, i64* %396, i64 %395
  store i64* %397, i64** %10, align 8
  %398 = load i64*, i64** %16, align 8
  %399 = call i32 @os_free(i64* %398)
  %400 = load i64, i64* %8, align 8
  %401 = load i64, i64* @TLS_KEY_X_DHE_RSA, align 8
  %402 = icmp eq i64 %400, %401
  br i1 %402, label %403, label %487

403:                                              ; preds = %385
  %404 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %405 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %404, i32 0, i32 4
  %406 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = load i64, i64* @TLS_VERSION_1_2, align 8
  %409 = icmp sge i64 %407, %408
  br i1 %409, label %410, label %415

410:                                              ; preds = %403
  %411 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %412 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %413 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %414 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %411, i32 %412, i32 %413)
  store i32 -1, i32* %4, align 4
  br label %543

415:                                              ; preds = %403
  %416 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %417 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %416, i32 0, i32 4
  %418 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i32 0, i32 0
  %419 = load i64, i64* %418, align 8
  %420 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %421 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %420, i32 0, i32 7
  %422 = load i32, i32* %421, align 4
  %423 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %424 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %423, i32 0, i32 6
  %425 = load i32, i32* %424, align 8
  %426 = load i64*, i64** %14, align 8
  %427 = load i64*, i64** %10, align 8
  %428 = load i64*, i64** %14, align 8
  %429 = ptrtoint i64* %427 to i64
  %430 = ptrtoint i64* %428 to i64
  %431 = sub i64 %429, %430
  %432 = sdiv exact i64 %431, 8
  %433 = trunc i64 %432 to i32
  %434 = getelementptr inbounds [100 x i64], [100 x i64]* %20, i64 0, i64 0
  %435 = call i32 @tls_key_x_server_params_hash(i64 %419, i32 %422, i32 %425, i64* %426, i32 %433, i64* %434)
  store i32 %435, i32* %23, align 4
  br label %436

436:                                              ; preds = %415
  %437 = load i32, i32* %23, align 4
  %438 = icmp slt i32 %437, 0
  br i1 %438, label %439, label %444

439:                                              ; preds = %436
  %440 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %441 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %442 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %443 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %440, i32 %441, i32 %442)
  store i32 -1, i32* %4, align 4
  br label %543

444:                                              ; preds = %436
  %445 = load i32, i32* @MSG_MSGDUMP, align 4
  %446 = getelementptr inbounds [100 x i64], [100 x i64]* %20, i64 0, i64 0
  %447 = load i32, i32* %23, align 4
  %448 = call i32 @wpa_hexdump(i32 %445, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i64* %446, i32 %447)
  %449 = load i64*, i64** %10, align 8
  store i64* %449, i64** %21, align 8
  %450 = load i64*, i64** %10, align 8
  %451 = getelementptr inbounds i64, i64* %450, i64 2
  store i64* %451, i64** %10, align 8
  %452 = load i64*, i64** %7, align 8
  %453 = load i64*, i64** %10, align 8
  %454 = ptrtoint i64* %452 to i64
  %455 = ptrtoint i64* %453 to i64
  %456 = sub i64 %454, %455
  %457 = sdiv exact i64 %456, 8
  store i64 %457, i64* %22, align 8
  %458 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %459 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %458, i32 0, i32 5
  %460 = load %struct.TYPE_3__*, %struct.TYPE_3__** %459, align 8
  %461 = icmp eq %struct.TYPE_3__* %460, null
  br i1 %461, label %473, label %462

462:                                              ; preds = %444
  %463 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %464 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %463, i32 0, i32 5
  %465 = load %struct.TYPE_3__*, %struct.TYPE_3__** %464, align 8
  %466 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %465, i32 0, i32 2
  %467 = load i32, i32* %466, align 4
  %468 = getelementptr inbounds [100 x i64], [100 x i64]* %20, i64 0, i64 0
  %469 = load i32, i32* %23, align 4
  %470 = load i64*, i64** %10, align 8
  %471 = call i64 @crypto_private_key_sign_pkcs1(i32 %467, i64* %468, i32 %469, i64* %470, i64* %22)
  %472 = icmp slt i64 %471, 0
  br i1 %472, label %473, label %480

473:                                              ; preds = %462, %444
  %474 = load i32, i32* @MSG_DEBUG, align 4
  %475 = call i32 (i32, i8*, ...) @wpa_printf(i32 %474, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.13, i64 0, i64 0))
  %476 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %477 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %478 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %479 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %476, i32 %477, i32 %478)
  store i32 -1, i32* %4, align 4
  br label %543

480:                                              ; preds = %462
  %481 = load i64*, i64** %21, align 8
  %482 = load i64, i64* %22, align 8
  %483 = call i32 @WPA_PUT_BE16(i64* %481, i64 %482)
  %484 = load i64, i64* %22, align 8
  %485 = load i64*, i64** %10, align 8
  %486 = getelementptr inbounds i64, i64* %485, i64 %484
  store i64* %486, i64** %10, align 8
  br label %487

487:                                              ; preds = %480, %385
  %488 = load i64*, i64** %13, align 8
  %489 = load i64*, i64** %10, align 8
  %490 = load i64*, i64** %13, align 8
  %491 = ptrtoint i64* %489 to i64
  %492 = ptrtoint i64* %490 to i64
  %493 = sub i64 %491, %492
  %494 = sdiv exact i64 %493, 8
  %495 = sub nsw i64 %494, 3
  %496 = trunc i64 %495 to i32
  %497 = call i32 @WPA_PUT_BE24(i64* %488, i32 %496)
  %498 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %499 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %498, i32 0, i32 4
  %500 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %501 = load i64*, i64** %11, align 8
  %502 = load i64*, i64** %7, align 8
  %503 = load i64*, i64** %11, align 8
  %504 = ptrtoint i64* %502 to i64
  %505 = ptrtoint i64* %503 to i64
  %506 = sub i64 %504, %505
  %507 = sdiv exact i64 %506, 8
  %508 = trunc i64 %507 to i32
  %509 = load i64*, i64** %12, align 8
  %510 = load i64*, i64** %10, align 8
  %511 = load i64*, i64** %12, align 8
  %512 = ptrtoint i64* %510 to i64
  %513 = ptrtoint i64* %511 to i64
  %514 = sub i64 %512, %513
  %515 = sdiv exact i64 %514, 8
  %516 = trunc i64 %515 to i32
  %517 = call i64 @tlsv1_record_send(%struct.TYPE_4__* %499, i32 %500, i64* %501, i32 %508, i64* %509, i32 %516, i64* %15)
  %518 = icmp slt i64 %517, 0
  br i1 %518, label %519, label %526

519:                                              ; preds = %487
  %520 = load i32, i32* @MSG_DEBUG, align 4
  %521 = call i32 (i32, i8*, ...) @wpa_printf(i32 %520, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.14, i64 0, i64 0))
  %522 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %523 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %524 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %525 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %522, i32 %523, i32 %524)
  store i32 -1, i32* %4, align 4
  br label %543

526:                                              ; preds = %487
  %527 = load i64*, i64** %11, align 8
  %528 = load i64, i64* %15, align 8
  %529 = getelementptr inbounds i64, i64* %527, i64 %528
  store i64* %529, i64** %10, align 8
  %530 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %531 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %530, i32 0, i32 3
  %532 = load i64*, i64** %12, align 8
  %533 = load i64*, i64** %10, align 8
  %534 = load i64*, i64** %12, align 8
  %535 = ptrtoint i64* %533 to i64
  %536 = ptrtoint i64* %534 to i64
  %537 = sub i64 %535, %536
  %538 = sdiv exact i64 %537, 8
  %539 = trunc i64 %538 to i32
  %540 = call i32 @tls_verify_hash_add(i32* %531, i64* %532, i32 %539)
  %541 = load i64*, i64** %10, align 8
  %542 = load i64**, i64*** %6, align 8
  store i64* %541, i64** %542, align 8
  store i32 0, i32* %4, align 4
  br label %543

543:                                              ; preds = %526, %519, %473, %439, %410, %376, %327, %291, %251, %222, %118, %102, %78, %55, %44
  %544 = load i32, i32* %4, align 4
  ret i32 %544
}

declare dso_local %struct.tls_cipher_suite* @tls_get_cipher_suite(i32) #1

declare dso_local i32 @tls_server_key_exchange_allowed(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tlsv1_server_get_dh_p(%struct.tlsv1_server*, i64**, i64*) #1

declare dso_local i32 @os_free(i64*) #1

declare dso_local i8* @os_malloc(i64) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i64 @random_get_bytes(i64*, i64) #1

declare dso_local i64 @os_memcmp(i64*, i64*, i64) #1

declare dso_local i32 @os_memmove(i64*, i64*, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i64*, i64) #1

declare dso_local i64 @crypto_mod_exp(i8*, i32, i64*, i64, i64*, i64, i64*, i64*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i32) #1

declare dso_local i32 @tlsv1_server_log(%struct.tlsv1_server*, i8*) #1

declare dso_local i32 @WPA_PUT_BE16(i64*, i64) #1

declare dso_local i32 @os_memcpy(i64*, ...) #1

declare dso_local i32 @tls_key_x_server_params_hash(i64, i32, i32, i64*, i32, i64*) #1

declare dso_local i64 @crypto_private_key_sign_pkcs1(i32, i64*, i32, i64*, i64*) #1

declare dso_local i32 @WPA_PUT_BE24(i64*, i32) #1

declare dso_local i64 @tlsv1_record_send(%struct.TYPE_4__*, i32, i64*, i32, i64*, i32, i64*) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
