; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tls_send_client_hello.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tls_send_client_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i32, i32, i32, i32, i32*, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.os_time = type { i32 }

@TLS_VERSION = common dso_local global i64 0, align 8
@TLS_CONN_DISABLE_TLSv1_0 = common dso_local global i32 0, align 4
@TLS_VERSION_1 = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"TLSv1: No TLS version allowed\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"TLSv1: Send ClientHello (ver %s)\00", align 1
@TLS_RANDOM_LEN = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"TLSv1: Could not generate client_random\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"TLSv1: client_random\00", align 1
@TLS_RECORD_HEADER_LEN = common dso_local global i32 0, align 4
@TLS_HANDSHAKE_TYPE_CLIENT_HELLO = common dso_local global i32 0, align 4
@TLS_COMPRESSION_NULL = common dso_local global i32 0, align 4
@TLS_CONN_REQUEST_OCSP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [54 x i8] c"TLSv1: Add status_request extension for OCSP stapling\00", align 1
@TLS_EXT_STATUS_REQUEST = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [57 x i8] c"TLSv1: Add status_request_v2 extension for OCSP stapling\00", align 1
@TLS_EXT_STATUS_REQUEST_V2 = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to create TLS record\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SERVER_HELLO = common dso_local global i32 0, align 4
@TLS_CONN_DISABLE_TLSv1_1 = common dso_local global i32 0, align 4
@TLS_CONN_DISABLE_TLSv1_2 = common dso_local global i32 0, align 4
@TLS_EXT_SIGNATURE_ALGORITHMS = common dso_local global i32 0, align 4
@TLS_HASH_ALG_SHA256 = common dso_local global i32 0, align 4
@TLS_HASH_ALG_SHA384 = common dso_local global i32 0, align 4
@TLS_HASH_ALG_SHA512 = common dso_local global i32 0, align 4
@TLS_SIGN_ALG_RSA = common dso_local global i8* null, align 8
@TLS_VERSION_1_1 = common dso_local global i64 0, align 8
@TLS_VERSION_1_2 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @tls_send_client_hello(%struct.tlsv1_client* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.tlsv1_client*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.os_time, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %4, align 8
  store i64* %1, i64** %5, align 8
  %17 = load i64, i64* @TLS_VERSION, align 8
  store i64 %17, i64* %16, align 8
  %18 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %19 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @TLS_CONN_DISABLE_TLSv1_0, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %2
  %25 = load i64, i64* %16, align 8
  %26 = load i64, i64* @TLS_VERSION_1, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @MSG_INFO, align 4
  %30 = call i32 (i32, i8*, ...) @wpa_printf(i32 %29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %316

31:                                               ; preds = %24, %2
  %32 = load i32, i32* @MSG_DEBUG, align 4
  %33 = load i64, i64* %16, align 8
  %34 = call i32 @tls_version_str(i64 %33)
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %32, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i64*, i64** %5, align 8
  store i64 0, i64* %36, align 8
  %37 = call i32 @os_get_time(%struct.os_time* %12)
  %38 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %39 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %38, i32 0, i32 10
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.os_time, %struct.os_time* %12, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @WPA_PUT_BE32(i32 %40, i32 %42)
  %44 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %45 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 4
  %48 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %49 = sub nsw i32 %48, 4
  %50 = call i64 @random_get_bytes(i32 %47, i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %31
  %53 = load i32, i32* @MSG_ERROR, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %316

55:                                               ; preds = %31
  %56 = load i32, i32* @MSG_MSGDUMP, align 4
  %57 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %58 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %57, i32 0, i32 10
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %61 = call i32 @wpa_hexdump(i32 %56, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %59, i32 %60)
  %62 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %63 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = mul nsw i32 %64, 2
  %66 = add nsw i32 150, %65
  %67 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %68 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %66, %69
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %13, align 8
  %72 = load i64, i64* %13, align 8
  %73 = call i32* @os_malloc(i64 %72)
  store i32* %73, i32** %6, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = icmp eq i32* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %55
  store i32* null, i32** %3, align 8
  br label %316

77:                                               ; preds = %55
  %78 = load i32*, i32** %6, align 8
  %79 = load i64, i64* %13, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32* %80, i32** %7, align 8
  %81 = load i32*, i32** %6, align 8
  store i32* %81, i32** %11, align 8
  %82 = load i32*, i32** %11, align 8
  %83 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  store i32* %85, i32** %8, align 8
  %86 = load i32*, i32** %8, align 8
  store i32* %86, i32** %10, align 8
  %87 = load i32, i32* @TLS_HANDSHAKE_TYPE_CLIENT_HELLO, align 4
  %88 = load i32*, i32** %8, align 8
  %89 = getelementptr inbounds i32, i32* %88, i32 1
  store i32* %89, i32** %8, align 8
  store i32 %87, i32* %88, align 4
  %90 = load i32*, i32** %8, align 8
  store i32* %90, i32** %9, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  store i32* %92, i32** %8, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i64, i64* %16, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i32 @WPA_PUT_BE16(i32* %93, i32 %95)
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  store i32* %98, i32** %8, align 8
  %99 = load i32*, i32** %8, align 8
  %100 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %101 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %100, i32 0, i32 10
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %104 = call i32 @os_memcpy(i32* %99, i32 %102, i32 %103)
  %105 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %106 = load i32*, i32** %8, align 8
  %107 = sext i32 %105 to i64
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32* %108, i32** %8, align 8
  %109 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %110 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %8, align 8
  %113 = getelementptr inbounds i32, i32* %112, i32 1
  store i32* %113, i32** %8, align 8
  store i32 %111, i32* %112, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %116 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %115, i32 0, i32 9
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %119 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @os_memcpy(i32* %114, i32 %117, i32 %120)
  %122 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %123 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32*, i32** %8, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %8, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %130 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = mul nsw i32 2, %131
  %133 = call i32 @WPA_PUT_BE16(i32* %128, i32 %132)
  %134 = load i32*, i32** %8, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 2
  store i32* %135, i32** %8, align 8
  store i64 0, i64* %14, align 8
  br label %136

136:                                              ; preds = %154, %77
  %137 = load i64, i64* %14, align 8
  %138 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %139 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = sext i32 %140 to i64
  %142 = icmp ult i64 %137, %141
  br i1 %142, label %143, label %157

143:                                              ; preds = %136
  %144 = load i32*, i32** %8, align 8
  %145 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %146 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %145, i32 0, i32 4
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %14, align 8
  %149 = getelementptr inbounds i32, i32* %147, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @WPA_PUT_BE16(i32* %144, i32 %150)
  %152 = load i32*, i32** %8, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  store i32* %153, i32** %8, align 8
  br label %154

154:                                              ; preds = %143
  %155 = load i64, i64* %14, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %14, align 8
  br label %136

157:                                              ; preds = %136
  %158 = load i32*, i32** %8, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %8, align 8
  store i32 1, i32* %158, align 4
  %160 = load i32, i32* @TLS_COMPRESSION_NULL, align 4
  %161 = load i32*, i32** %8, align 8
  %162 = getelementptr inbounds i32, i32* %161, i32 1
  store i32* %162, i32** %8, align 8
  store i32 %160, i32* %161, align 4
  %163 = load i32*, i32** %8, align 8
  store i32* %163, i32** %15, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  store i32* %165, i32** %8, align 8
  %166 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %167 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %185

170:                                              ; preds = %157
  %171 = load i32*, i32** %8, align 8
  %172 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %173 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %176 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %175, i32 0, i32 2
  %177 = load i32, i32* %176, align 8
  %178 = call i32 @os_memcpy(i32* %171, i32 %174, i32 %177)
  %179 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %180 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = load i32*, i32** %8, align 8
  %183 = sext i32 %181 to i64
  %184 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32* %184, i32** %8, align 8
  br label %185

185:                                              ; preds = %170, %157
  %186 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %187 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @TLS_CONN_REQUEST_OCSP, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %239

192:                                              ; preds = %185
  %193 = load i32, i32* @MSG_DEBUG, align 4
  %194 = call i32 (i32, i8*, ...) @wpa_printf(i32 %193, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0))
  %195 = load i32*, i32** %8, align 8
  %196 = load i32, i32* @TLS_EXT_STATUS_REQUEST, align 4
  %197 = call i32 @WPA_PUT_BE16(i32* %195, i32 %196)
  %198 = load i32*, i32** %8, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 2
  store i32* %199, i32** %8, align 8
  %200 = load i32*, i32** %8, align 8
  %201 = call i32 @WPA_PUT_BE16(i32* %200, i32 5)
  %202 = load i32*, i32** %8, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 2
  store i32* %203, i32** %8, align 8
  %204 = load i32*, i32** %8, align 8
  %205 = getelementptr inbounds i32, i32* %204, i32 1
  store i32* %205, i32** %8, align 8
  store i32 1, i32* %204, align 4
  %206 = load i32*, i32** %8, align 8
  %207 = call i32 @WPA_PUT_BE16(i32* %206, i32 0)
  %208 = load i32*, i32** %8, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 2
  store i32* %209, i32** %8, align 8
  %210 = load i32*, i32** %8, align 8
  %211 = call i32 @WPA_PUT_BE16(i32* %210, i32 0)
  %212 = load i32*, i32** %8, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 2
  store i32* %213, i32** %8, align 8
  %214 = load i32, i32* @MSG_DEBUG, align 4
  %215 = call i32 (i32, i8*, ...) @wpa_printf(i32 %214, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %216 = load i32*, i32** %8, align 8
  %217 = load i32, i32* @TLS_EXT_STATUS_REQUEST_V2, align 4
  %218 = call i32 @WPA_PUT_BE16(i32* %216, i32 %217)
  %219 = load i32*, i32** %8, align 8
  %220 = getelementptr inbounds i32, i32* %219, i64 2
  store i32* %220, i32** %8, align 8
  %221 = load i32*, i32** %8, align 8
  %222 = call i32 @WPA_PUT_BE16(i32* %221, i32 7)
  %223 = load i32*, i32** %8, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 2
  store i32* %224, i32** %8, align 8
  %225 = load i32*, i32** %8, align 8
  %226 = call i32 @WPA_PUT_BE16(i32* %225, i32 5)
  %227 = load i32*, i32** %8, align 8
  %228 = getelementptr inbounds i32, i32* %227, i64 2
  store i32* %228, i32** %8, align 8
  %229 = load i32*, i32** %8, align 8
  %230 = getelementptr inbounds i32, i32* %229, i32 1
  store i32* %230, i32** %8, align 8
  store i32 2, i32* %229, align 4
  %231 = load i32*, i32** %8, align 8
  %232 = call i32 @WPA_PUT_BE16(i32* %231, i32 0)
  %233 = load i32*, i32** %8, align 8
  %234 = getelementptr inbounds i32, i32* %233, i64 2
  store i32* %234, i32** %8, align 8
  %235 = load i32*, i32** %8, align 8
  %236 = call i32 @WPA_PUT_BE16(i32* %235, i32 0)
  %237 = load i32*, i32** %8, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 2
  store i32* %238, i32** %8, align 8
  br label %239

239:                                              ; preds = %192, %185
  %240 = load i32*, i32** %8, align 8
  %241 = load i32*, i32** %15, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 2
  %243 = icmp eq i32* %240, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %239
  %245 = load i32*, i32** %8, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 -2
  store i32* %246, i32** %8, align 8
  br label %258

247:                                              ; preds = %239
  %248 = load i32*, i32** %15, align 8
  %249 = load i32*, i32** %8, align 8
  %250 = load i32*, i32** %15, align 8
  %251 = ptrtoint i32* %249 to i64
  %252 = ptrtoint i32* %250 to i64
  %253 = sub i64 %251, %252
  %254 = sdiv exact i64 %253, 4
  %255 = sub nsw i64 %254, 2
  %256 = trunc i64 %255 to i32
  %257 = call i32 @WPA_PUT_BE16(i32* %248, i32 %256)
  br label %258

258:                                              ; preds = %247, %244
  %259 = load i32*, i32** %9, align 8
  %260 = load i32*, i32** %8, align 8
  %261 = load i32*, i32** %9, align 8
  %262 = ptrtoint i32* %260 to i64
  %263 = ptrtoint i32* %261 to i64
  %264 = sub i64 %262, %263
  %265 = sdiv exact i64 %264, 4
  %266 = sub nsw i64 %265, 3
  %267 = trunc i64 %266 to i32
  %268 = call i32 @WPA_PUT_BE24(i32* %259, i32 %267)
  %269 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %270 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %269, i32 0, i32 7
  %271 = load i32*, i32** %10, align 8
  %272 = load i32*, i32** %8, align 8
  %273 = load i32*, i32** %10, align 8
  %274 = ptrtoint i32* %272 to i64
  %275 = ptrtoint i32* %273 to i64
  %276 = sub i64 %274, %275
  %277 = sdiv exact i64 %276, 4
  %278 = trunc i64 %277 to i32
  %279 = call i32 @tls_verify_hash_add(i32* %270, i32* %271, i32 %278)
  %280 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %281 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %280, i32 0, i32 6
  %282 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %283 = load i32*, i32** %11, align 8
  %284 = load i32*, i32** %7, align 8
  %285 = load i32*, i32** %11, align 8
  %286 = ptrtoint i32* %284 to i64
  %287 = ptrtoint i32* %285 to i64
  %288 = sub i64 %286, %287
  %289 = sdiv exact i64 %288, 4
  %290 = trunc i64 %289 to i32
  %291 = load i32*, i32** %10, align 8
  %292 = load i32*, i32** %8, align 8
  %293 = load i32*, i32** %10, align 8
  %294 = ptrtoint i32* %292 to i64
  %295 = ptrtoint i32* %293 to i64
  %296 = sub i64 %294, %295
  %297 = sdiv exact i64 %296, 4
  %298 = trunc i64 %297 to i32
  %299 = load i64*, i64** %5, align 8
  %300 = call i64 @tlsv1_record_send(%struct.TYPE_2__* %281, i32 %282, i32* %283, i32 %290, i32* %291, i32 %298, i64* %299)
  %301 = icmp slt i64 %300, 0
  br i1 %301, label %302, label %311

302:                                              ; preds = %258
  %303 = load i32, i32* @MSG_DEBUG, align 4
  %304 = call i32 (i32, i8*, ...) @wpa_printf(i32 %303, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i64 0, i64 0))
  %305 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %306 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %307 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %308 = call i32 @tls_alert(%struct.tlsv1_client* %305, i32 %306, i32 %307)
  %309 = load i32*, i32** %6, align 8
  %310 = call i32 @os_free(i32* %309)
  store i32* null, i32** %3, align 8
  br label %316

311:                                              ; preds = %258
  %312 = load i32, i32* @SERVER_HELLO, align 4
  %313 = load %struct.tlsv1_client*, %struct.tlsv1_client** %4, align 8
  %314 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %313, i32 0, i32 5
  store i32 %312, i32* %314, align 8
  %315 = load i32*, i32** %6, align 8
  store i32* %315, i32** %3, align 8
  br label %316

316:                                              ; preds = %311, %302, %76, %52, %28
  %317 = load i32*, i32** %3, align 8
  ret i32* %317
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @tls_version_str(i64) #1

declare dso_local i32 @os_get_time(%struct.os_time*) #1

declare dso_local i32 @WPA_PUT_BE32(i32, i32) #1

declare dso_local i64 @random_get_bytes(i32, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i32) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i32*, i32) #1

declare dso_local i64 @tlsv1_record_send(%struct.TYPE_2__*, i32, i32*, i32, i32*, i32, i64*) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i32 @os_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
